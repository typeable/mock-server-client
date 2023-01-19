module MockServer.Types.XmlBodyMatcher where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data XmlBodyMatcher
instance Show XmlBodyMatcher
instance Eq XmlBodyMatcher
instance FromJSON XmlBodyMatcher
instance ToJSON XmlBodyMatcher
data XmlBodyMatcherType
instance Show XmlBodyMatcherType
instance Eq XmlBodyMatcherType
instance FromJSON XmlBodyMatcherType
instance ToJSON XmlBodyMatcherType
