module MockServer.Types.HttpError where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data HttpError
instance Show HttpError
instance Eq HttpError
instance FromJSON HttpError
instance ToJSON HttpError
