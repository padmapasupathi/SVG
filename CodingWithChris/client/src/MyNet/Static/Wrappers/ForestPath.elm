module MyNet.Static.Wrappers.ForestPath exposing(..)
import MyNet.Static.Types.ForestPath exposing(..)
import MyNet.Static.ExtraTypes exposing(..)
import MyNet.Static.Types exposing(..)

import Dict exposing (Dict)

unwrap : Msg -> Transition
unwrap msg =
    case msg of
        MyNet.Static.Types.ForestPath.LeaveForestPath  -> External TLeaveForestPath 

