module MockServer.Types.SocketAddress where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data SocketAddress
instance Show SocketAddress
instance Eq SocketAddress
instance FromJSON SocketAddress
instance ToJSON SocketAddress
data SocketAddressScheme
instance Show SocketAddressScheme
instance Eq SocketAddressScheme
instance FromJSON SocketAddressScheme
instance ToJSON SocketAddressScheme
