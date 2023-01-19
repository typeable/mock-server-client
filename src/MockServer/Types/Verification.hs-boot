module MockServer.Types.Verification where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data Verification
instance Show Verification
instance Eq Verification
instance FromJSON Verification
instance ToJSON Verification
