module MockServer.Types.Expectations where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data ExpectationsVariants
instance Show ExpectationsVariants
instance Eq ExpectationsVariants
instance FromJSON ExpectationsVariants
instance ToJSON ExpectationsVariants
type Expectations = ExpectationsVariants
