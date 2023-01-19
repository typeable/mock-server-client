module MockServer.Types.BodyWithContentType where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data BodyWithContentTypeVariants
instance Show BodyWithContentTypeVariants
instance Eq BodyWithContentTypeVariants
instance FromJSON BodyWithContentTypeVariants
instance ToJSON BodyWithContentTypeVariants
type BodyWithContentType = BodyWithContentTypeVariants
