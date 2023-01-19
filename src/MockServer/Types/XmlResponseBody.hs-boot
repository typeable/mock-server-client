module MockServer.Types.XmlResponseBody where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data XmlResponseBody
instance Show XmlResponseBody
instance Eq XmlResponseBody
instance FromJSON XmlResponseBody
instance ToJSON XmlResponseBody
data XmlResponseBodyType
instance Show XmlResponseBodyType
instance Eq XmlResponseBodyType
instance FromJSON XmlResponseBodyType
instance ToJSON XmlResponseBodyType
