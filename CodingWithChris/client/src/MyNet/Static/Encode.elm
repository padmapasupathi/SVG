module MyNet.Static.Encode exposing(..)
import MyNet.Static.Types exposing(..)
import MyNet.Static.ExtraTypes exposing(..)

import Utils.Utils exposing(..)
import Static.Types
import Dict exposing(..)
encodeTransition : Transition -> Maybe String
encodeTransition trans =
    case trans of

        External ext -> Just <| encodeOutgoingTransition ext
encodeOutgoingTransition : OutgoingTransition -> String
encodeOutgoingTransition outgoingtransition = 
    case outgoingtransition of
        TLeaveForestPath -> 
                tConcat ["TLeaveForestPath"]
        TLeaveEmeraldLake -> 
                tConcat ["TLeaveEmeraldLake"]
        TLeaveVolcano -> 
                tConcat ["TLeaveVolcano"]


--extra types encoders
encodeForest : Forest -> String
encodeForest forest = 
    case forest of
        Foll -> 
                tConcat ["Foll"]



