module MockServer.Types.Protocol where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data Protocol
instance Show Protocol
instance Eq Protocol
instance FromJSON Protocol
instance ToJSON Protocol
