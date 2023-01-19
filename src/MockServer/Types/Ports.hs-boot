module MockServer.Types.Ports where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data Ports
instance Show Ports
instance Eq Ports
instance FromJSON Ports
instance ToJSON Ports
