module MockServer.Types.JsonBodyMatcher where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data JsonBodyMatcher
instance Show JsonBodyMatcher
instance Eq JsonBodyMatcher
instance FromJSON JsonBodyMatcher
instance ToJSON JsonBodyMatcher
data JsonBodyMatcherMatchType
instance Show JsonBodyMatcherMatchType
instance Eq JsonBodyMatcherMatchType
instance FromJSON JsonBodyMatcherMatchType
instance ToJSON JsonBodyMatcherMatchType
data JsonBodyMatcherType
instance Show JsonBodyMatcherType
instance Eq JsonBodyMatcherType
instance FromJSON JsonBodyMatcherType
instance ToJSON JsonBodyMatcherType
