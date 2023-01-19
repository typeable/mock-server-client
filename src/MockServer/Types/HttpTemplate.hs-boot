module MockServer.Types.HttpTemplate where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data HttpTemplate
instance Show HttpTemplate
instance Eq HttpTemplate
instance FromJSON HttpTemplate
instance ToJSON HttpTemplate
data HttpTemplateTemplateType
instance Show HttpTemplateTemplateType
instance Eq HttpTemplateTemplateType
instance FromJSON HttpTemplateTemplateType
instance ToJSON HttpTemplateTemplateType
