module MockServer.Types.KeyToValue where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data KeyToValueOneOf1
instance Show KeyToValueOneOf1
instance Eq KeyToValueOneOf1
instance FromJSON KeyToValueOneOf1
instance ToJSON KeyToValueOneOf1
data KeyToValueVariants
instance Show KeyToValueVariants
instance Eq KeyToValueVariants
instance FromJSON KeyToValueVariants
instance ToJSON KeyToValueVariants
type KeyToValue = KeyToValueVariants
