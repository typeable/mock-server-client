module MockServer.Types.XpathBodyMatcher where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data XpathBodyMatcher
instance Show XpathBodyMatcher
instance Eq XpathBodyMatcher
instance FromJSON XpathBodyMatcher
instance ToJSON XpathBodyMatcher
data XpathBodyMatcherType
instance Show XpathBodyMatcherType
instance Eq XpathBodyMatcherType
instance FromJSON XpathBodyMatcherType
instance ToJSON XpathBodyMatcherType
