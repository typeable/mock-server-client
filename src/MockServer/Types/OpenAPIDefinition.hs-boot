module MockServer.Types.OpenAPIDefinition where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data OpenAPIDefinition
instance Show OpenAPIDefinition
instance Eq OpenAPIDefinition
instance FromJSON OpenAPIDefinition
instance ToJSON OpenAPIDefinition
