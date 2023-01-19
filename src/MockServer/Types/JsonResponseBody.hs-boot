module MockServer.Types.JsonResponseBody where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data JsonResponseBody
instance Show JsonResponseBody
instance Eq JsonResponseBody
instance FromJSON JsonResponseBody
instance ToJSON JsonResponseBody
data JsonResponseBodyType
instance Show JsonResponseBodyType
instance Eq JsonResponseBodyType
instance FromJSON JsonResponseBodyType
instance ToJSON JsonResponseBodyType
