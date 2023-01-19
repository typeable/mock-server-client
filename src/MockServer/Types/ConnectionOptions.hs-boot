module MockServer.Types.ConnectionOptions where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data ConnectionOptions
instance Show ConnectionOptions
instance Eq ConnectionOptions
instance FromJSON ConnectionOptions
instance ToJSON ConnectionOptions
