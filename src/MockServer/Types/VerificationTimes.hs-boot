module MockServer.Types.VerificationTimes where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data VerificationTimes
instance Show VerificationTimes
instance Eq VerificationTimes
instance FromJSON VerificationTimes
instance ToJSON VerificationTimes
