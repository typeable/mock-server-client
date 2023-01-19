module MockServer.Types.StringBodyMatcher where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data StringBodyMatcher
instance Show StringBodyMatcher
instance Eq StringBodyMatcher
instance FromJSON StringBodyMatcher
instance ToJSON StringBodyMatcher
data StringBodyMatcherType
instance Show StringBodyMatcherType
instance Eq StringBodyMatcherType
instance FromJSON StringBodyMatcherType
instance ToJSON StringBodyMatcherType
