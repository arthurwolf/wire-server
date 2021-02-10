{-# LANGUAGE ApplicativeDo #-}
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -Wno-partial-type-signatures #-}

-- This file is part of the Wire Server implementation.
--
-- Copyright (C) 2020 Wire Swiss GmbH <opensource@wire.com>
--
-- This program is free software: you can redistribute it and/or modify it under
-- the terms of the GNU Affero General Public License as published by the Free
-- Software Foundation, either version 3 of the License, or (at your option) any
-- later version.
--
-- This program is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
-- FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
-- details.
--
-- You should have received a copy of the GNU Affero General Public License along
-- with this program. If not, see <https://www.gnu.org/licenses/>.

module Federator.Federate where

import qualified Bilge as RPC
import Bilge.RPC (rpc')
import Bilge.Retry
import Control.Lens (view)
import Control.Monad.Except (MonadError (throwError))
import Control.Retry
import qualified Data.ByteString.Lazy as LBS
import Data.Domain (Domain, domainText)
import Data.Either.Validation
import qualified Data.List.NonEmpty as NonEmpty
import Data.String.Conversions (cs)
import qualified Data.Text as Text
import Federator.App (Federator, runAppT)
import Federator.PolysemyOrphans ()
import Federator.Types (Env, applog, brig, dnsResolver)
import Federator.UnliftExcept ()
import Imports
import Mu.GRpc.Client.Optics (GRpcReply (..), grpcClientConfigSimple)
import Mu.GRpc.Client.Record (GrpcClient)
import Mu.GRpc.Client.TyApps (GRpcMessageProtocol (MsgProtoBuf), gRpcCall, setupGrpcClient')
import Mu.GRpc.Server (msgProtoBuf, runGRpcAppTrans)
import Mu.Server (ServerError, ServerErrorIO, SingleServerT, singleService)
import qualified Mu.Server as Mu
import qualified Network.HTTP.Types as HTTP
import Network.HTTP2.Client (ClientError)
import Polysemy
import Polysemy.Error as Polysemy
import Polysemy.IO (embedToMonadIO)
import Polysemy.TinyLog (TinyLog)
import qualified Polysemy.TinyLog as Log
import qualified System.Logger.Message as Log
import Wire.API.Federation.GRPC.Types
import Wire.Network.DNS.Effect (DNSLookup)
import qualified Wire.Network.DNS.Effect as Lookup
import Wire.Network.DNS.SRV (SrvEntry (srvTarget), SrvResponse (..), SrvTarget (..))

-- * Effects

data LookupError
  = LookupErrorSrvNotAvailable ByteString
  | LookupErrorDNSError ByteString
  deriving (Show, Eq)

data DiscoverFederator m a where
  DiscoverFederator :: Domain -> DiscoverFederator m (Either LookupError SrvTarget)

makeSem ''DiscoverFederator

runFederatorDiscovery :: Members '[DNSLookup] r => Sem (DiscoverFederator ': r) a -> Sem r a
runFederatorDiscovery = interpret $ \(DiscoverFederator d) ->
  -- FUTUREWORK: This string conversation is probably wrong, we should encode this
  -- using IDNA encoding or expect domain to be bytestring everywhere
  let domainSrv = cs $ "_wire-server-federator._tcp." <> domainText d
   in lookupDomainByDNS domainSrv

-- Can most of this function live in DNS-Util?
lookupDomainByDNS :: Member DNSLookup r => ByteString -> Sem r (Either LookupError SrvTarget)
lookupDomainByDNS domainSrv = do
  res <- Lookup.lookupSRV domainSrv
  case res of
    SrvAvailable entries -> do
      -- FUTUREWORK: orderSrvResult and try the list in order
      pure $ Right $ srvTarget $ NonEmpty.head entries
    SrvNotAvailable -> pure $ Left $ LookupErrorSrvNotAvailable domainSrv
    SrvResponseError _ -> pure $ Left $ LookupErrorDNSError domainSrv

data RemoteError
  = RemoteErrorDiscoveryFailure LookupError Domain
  | RemoteErrorClientFailure ClientError SrvTarget
  deriving (Show, Eq)

-- | Maybe we should support making a call to many remotes, but maybe we should
-- wait for the requirements before implementing it.
data Remote m a where
  DiscoverAndCall :: ValidatedRemoteCall -> Remote m (Either RemoteError (GRpcReply Response))

makeSem ''Remote

interpretRemote :: forall m r a. (MonadIO m, Members [Embed IO, DiscoverFederator, TinyLog] r) => Sem (Remote ': r) a -> Sem r a
interpretRemote = interpret $ \case
  DiscoverAndCall ValidatedRemoteCall {..} -> do
    eitherTarget <- discoverFederator vDomain
    case eitherTarget of
      Left err -> do
        Log.debug $
          Log.msg ("Failed to find remote federator" :: ByteString)
            . Log.field "domain" (domainText vDomain)
            . Log.field "error" (show err)
        pure $ Left (RemoteErrorDiscoveryFailure err vDomain)
      Right target -> do
        -- FUTUREWORK: Make this use TLS, maybe make it configurable
        -- FUTUREWORK: Cache this client and use it for many requests
        eitherClient <- mkGrpcClient target
        case eitherClient of
          Right client ->
            Right <$> callRemoteFederator client vLocalCall
          Left err -> pure $ Left err

callRemoteFederator :: MonadIO m => GrpcClient -> LocalCall -> m (GRpcReply Response)
callRemoteFederator client localCall =
  liftIO $ gRpcCall @'MsgProtoBuf @RouteToInternal @"RouteToInternal" @"call" client localCall

mkGrpcClient :: Members '[Embed IO, TinyLog] r => SrvTarget -> Sem r (Either RemoteError GrpcClient)
mkGrpcClient target@(SrvTarget host port) = do
  let cfg = grpcClientConfigSimple (cs host) (fromInteger $ toInteger port) False
  eitherClient <- setupGrpcClient' cfg
  case eitherClient of
    Left err -> do
      Log.debug $
        Log.msg ("Failed to connect to remote federator" :: ByteString)
          . Log.field "host" host
          . Log.field "port" port
          . Log.field "error" (show err)
      pure $ Left (RemoteErrorClientFailure err target)
    Right client -> pure $ Right client

-- Is there is a point in creating an effect for each service?
--
-- FUTUREWORK: Once we authenticate the call, we should send authentication data
-- to brig so brig can do some authorization as required.
data Brig m a where
  -- | Returns status and body, 'HTTP.Response' is not nice to work with in tests
  BrigCall :: HTTP.StdMethod -> ByteString -> [QueryParam] -> ByteString -> Brig m (HTTP.Status, Maybe LByteString)

makeSem ''Brig

-- This can realistically only be tested in an integration test
-- FUTUREWORK: Do we want to use servant client here? May make everything typed and safe
interpretBrig ::
  Member (Embed Federator) r =>
  Sem (Brig ': r) a ->
  Sem r a
interpretBrig = interpret $ \case
  BrigCall m p q b -> embed @Federator $ do
    brigReq <- view brig <$> ask
    let theCall =
          rpc' "brig" brigReq $
            RPC.method m
              . RPC.path ("federation/" <> p) -- FUTUREWORK: Protect against path traversal
              . RPC.query (map (\(QueryParam k v) -> (k, Just v)) q)
              . RPC.body (RPC.RequestBodyBS b)
    res <-
      case m of
        -- FUTUREWORK: Maybe other HTTP methods can also be retried, this is the
        -- only usecase as of now and seems safe.
        HTTP.GET -> recovering x3 rpcHandlers $ const theCall
        _ -> theCall
    pure (RPC.responseStatus res, RPC.responseBody res)

x3 :: RetryPolicy
x3 = limitRetries 3 <> exponentialBackoff 100000

-- * Routing logic

-- FUTUREWORK: How do we make sure that only legit endpoints can be reached,
-- some discussion here:
-- https://wearezeta.atlassian.net/wiki/spaces/CORE/pages/224166764/Limiting+access+to+federation+endpoints
callRemote :: Member Remote r => RemoteCall -> Sem r Response
callRemote req = do
  case validateRemoteCall req of
    Success vReq -> do
      reply <- discoverAndCall vReq
      pure $ mkRemoteResponse reply
    Failure errs -> pure $ ResponseErr ("component -> local federator: invalid RemoteCall: " <> Text.pack (show errs))

mkRemoteResponse :: Either RemoteError (GRpcReply Response) -> Response
mkRemoteResponse reply =
  case reply of
    Right (GRpcOk res) -> res
    Right (GRpcTooMuchConcurrency _) -> ResponseErr "remote federator -> local federator: too much concurrency"
    Right (GRpcErrorCode grpcErr) -> ResponseErr ("remote federator -> local federator: " <> Text.pack (show grpcErr))
    Right (GRpcErrorString grpcErr) -> ResponseErr ("remote federator -> local federator: error string: " <> Text.pack grpcErr)
    Right (GRpcClientError clientErr) -> ResponseErr ("remote federator -> local federator: client error: " <> Text.pack (show clientErr))
    Left err -> ResponseErr ("remote federator -> local federator: " <> Text.pack (show err))

callLocal :: (Members '[Brig, Embed IO] r) => LocalCall -> Sem r Response
callLocal LocalCall {..} = do
  (resStatus, resBody) <- brigCall (unwrapMethod method) path query body
  -- FUTUREWORK: Decide what to do with 5xx statuses
  let statusW32 = fromIntegral $ HTTP.statusCode resStatus
      bodyBS = maybe mempty LBS.toStrict resBody
  pure $ ResponseHTTPResponse $ HTTPResponse statusW32 bodyBS

-- * Server wiring

routeToRemote :: (Members '[Remote, Polysemy.Error ServerError] r) => SingleServerT info RouteToRemote (Sem r) _
routeToRemote = singleService (Mu.method @"call" callRemote)

routeToInternal :: (Members '[Brig, Embed IO, Polysemy.Error ServerError] r) => SingleServerT info RouteToInternal (Sem r) _
routeToInternal = singleService (Mu.method @"call" callLocal)

serveRouteToRemote :: Env -> Int -> IO ()
serveRouteToRemote env port = do
  runGRpcAppTrans msgProtoBuf port transformer routeToRemote
  where
    transformer :: Sem '[Remote, DiscoverFederator, TinyLog, DNSLookup, Polysemy.Error ServerError, Embed IO, Embed Federator] a -> ServerErrorIO a
    transformer action =
      runAppT env
        . runM @Federator
        . embedToMonadIO @Federator
        . absorbServerError
        . Lookup.runDNSLookupWithResolver (view dnsResolver env)
        . Log.runTinyLog (view applog env)
        . runFederatorDiscovery
        . interpretRemote @IO
        $ action

serveRouteToInternal :: Env -> Int -> IO ()
serveRouteToInternal env port = do
  runGRpcAppTrans msgProtoBuf port transformer routeToInternal
  where
    transformer :: Sem '[Embed IO, Polysemy.Error ServerError, Brig, Embed Federator] a -> ServerErrorIO a
    transformer action =
      runAppT env
        . runM @Federator
        . interpretBrig
        . absorbServerError
        . embedToMonadIO @Federator
        $ action

absorbServerError :: forall r a. (Member (Embed Federator) r) => Sem (Polysemy.Error ServerError ': r) a -> Sem r a
absorbServerError action = do
  eitherResult <- runError action
  case eitherResult of
    Left err -> embed @Federator $ throwError err
    Right res -> pure res