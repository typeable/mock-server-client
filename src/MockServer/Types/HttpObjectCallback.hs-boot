module MockServer.Types.HttpObjectCallback where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data HttpObjectCallback
instance Show HttpObjectCallback
instance Eq HttpObjectCallback
instance FromJSON HttpObjectCallback
instance ToJSON HttpObjectCallback
