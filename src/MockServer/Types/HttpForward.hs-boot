module MockServer.Types.HttpForward where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data HttpForward
instance Show HttpForward
instance Eq HttpForward
instance FromJSON HttpForward
instance ToJSON HttpForward
data HttpForwardScheme
instance Show HttpForwardScheme
instance Eq HttpForwardScheme
instance FromJSON HttpForwardScheme
instance ToJSON HttpForwardScheme
