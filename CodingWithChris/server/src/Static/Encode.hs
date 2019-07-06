module Static.Encode where
import MyNet.Static.Encode as MyNet

import Static.ServerTypes
import Data.Text as T
import Static.Types

encodeOutgoingMessage :: NetOutgoingMessage -> T.Text
encodeOutgoingMessage netTrans =
    case netTrans of
        MyNetOMsg msg -> MyNet.encodeClientMessage msg

