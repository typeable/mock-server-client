-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ParameterBodyMatcher
module MockServer.Types.ParameterBodyMatcher where

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
import {-# SOURCE #-} MockServer.Types.KeyToMultiValue

-- | Defines the object schema located at @components.schemas.ParameterBodyMatcher@ in the specification.
-- 
-- parameter body matcher
data ParameterBodyMatcher = ParameterBodyMatcher {
  -- | not
  parameterBodyMatcherNot :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | parameters
  , parameterBodyMatcherParameters :: (GHC.Maybe.Maybe KeyToMultiValue)
  -- | type
  , parameterBodyMatcherType :: (GHC.Maybe.Maybe ParameterBodyMatcherType)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ParameterBodyMatcher
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("not" Data.Aeson.Types.ToJSON..=)) (parameterBodyMatcherNot obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("parameters" Data.Aeson.Types.ToJSON..=)) (parameterBodyMatcherParameters obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (parameterBodyMatcherType obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("not" Data.Aeson.Types.ToJSON..=)) (parameterBodyMatcherNot obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("parameters" Data.Aeson.Types.ToJSON..=)) (parameterBodyMatcherParameters obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (parameterBodyMatcherType obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ParameterBodyMatcher
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ParameterBodyMatcher" (\obj -> ((GHC.Base.pure ParameterBodyMatcher GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "not")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "parameters")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type"))
-- | Create a new 'ParameterBodyMatcher' with all required fields.
mkParameterBodyMatcher :: ParameterBodyMatcher
mkParameterBodyMatcher = ParameterBodyMatcher{parameterBodyMatcherNot = GHC.Maybe.Nothing,
                                              parameterBodyMatcherParameters = GHC.Maybe.Nothing,
                                              parameterBodyMatcherType = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.ParameterBodyMatcher.properties.type@ in the specification.
-- 
-- 
data ParameterBodyMatcherType =
   ParameterBodyMatcherTypeOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ParameterBodyMatcherTypeTyped Data.Aeson.Types.Internal.Object -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ParameterBodyMatcherTypeEnumPARAMETERS -- ^ Represents the JSON value @"PARAMETERS"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ParameterBodyMatcherType
    where toJSON (ParameterBodyMatcherTypeOther val) = val
          toJSON (ParameterBodyMatcherTypeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (ParameterBodyMatcherTypeEnumPARAMETERS) = "PARAMETERS"
instance Data.Aeson.Types.FromJSON.FromJSON ParameterBodyMatcherType
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "PARAMETERS" -> ParameterBodyMatcherTypeEnumPARAMETERS
                                            | GHC.Base.otherwise -> ParameterBodyMatcherTypeOther val)
