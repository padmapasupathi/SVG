module Static.Encode exposing(..)
import MyNet.Static.Encode as MyNet

import Static.Types exposing(NetTransition(..))

encodeTransition : NetTransition -> Maybe String
encodeTransition netTrans =
    case netTrans of
        MyNetTrans msg -> MyNet.encodeTransition msg

