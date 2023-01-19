module MockServer.Types.Body where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data BodyVariants
instance Show BodyVariants
instance Eq BodyVariants
instance FromJSON BodyVariants
instance ToJSON BodyVariants
type Body = BodyVariants
