{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}

module Federator.Brig where

import Control.Monad.Except (MonadError (throwError))
import Data.Domain
import Data.Handle
import Data.Id hiding (client)
import Data.Proxy
import Federator.App (AppIO)
import Federator.GRPC.Proto (QualifiedHandle (..))
import Imports
import Mu.Server (ServerError (..), ServerErrorCode (..))
import Network.HTTP.Client (defaultManagerSettings, newManager)
import Servant.API
import qualified Servant.API as Servant
import Servant.Client
import qualified System.Logger.Class as Log
import Wire.API.User.Handle

-- FUTUREWORK: can we avoid having to copy this over from Brig.API.Public ?
-- FUTUREWORK: how to make use of servant-client with the odd 'ZAuthServant' type?
type InternalAuth = Header' '[Servant.Required, Servant.Strict] "Z-User" UserId

type GetHandleInfoQualified =
  Summary "Get information on a user handle"
    :> InternalAuth
    :> "users"
    :> "handles"
    :> Capture "domain" Domain
    :> Capture' '[Description "The user handle"] "handle" Handle
    :> Get '[Servant.JSON] UserHandleInfo

api :: Proxy GetHandleInfoQualified
api = Proxy

getUserInfoByHandle :: UserId -> Domain -> Handle -> ClientM UserHandleInfo
getUserInfoByHandle = client api

-- TODO: we don't want to spawn a new http manager per request...
-- TODO: where to find brig should come from configuration
-- FUTUREWORK: better error handling
-- FUTUREWORK: use a specific /i/something internal brig endpoint to avoid having to "fake" ZAuth user Ids
run :: QualifiedHandle -> AppIO UserHandleInfo
run (QualifiedHandle domain handle) = do
  Log.warn $ Log.msg $ "%%-> Brig/run. Handle:" <> show handle
  manager' <- liftIO $ newManager defaultManagerSettings
  fakeZAuth <- randomId
  let query = getUserInfoByHandle fakeZAuth (Domain domain) (Handle handle) -- FUTUREWORK: validation needs to happen on domain/handle
  res <- liftIO $ runClientM query (mkClientEnv manager' (BaseUrl Http "localhost" 8082 ""))
  -- TODO deal with 404s!
  -- [federator] W, request=N/A, %%-> Brig/run. err from brig: FailureResponse (Request {requestPath = (BaseUrl {baseUrlScheme = Http, baseUrlHost = "localhost", baseUrlPort = 8082, baseUrlPath = ""},"/users/handles/invalid.com/alice123"), requestQueryString = fromList [], requestBody = Nothing, requestAccept = fromList [application/json;charset=utf-8,application/json], requestHeaders = fromList [("Z-User","211d582f-a13a-4085-9668-d12a822a0d2e")], requestHttpVersion = HTTP/1.1, requestMethod = "GET"}) (Response {responseStatusCode = Status {statusCode = 404, statusMessage = "not-found"}, responseHeaders = fromList [("Transfer-Encoding","chunked"),("Date","Mon, 11 Jan 2021 23:51:28 GMT"),("Server","Warp/3.3.13")], responseHttpVersion = HTTP/1.1, responseBody = "handle not found"})
  case res of
    Left err -> do
      Log.warn $ Log.msg $ "%%-> Brig/run. err from brig: " <> show err
      throwError $ ServerError NotFound ("Error: " ++ show err)
    Right result -> pure result