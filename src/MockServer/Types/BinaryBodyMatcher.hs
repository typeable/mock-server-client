-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema BinaryBodyMatcher
module MockServer.Types.BinaryBodyMatcher where

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

-- | Defines the object schema located at @components.schemas.BinaryBodyMatcher@ in the specification.
-- 
-- binary body matcher
data BinaryBodyMatcher = BinaryBodyMatcher {
  -- | base64Bytes
  binaryBodyMatcherBase64Bytes :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | contentType
  , binaryBodyMatcherContentType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | not
  , binaryBodyMatcherNot :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | type
  , binaryBodyMatcherType :: (GHC.Maybe.Maybe BinaryBodyMatcherType)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON BinaryBodyMatcher
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("base64Bytes" Data.Aeson.Types.ToJSON..=)) (binaryBodyMatcherBase64Bytes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("contentType" Data.Aeson.Types.ToJSON..=)) (binaryBodyMatcherContentType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("not" Data.Aeson.Types.ToJSON..=)) (binaryBodyMatcherNot obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (binaryBodyMatcherType obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("base64Bytes" Data.Aeson.Types.ToJSON..=)) (binaryBodyMatcherBase64Bytes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("contentType" Data.Aeson.Types.ToJSON..=)) (binaryBodyMatcherContentType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("not" Data.Aeson.Types.ToJSON..=)) (binaryBodyMatcherNot obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (binaryBodyMatcherType obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON BinaryBodyMatcher
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "BinaryBodyMatcher" (\obj -> (((GHC.Base.pure BinaryBodyMatcher GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "base64Bytes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "contentType")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "not")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type"))
-- | Create a new 'BinaryBodyMatcher' with all required fields.
mkBinaryBodyMatcher :: BinaryBodyMatcher
mkBinaryBodyMatcher = BinaryBodyMatcher{binaryBodyMatcherBase64Bytes = GHC.Maybe.Nothing,
                                        binaryBodyMatcherContentType = GHC.Maybe.Nothing,
                                        binaryBodyMatcherNot = GHC.Maybe.Nothing,
                                        binaryBodyMatcherType = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.BinaryBodyMatcher.properties.type@ in the specification.
-- 
-- 
data BinaryBodyMatcherType =
   BinaryBodyMatcherTypeOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | BinaryBodyMatcherTypeTyped Data.Aeson.Types.Internal.Object -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | BinaryBodyMatcherTypeEnumBINARY -- ^ Represents the JSON value @"BINARY"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON BinaryBodyMatcherType
    where toJSON (BinaryBodyMatcherTypeOther val) = val
          toJSON (BinaryBodyMatcherTypeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (BinaryBodyMatcherTypeEnumBINARY) = "BINARY"
instance Data.Aeson.Types.FromJSON.FromJSON BinaryBodyMatcherType
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "BINARY" -> BinaryBodyMatcherTypeEnumBINARY
                                            | GHC.Base.otherwise -> BinaryBodyMatcherTypeOther val)
