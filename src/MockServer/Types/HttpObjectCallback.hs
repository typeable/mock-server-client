-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema HttpObjectCallback
module MockServer.Types.HttpObjectCallback where

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
import {-# SOURCE #-} MockServer.Types.Delay

-- | Defines the object schema located at @components.schemas.HttpObjectCallback@ in the specification.
-- 
-- 
data HttpObjectCallback = HttpObjectCallback {
  -- | clientId
  httpObjectCallbackClientId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | delay: response delay
  , httpObjectCallbackDelay :: (GHC.Maybe.Maybe Delay)
  -- | responseCallback
  , httpObjectCallbackResponseCallback :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON HttpObjectCallback
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("clientId" Data.Aeson.Types.ToJSON..=)) (httpObjectCallbackClientId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("delay" Data.Aeson.Types.ToJSON..=)) (httpObjectCallbackDelay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("responseCallback" Data.Aeson.Types.ToJSON..=)) (httpObjectCallbackResponseCallback obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("clientId" Data.Aeson.Types.ToJSON..=)) (httpObjectCallbackClientId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("delay" Data.Aeson.Types.ToJSON..=)) (httpObjectCallbackDelay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("responseCallback" Data.Aeson.Types.ToJSON..=)) (httpObjectCallbackResponseCallback obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON HttpObjectCallback
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "HttpObjectCallback" (\obj -> ((GHC.Base.pure HttpObjectCallback GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "clientId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "delay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "responseCallback"))
-- | Create a new 'HttpObjectCallback' with all required fields.
mkHttpObjectCallback :: HttpObjectCallback
mkHttpObjectCallback = HttpObjectCallback{httpObjectCallbackClientId = GHC.Maybe.Nothing,
                                          httpObjectCallbackDelay = GHC.Maybe.Nothing,
                                          httpObjectCallbackResponseCallback = GHC.Maybe.Nothing}
