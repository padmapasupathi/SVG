module MyNet.Static.View exposing(..)
import Html exposing(Html)
import Static.Types exposing (NetModel)
import MyNet.Static.Types exposing(..)
import MyNet.View.ForestPath
import MyNet.View.EmeraldLake
import MyNet.View.Volcano

import MyNet.Static.Wrappers.ForestPath
import MyNet.Static.Wrappers.EmeraldLake
import MyNet.Static.Wrappers.Volcano


view : NetState -> Html Transition
view ns =
    case ns of
        SForestPath m -> Html.map MyNet.Static.Wrappers.ForestPath.unwrap <| MyNet.View.ForestPath.view m
        SEmeraldLake m -> Html.map MyNet.Static.Wrappers.EmeraldLake.unwrap <| MyNet.View.EmeraldLake.view m
        SVolcano m -> Html.map MyNet.Static.Wrappers.Volcano.unwrap <| MyNet.View.Volcano.view m

title : NetState -> String
title ns =
    case ns of
        SForestPath m -> MyNet.View.ForestPath.title m
        SEmeraldLake m -> MyNet.View.EmeraldLake.title m
        SVolcano m -> MyNet.View.Volcano.title m

