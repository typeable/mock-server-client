module MockServer.Types.RegexBodyMatcher where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data RegexBodyMatcher
instance Show RegexBodyMatcher
instance Eq RegexBodyMatcher
instance FromJSON RegexBodyMatcher
instance ToJSON RegexBodyMatcher
data RegexBodyMatcherType
instance Show RegexBodyMatcherType
instance Eq RegexBodyMatcherType
instance FromJSON RegexBodyMatcherType
instance ToJSON RegexBodyMatcherType
