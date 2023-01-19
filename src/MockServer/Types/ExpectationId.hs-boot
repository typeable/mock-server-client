module MockServer.Types.ExpectationId where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data ExpectationId
instance Show ExpectationId
instance Eq ExpectationId
instance FromJSON ExpectationId
instance ToJSON ExpectationId
