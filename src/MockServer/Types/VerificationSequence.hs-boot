module MockServer.Types.VerificationSequence where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data VerificationSequence
instance Show VerificationSequence
instance Eq VerificationSequence
instance FromJSON VerificationSequence
instance ToJSON VerificationSequence
