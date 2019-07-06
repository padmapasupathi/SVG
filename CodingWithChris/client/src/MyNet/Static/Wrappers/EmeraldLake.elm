module MyNet.Static.Wrappers.EmeraldLake exposing(..)
import MyNet.Static.Types.EmeraldLake exposing(..)
import MyNet.Static.ExtraTypes exposing(..)
import MyNet.Static.Types exposing(..)

import Dict exposing (Dict)

unwrap : Msg -> Transition
unwrap msg =
    case msg of
        MyNet.Static.Types.EmeraldLake.LeaveEmeraldLake  -> External TLeaveEmeraldLake 

