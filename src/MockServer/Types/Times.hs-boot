module MockServer.Types.Times where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data Times
instance Show Times
instance Eq Times
instance FromJSON Times
instance ToJSON Times
