module MyNet.Static.Subs exposing(..)
import MyNet.Static.Types exposing(..)
import MyNet.View.ForestPath as ForestPath
import MyNet.View.EmeraldLake as EmeraldLake
import MyNet.View.Volcano as Volcano

import MyNet.Static.Wrappers.ForestPath
import MyNet.Static.Wrappers.EmeraldLake
import MyNet.Static.Wrappers.Volcano


subs : NetState -> Sub Transition
subs model =
    case model of
        SForestPath m -> Sub.map MyNet.Static.Wrappers.ForestPath.unwrap <| ForestPath.subs m
        SEmeraldLake m -> Sub.map MyNet.Static.Wrappers.EmeraldLake.unwrap <| EmeraldLake.subs m
        SVolcano m -> Sub.map MyNet.Static.Wrappers.Volcano.unwrap <| Volcano.subs m

