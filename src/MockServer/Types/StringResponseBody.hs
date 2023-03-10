-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema StringResponseBody
module MockServer.Types.StringResponseBody where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
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

-- | Defines the object schema located at @components.schemas.StringResponseBody@ in the specification.
-- 
-- string response body
data StringResponseBody = StringResponseBody {
  -- | contentType
  stringResponseBodyContentType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | not
  , stringResponseBodyNot :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | string
  , stringResponseBodyString :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | type
  , stringResponseBodyType :: (GHC.Maybe.Maybe StringResponseBodyType)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON StringResponseBody
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("contentType" Data.Aeson.Types.ToJSON..=)) (stringResponseBodyContentType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("not" Data.Aeson.Types.ToJSON..=)) (stringResponseBodyNot obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("string" Data.Aeson.Types.ToJSON..=)) (stringResponseBodyString obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (stringResponseBodyType obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("contentType" Data.Aeson.Types.ToJSON..=)) (stringResponseBodyContentType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("not" Data.Aeson.Types.ToJSON..=)) (stringResponseBodyNot obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("string" Data.Aeson.Types.ToJSON..=)) (stringResponseBodyString obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (stringResponseBodyType obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON StringResponseBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "StringResponseBody" (\obj -> (((GHC.Base.pure StringResponseBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "contentType")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "not")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "string")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type"))
-- | Create a new 'StringResponseBody' with all required fields.
mkStringResponseBody :: StringResponseBody
mkStringResponseBody = StringResponseBody{stringResponseBodyContentType = GHC.Maybe.Nothing,
                                          stringResponseBodyNot = GHC.Maybe.Nothing,
                                          stringResponseBodyString = GHC.Maybe.Nothing,
                                          stringResponseBodyType = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.StringResponseBody.properties.type@ in the specification.
-- 
-- 
data StringResponseBodyType =
   StringResponseBodyTypeOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | StringResponseBodyTypeTyped Data.Aeson.Types.Internal.Object -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | StringResponseBodyTypeEnumSTRING -- ^ Represents the JSON value @"STRING"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON StringResponseBodyType
    where toJSON (StringResponseBodyTypeOther val) = val
          toJSON (StringResponseBodyTypeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (StringResponseBodyTypeEnumSTRING) = "STRING"
instance Data.Aeson.Types.FromJSON.FromJSON StringResponseBodyType
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "STRING" -> StringResponseBodyTypeEnumSTRING
                                            | GHC.Base.otherwise -> StringResponseBodyTypeOther val)
