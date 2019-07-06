module MyNet.View.ForestPath exposing(..)
import MyNet.Static.Types.ForestPath exposing(Msg(..))
import MyNet.Static.Types exposing(ForestPath(..))
import MyNet.Static.Helpers.ForestPath exposing(..)
import MyNet.Static.ExtraTypes exposing(..)

import Html exposing(..)
import Html.Events exposing(..)
import Debug exposing(todo)

subs : ForestPath -> Sub Msg
subs forestPath =
    Sub.none

view : ForestPath -> Html Msg
view forestPath =
        div
        []
        [
         h1 [] [ text "Forest Path"]
         , button [onClick LeaveForestPath] [ text "Leave Forest Path"]
        ]

title : ForestPath -> String
title forestPath =
    "ForestPath"