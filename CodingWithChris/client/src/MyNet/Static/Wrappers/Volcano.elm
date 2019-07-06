module MyNet.Static.Wrappers.Volcano exposing(..)
import MyNet.Static.Types.Volcano exposing(..)
import MyNet.Static.ExtraTypes exposing(..)
import MyNet.Static.Types exposing(..)

import Dict exposing (Dict)

unwrap : Msg -> Transition
unwrap msg =
    case msg of
        MyNet.Static.Types.Volcano.LeaveVolcano  -> External TLeaveVolcano 

