module MockServer.Types.StringOrJsonSchema where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data StringOrJsonSchemaOneOf2
instance Show StringOrJsonSchemaOneOf2
instance Eq StringOrJsonSchemaOneOf2
instance FromJSON StringOrJsonSchemaOneOf2
instance ToJSON StringOrJsonSchemaOneOf2
data StringOrJsonSchemaOneOf2ParameterStyle
instance Show StringOrJsonSchemaOneOf2ParameterStyle
instance Eq StringOrJsonSchemaOneOf2ParameterStyle
instance FromJSON StringOrJsonSchemaOneOf2ParameterStyle
instance ToJSON StringOrJsonSchemaOneOf2ParameterStyle
data StringOrJsonSchemaVariants
instance Show StringOrJsonSchemaVariants
instance Eq StringOrJsonSchemaVariants
instance FromJSON StringOrJsonSchemaVariants
instance ToJSON StringOrJsonSchemaVariants
type StringOrJsonSchema = StringOrJsonSchemaVariants
