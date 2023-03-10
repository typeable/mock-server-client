-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema JsonSchemaBodyMatcher
module MockServer.Types.JsonSchemaBodyMatcher where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import Data.OpenApi.Internal (Schema)
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified MockServer.Common
import MockServer.TypeAlias
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.JsonSchemaBodyMatcher@ in the specification.
--
-- json schema body matcher
data JsonSchemaBodyMatcher = JsonSchemaBodyMatcher {
  -- | jsonSchema
  jsonSchemaBodyMatcherJsonSchema :: (GHC.Maybe.Maybe Schema)
  -- | not
  , jsonSchemaBodyMatcherNot :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | type
  , jsonSchemaBodyMatcherType :: (GHC.Maybe.Maybe JsonSchemaBodyMatcherType)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON JsonSchemaBodyMatcher
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("jsonSchema" Data.Aeson.Types.ToJSON..=)) (jsonSchemaBodyMatcherJsonSchema obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("not" Data.Aeson.Types.ToJSON..=)) (jsonSchemaBodyMatcherNot obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (jsonSchemaBodyMatcherType obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("jsonSchema" Data.Aeson.Types.ToJSON..=)) (jsonSchemaBodyMatcherJsonSchema obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("not" Data.Aeson.Types.ToJSON..=)) (jsonSchemaBodyMatcherNot obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (jsonSchemaBodyMatcherType obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON JsonSchemaBodyMatcher
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "JsonSchemaBodyMatcher" (\obj -> ((GHC.Base.pure JsonSchemaBodyMatcher GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "jsonSchema")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "not")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type"))
-- | Create a new 'JsonSchemaBodyMatcher' with all required fields.
mkJsonSchemaBodyMatcher :: JsonSchemaBodyMatcher
mkJsonSchemaBodyMatcher = JsonSchemaBodyMatcher{jsonSchemaBodyMatcherJsonSchema = GHC.Maybe.Nothing,
                                                jsonSchemaBodyMatcherNot = GHC.Maybe.Nothing,
                                                jsonSchemaBodyMatcherType = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.JsonSchemaBodyMatcher.properties.type@ in the specification.
-- 
-- 
data JsonSchemaBodyMatcherType =
   JsonSchemaBodyMatcherTypeOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | JsonSchemaBodyMatcherTypeTyped Data.Aeson.Types.Internal.Object -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | JsonSchemaBodyMatcherTypeEnumJSON_SCHEMA -- ^ Represents the JSON value @"JSON_SCHEMA"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON JsonSchemaBodyMatcherType
    where toJSON (JsonSchemaBodyMatcherTypeOther val) = val
          toJSON (JsonSchemaBodyMatcherTypeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (JsonSchemaBodyMatcherTypeEnumJSON_SCHEMA) = "JSON_SCHEMA"
instance Data.Aeson.Types.FromJSON.FromJSON JsonSchemaBodyMatcherType
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "JSON_SCHEMA" -> JsonSchemaBodyMatcherTypeEnumJSON_SCHEMA
                                            | GHC.Base.otherwise -> JsonSchemaBodyMatcherTypeOther val)
