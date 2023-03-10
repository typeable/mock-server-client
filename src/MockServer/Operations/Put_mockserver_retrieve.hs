-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation put_mockserver_retrieve
module MockServer.Operations.Put_mockserver_retrieve where

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

-- | > PUT /mockserver/retrieve
-- 
-- retrieve recorded requests, active expectations, recorded expectations or log messages
put_mockserver_retrieve :: forall m . MockServer.Common.MonadHTTP m => Put_mockserver_retrieveParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> GHC.Maybe.Maybe RequestDefinition -- ^ The request body to send
  -> MockServer.Common.ClientT m (Network.HTTP.Client.Types.Response Put_mockserver_retrieveResponse) -- ^ Monadic computation which returns the result of the operation
put_mockserver_retrieve parameters
                        body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Put_mockserver_retrieveResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Put_mockserver_retrieveResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                        Put_mockserver_retrieveResponseBody200Variants)
                                                                                                                                                                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Put_mockserver_retrieveResponse400
                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (MockServer.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack "/mockserver/retrieve") [MockServer.Common.QueryParameter (Data.Text.pack "format") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> put_mockserver_retrieveParametersQueryFormat parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                             MockServer.Common.QueryParameter (Data.Text.pack "type") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> put_mockserver_retrieveParametersQueryType parameters) (Data.Text.pack "form") GHC.Types.False] body MockServer.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/mockserver\/retrieve.PUT.parameters@ in the specification.
-- 
-- 
data Put_mockserver_retrieveParameters = Put_mockserver_retrieveParameters {
  -- | queryFormat: Represents the parameter named \'format\'
  -- 
  -- changes response format, default if not specified is \"json\", supported values are \"java\", \"json\", \"log_entries\"
  put_mockserver_retrieveParametersQueryFormat :: (GHC.Maybe.Maybe Put_mockserver_retrieveParametersQueryFormat)
  -- | queryType: Represents the parameter named \'type\'
  -- 
  -- specifies the type of object that is retrieve, default if not specified is \"requests\", supported values are \"logs\", \"requests\", \"recorded_expectations\", \"active_expectations\"
  , put_mockserver_retrieveParametersQueryType :: (GHC.Maybe.Maybe Put_mockserver_retrieveParametersQueryType)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Put_mockserver_retrieveParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryFormat" Data.Aeson.Types.ToJSON..=)) (put_mockserver_retrieveParametersQueryFormat obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryType" Data.Aeson.Types.ToJSON..=)) (put_mockserver_retrieveParametersQueryType obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryFormat" Data.Aeson.Types.ToJSON..=)) (put_mockserver_retrieveParametersQueryFormat obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryType" Data.Aeson.Types.ToJSON..=)) (put_mockserver_retrieveParametersQueryType obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Put_mockserver_retrieveParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Put_mockserver_retrieveParameters" (\obj -> (GHC.Base.pure Put_mockserver_retrieveParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryFormat")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryType"))
