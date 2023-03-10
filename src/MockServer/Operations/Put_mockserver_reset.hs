-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation put_mockserver_reset
module MockServer.Operations.Put_mockserver_reset where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified MockServer.Common
import MockServer.Types

-- | > PUT /mockserver/reset
-- 
-- clears all expectations and recorded requests
put_mockserver_reset :: forall m . MockServer.Common.MonadHTTP m => MockServer.Common.ClientT m (Network.HTTP.Client.Types.Response Put_mockserver_resetResponse) -- ^ Monadic computation which returns the result of the operation
put_mockserver_reset = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Put_mockserver_resetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Put_mockserver_resetResponse200
                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (MockServer.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack "/mockserver/reset") GHC.Base.mempty)
-- | Represents a response of the operation 'put_mockserver_reset'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Put_mockserver_resetResponseError' is used.
data Put_mockserver_resetResponse =
   Put_mockserver_resetResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Put_mockserver_resetResponse200 -- ^ expectations and recorded requests cleared
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > PUT /mockserver/reset
-- 
-- The same as 'put_mockserver_reset' but accepts an explicit configuration.
put_mockserver_resetWithConfiguration :: forall m . MockServer.Common.MonadHTTP m => MockServer.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response Put_mockserver_resetResponse) -- ^ Monadic computation which returns the result of the operation
put_mockserver_resetWithConfiguration config = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Put_mockserver_resetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Put_mockserver_resetResponse200
                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (MockServer.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack "/mockserver/reset") GHC.Base.mempty)
-- | > PUT /mockserver/reset
-- 
-- The same as 'put_mockserver_reset' but returns the raw 'Data.ByteString.Char8.ByteString'.
put_mockserver_resetRaw :: forall m . MockServer.Common.MonadHTTP m => MockServer.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
put_mockserver_resetRaw = GHC.Base.id (MockServer.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack "/mockserver/reset") GHC.Base.mempty)
-- | > PUT /mockserver/reset
-- 
-- The same as 'put_mockserver_reset' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
put_mockserver_resetWithConfigurationRaw :: forall m . MockServer.Common.MonadHTTP m => MockServer.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
put_mockserver_resetWithConfigurationRaw config = GHC.Base.id (MockServer.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack "/mockserver/reset") GHC.Base.mempty)
