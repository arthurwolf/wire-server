{-# LANGUAGE RecordWildCards #-}

-- | SCIM user representation.
--
-- = Our interpretation of the spec
--
-- The spec can be read at <https://tools.ietf.org/html/rfc7643#section-4.1>.
-- While implementing the spec we had to resolve some ambiguities and place some
-- additional constraints on the possible SCIM server behavior we can support.
--
-- == Resource ID / user ID
--
-- The 'User' object doesn't contain a user ID (as in "opaque server-assigned
-- immutable ID") by design. IDs and metadata are added to types in a uniform
-- fashion by using @WithId@ and @WithMeta@.
--
-- == Optional fields
--
-- The spec doesn't say which fields should be optional and which shouldn't, and
-- in theory every SCIM server can decide for itself which fields it will
-- consider optional (as long as it makes it clear in the resource schema).
-- Currently we don't provide any control over this; all fields are optional
-- except for @userName@.
--
-- TODO: why @userName@?
--
-- == Multi-valued fields
--
-- When a multi-valued field (e.g. @emails@) doesn't contain any values, it's
-- unclear whether we should serialize it as @[]@ or omit it entirely. We have
-- opted for the latter to conform to an example in the spec:
-- <https://tools.ietf.org/html/rfc7644#section-3.5.1>.
--
-- == Field names
--
-- When parsing JSON objects, we ignore capitalization differences in field
-- names -- e.g. both @USERNAME@ and @userName@ are accepted. This behavior is
-- not prescribed by the spec, but it allows us to work with buggy SCIM
-- implementations.
module Web.Scim.Schema.User where

import Data.Text (Text, toLower)
import Data.Aeson
import qualified Data.HashMap.Strict as HM
import Lens.Micro

import Web.Scim.Schema.Common
import Web.Scim.Schema.Schema (Schema(..))
import Web.Scim.Schema.User.Address (Address)
import Web.Scim.Schema.User.Certificate (Certificate)
import Web.Scim.Schema.User.Email (Email)
import Web.Scim.Schema.User.IM (IM)
import Web.Scim.Schema.User.Name (Name)
import Web.Scim.Schema.User.Phone (Phone)
import Web.Scim.Schema.User.Photo (Photo)

import GHC.Generics (Generic)


data User extra = User
  {
    schemas :: [Schema]
  -- Mandatory fields
  , userName :: Text
  -- Optional fields
  , externalId :: Maybe Text
  , name :: Maybe Name
  , displayName :: Maybe Text
  , nickName :: Maybe Text
  , profileUrl :: Maybe URI
  , title :: Maybe Text
  , userType :: Maybe Text
  , preferredLanguage :: Maybe Text
  , locale :: Maybe Text
  , active :: Maybe Bool
  , password :: Maybe Text
  -- Multi-valued fields
  , emails :: [Email]
  , phoneNumbers :: [Phone]
  , ims :: [IM]
  , photos :: [Photo]
  , addresses :: [Address]
  , entitlements :: [Text]
  , roles :: [Text]
  , x509Certificates :: [Certificate]
  -- Extra data (merged with the main user object). Note that as per SCIM spec, the 'FromJSON'
  -- parser has to accept lowercase fields.
  --
  -- FUTUREWORK: make it easy for hscim users to implement a proper parser (with correct
  -- rendering of optional and multivalued fields, lowercase objects, etc).
  , extra :: extra
  } deriving (Show, Eq, Generic)

empty
  :: [Schema]        -- ^ Schemas
  -> extra           -- ^ Extra data
  -> User extra
empty schemas extra = User
  { schemas = schemas
  , userName = ""
  , externalId = Nothing
  , name = Nothing
  , displayName = Nothing
  , nickName = Nothing
  , profileUrl = Nothing
  , title = Nothing
  , userType = Nothing
  , preferredLanguage = Nothing
  , locale = Nothing
  , active = Nothing
  , password = Nothing
  , emails = []
  , phoneNumbers = []
  , ims = []
  , photos = []
  , addresses = []
  , entitlements = []
  , roles = []
  , x509Certificates = []
  , extra = extra
  }

instance FromJSON extra => FromJSON (User extra) where
  parseJSON = withObject "User" $ \obj -> do
    -- Lowercase all fields
    let o = HM.fromList . map (over _1 toLower) . HM.toList $ obj
    schemas <- o .:? "schemas" <&> \case
        Nothing -> [User20]
        Just xs -> if User20 `elem` xs then xs else User20 : xs
    userName <- o .: "username"
    externalId <- o .:? "externalid"
    name <- o .:? "name"
    displayName <- o .:? "displayname"
    nickName <- o .:? "nickname"
    profileUrl <- o .:? "profileurl"
    title <- o .:? "title"
    userType <- o .:? "usertype"
    preferredLanguage <- o .:? "preferredlanguage"
    locale <- o .:? "locale"
    active <- o .:? "active"
    password <- o .:? "password"
    emails <- o .:? "emails" .!= []
    phoneNumbers <- o .:? "phonenumbers" .!= []
    ims <- o .:? "ims" .!= []
    photos <- o .:? "photos" .!= []
    addresses <- o .:? "addresses" .!= []
    entitlements <- o .:? "entitlements" .!= []
    roles <- o .:? "roles" .!= []
    x509Certificates <- o .:? "x509certificates" .!= []
    extra <- parseJSON (Object o)
    pure User{..}

instance ToJSON extra => ToJSON (User extra) where
  toJSON User{..} =
    let mainObject = HM.fromList $ concat
          [ [ "schemas" .= schemas ]
          , [ "userName" .= userName ]
          , optionalField "externalId" externalId
          , optionalField "name" name
          , optionalField "displayName" displayName
          , optionalField "nickName" nickName
          , optionalField "profileUrl" profileUrl
          , optionalField "title" title
          , optionalField "userType" userType
          , optionalField "preferredLanguage" preferredLanguage
          , optionalField "locale" locale
          , optionalField "active" active
          , optionalField "password" password
          , multiValuedField "emails" emails
          , multiValuedField "phoneNumbers" phoneNumbers
          , multiValuedField "ims" ims
          , multiValuedField "photos" photos
          , multiValuedField "addresses" addresses
          , multiValuedField "entitlements" entitlements
          , multiValuedField "roles" roles
          , multiValuedField "x509Certificates" x509Certificates
          ]
        extraObject = case toJSON extra of
          Null -> mempty
          Object x -> x
          other -> HM.fromList ["extra" .= other]
    in Object (HM.union mainObject extraObject)

    where
      -- Omit a field if it's Nothing
      optionalField fname = \case
        Nothing -> []
        Just x  -> [fname .= x]
      -- Omit a field if it's []
      multiValuedField fname = \case
        [] -> []
        xs -> [fname .= xs]

type UserId = Text

-- | A type used to indicate that the SCIM record doesn't have any extra data. Encoded as an
-- empty map.
data NoUserExtra = NoUserExtra
  deriving (Eq, Show)

instance FromJSON NoUserExtra where
  parseJSON = withObject "NoUserExtra" $ \_ -> pure NoUserExtra

instance ToJSON NoUserExtra where
  toJSON _ = object []