-- | Create a new 'Put_mockserver_retrieveParameters' with all required fields.
mkPut_mockserver_retrieveParameters :: Put_mockserver_retrieveParameters
mkPut_mockserver_retrieveParameters = Put_mockserver_retrieveParameters{put_mockserver_retrieveParametersQueryFormat = GHC.Maybe.Nothing,
                                                                        put_mockserver_retrieveParametersQueryType = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @paths.\/mockserver\/retrieve.PUT.parameters.properties.queryFormat@ in the specification.
-- 
-- Represents the parameter named \'format\'
-- 
-- changes response format, default if not specified is \"json\", supported values are \"java\", \"json\", \"log_entries\"
data Put_mockserver_retrieveParametersQueryFormat =
   Put_mockserver_retrieveParametersQueryFormatOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | Put_mockserver_retrieveParametersQueryFormatTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | Put_mockserver_retrieveParametersQueryFormatEnumJava -- ^ Represents the JSON value @"java"@
  | Put_mockserver_retrieveParametersQueryFormatEnumJson -- ^ Represents the JSON value @"json"@
  | Put_mockserver_retrieveParametersQueryFormatEnumLog_entries -- ^ Represents the JSON value @"log_entries"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Put_mockserver_retrieveParametersQueryFormat
    where toJSON (Put_mockserver_retrieveParametersQueryFormatOther val) = val
          toJSON (Put_mockserver_retrieveParametersQueryFormatTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (Put_mockserver_retrieveParametersQueryFormatEnumJava) = "java"
          toJSON (Put_mockserver_retrieveParametersQueryFormatEnumJson) = "json"
          toJSON (Put_mockserver_retrieveParametersQueryFormatEnumLog_entries) = "log_entries"
instance Data.Aeson.Types.FromJSON.FromJSON Put_mockserver_retrieveParametersQueryFormat
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "java" -> Put_mockserver_retrieveParametersQueryFormatEnumJava
                                            | val GHC.Classes.== "json" -> Put_mockserver_retrieveParametersQueryFormatEnumJson
                                            | val GHC.Classes.== "log_entries" -> Put_mockserver_retrieveParametersQueryFormatEnumLog_entries
                                            | GHC.Base.otherwise -> Put_mockserver_retrieveParametersQueryFormatOther val)
-- | Defines the enum schema located at @paths.\/mockserver\/retrieve.PUT.parameters.properties.queryType@ in the specification.
-- 
-- Represents the parameter named \'type\'
-- 
-- specifies the type of object that is retrieve, default if not specified is \"requests\", supported values are \"logs\", \"requests\", \"recorded_expectations\", \"active_expectations\"
data Put_mockserver_retrieveParametersQueryType =
   Put_mockserver_retrieveParametersQueryTypeOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | Put_mockserver_retrieveParametersQueryTypeTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | Put_mockserver_retrieveParametersQueryTypeEnumLogs -- ^ Represents the JSON value @"logs"@
  | Put_mockserver_retrieveParametersQueryTypeEnumRequests -- ^ Represents the JSON value @"requests"@
  | Put_mockserver_retrieveParametersQueryTypeEnumRequest_responses -- ^ Represents the JSON value @"request_responses"@
  | Put_mockserver_retrieveParametersQueryTypeEnumRecorded_expectations -- ^ Represents the JSON value @"recorded_expectations"@
  | Put_mockserver_retrieveParametersQueryTypeEnumActive_expectations -- ^ Represents the JSON value @"active_expectations"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Put_mockserver_retrieveParametersQueryType
    where toJSON (Put_mockserver_retrieveParametersQueryTypeOther val) = val
          toJSON (Put_mockserver_retrieveParametersQueryTypeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (Put_mockserver_retrieveParametersQueryTypeEnumLogs) = "logs"
          toJSON (Put_mockserver_retrieveParametersQueryTypeEnumRequests) = "requests"
          toJSON (Put_mockserver_retrieveParametersQueryTypeEnumRequest_responses) = "request_responses"
          toJSON (Put_mockserver_retrieveParametersQueryTypeEnumRecorded_expectations) = "recorded_expectations"
          toJSON (Put_mockserver_retrieveParametersQueryTypeEnumActive_expectations) = "active_expectations"
instance Data.Aeson.Types.FromJSON.FromJSON Put_mockserver_retrieveParametersQueryType
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "logs" -> Put_mockserver_retrieveParametersQueryTypeEnumLogs
                                            | val GHC.Classes.== "requests" -> Put_mockserver_retrieveParametersQueryTypeEnumRequests
                                            | val GHC.Classes.== "request_responses" -> Put_mockserver_retrieveParametersQueryTypeEnumRequest_responses
                                            | val GHC.Classes.== "recorded_expectations" -> Put_mockserver_retrieveParametersQueryTypeEnumRecorded_expectations
                                            | val GHC.Classes.== "active_expectations" -> Put_mockserver_retrieveParametersQueryTypeEnumActive_expectations
                                            | GHC.Base.otherwise -> Put_mockserver_retrieveParametersQueryTypeOther val)
-- | Represents a response of the operation 'put_mockserver_retrieve'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Put_mockserver_retrieveResponseError' is used.
data Put_mockserver_retrieveResponse =
   Put_mockserver_retrieveResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Put_mockserver_retrieveResponse200 Put_mockserver_retrieveResponseBody200Variants -- ^ recorded requests or active expectations returned
  | Put_mockserver_retrieveResponse400 -- ^ incorrect request format
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the oneOf schema located at @paths.\/mockserver\/retrieve.PUT.responses.200.content.application\/json.schema.oneOf@ in the specification.
-- 
-- 
data Put_mockserver_retrieveResponseBody200Variants =
   Put_mockserver_retrieveResponseBody200ListTExpectation ([Expectation])
  | Put_mockserver_retrieveResponseBody200ListTHttpResponse ([HttpResponse])
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Put_mockserver_retrieveResponseBody200Variants
    where toJSON (Put_mockserver_retrieveResponseBody200ListTExpectation a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (Put_mockserver_retrieveResponseBody200ListTHttpResponse a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON Put_mockserver_retrieveResponseBody200Variants
    where parseJSON val = case (Put_mockserver_retrieveResponseBody200ListTExpectation Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((Put_mockserver_retrieveResponseBody200ListTHttpResponse Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | > PUT /mockserver/retrieve
-- 
-- The same as 'put_mockserver_retrieve' but accepts an explicit configuration.
put_mockserver_retrieveWithConfiguration :: forall m . MockServer.Common.MonadHTTP m => MockServer.Common.Configuration -- ^ The configuration to use in the request
  -> Put_mockserver_retrieveParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> GHC.Maybe.Maybe RequestDefinition -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Put_mockserver_retrieveResponse) -- ^ Monadic computation which returns the result of the operation
put_mockserver_retrieveWithConfiguration config
                                         parameters
                                         body = GHC.Base.fmap (\response_3 -> GHC.Base.fmap (Data.Either.either Put_mockserver_retrieveResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Put_mockserver_retrieveResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                         Put_mockserver_retrieveResponseBody200Variants)
                                                                                                                                                                                                  | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Put_mockserver_retrieveResponse400
                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_3) response_3) (MockServer.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack "/mockserver/retrieve") [MockServer.Common.QueryParameter (Data.Text.pack "format") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> put_mockserver_retrieveParametersQueryFormat parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                    MockServer.Common.QueryParameter (Data.Text.pack "type") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> put_mockserver_retrieveParametersQueryType parameters) (Data.Text.pack "form") GHC.Types.False] body MockServer.Common.RequestBodyEncodingJSON)
-- | > PUT /mockserver/retrieve
-- 
-- The same as 'put_mockserver_retrieve' but returns the raw 'Data.ByteString.Char8.ByteString'.
put_mockserver_retrieveRaw :: forall m . MockServer.Common.MonadHTTP m => Put_mockserver_retrieveParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> GHC.Maybe.Maybe RequestDefinition -- ^ The request body to send
  -> MockServer.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
put_mockserver_retrieveRaw parameters
                           body = GHC.Base.id (MockServer.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack "/mockserver/retrieve") [MockServer.Common.QueryParameter (Data.Text.pack "format") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> put_mockserver_retrieveParametersQueryFormat parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                        MockServer.Common.QueryParameter (Data.Text.pack "type") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> put_mockserver_retrieveParametersQueryType parameters) (Data.Text.pack "form") GHC.Types.False] body MockServer.Common.RequestBodyEncodingJSON)
-- | > PUT /mockserver/retrieve
-- 
-- The same as 'put_mockserver_retrieve' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
put_mockserver_retrieveWithConfigurationRaw :: forall m . MockServer.Common.MonadHTTP m => MockServer.Common.Configuration -- ^ The configuration to use in the request
  -> Put_mockserver_retrieveParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> GHC.Maybe.Maybe RequestDefinition -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
put_mockserver_retrieveWithConfigurationRaw config
                                            parameters
                                            body = GHC.Base.id (MockServer.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack "/mockserver/retrieve") [MockServer.Common.QueryParameter (Data.Text.pack "format") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> put_mockserver_retrieveParametersQueryFormat parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                               MockServer.Common.QueryParameter (Data.Text.pack "type") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> put_mockserver_retrieveParametersQueryType parameters) (Data.Text.pack "form") GHC.Types.False] body MockServer.Common.RequestBodyEncodingJSON)
