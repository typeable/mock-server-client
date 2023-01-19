module MockServer.Types.Delay where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data Delay
instance Show Delay
instance Eq Delay
instance FromJSON Delay
instance ToJSON Delay
