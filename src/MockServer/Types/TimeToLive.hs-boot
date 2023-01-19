module MockServer.Types.TimeToLive where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified MockServer.Common
data TimeToLive
instance Show TimeToLive
instance Eq TimeToLive
instance FromJSON TimeToLive
instance ToJSON TimeToLive
data TimeToLiveTimeUnit
instance Show TimeToLiveTimeUnit
instance Eq TimeToLiveTimeUnit
instance FromJSON TimeToLiveTimeUnit
instance ToJSON TimeToLiveTimeUnit
