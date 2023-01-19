module MockServer.Types.HttpResponse where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data HttpResponse
instance Show HttpResponse
instance Eq HttpResponse
instance FromJSON HttpResponse
instance ToJSON HttpResponse
