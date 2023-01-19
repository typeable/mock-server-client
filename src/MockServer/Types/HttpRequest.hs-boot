module MockServer.Types.HttpRequest where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data HttpRequest
instance Show HttpRequest
instance Eq HttpRequest
instance FromJSON HttpRequest
instance ToJSON HttpRequest
