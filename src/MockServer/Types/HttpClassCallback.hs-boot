module MockServer.Types.HttpClassCallback where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data HttpClassCallback
instance Show HttpClassCallback
instance Eq HttpClassCallback
instance FromJSON HttpClassCallback
instance ToJSON HttpClassCallback
