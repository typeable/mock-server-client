module MockServer.Types.BinaryBodyMatcher where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data BinaryBodyMatcher
instance Show BinaryBodyMatcher
instance Eq BinaryBodyMatcher
instance FromJSON BinaryBodyMatcher
instance ToJSON BinaryBodyMatcher
data BinaryBodyMatcherType
instance Show BinaryBodyMatcherType
instance Eq BinaryBodyMatcherType
instance FromJSON BinaryBodyMatcherType
instance ToJSON BinaryBodyMatcherType
