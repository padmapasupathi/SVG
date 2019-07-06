module MyNet.View.Volcano exposing(..)
import MyNet.Static.Types.Volcano exposing(Msg(..))
import MyNet.Static.Types exposing(Volcano(..))
import MyNet.Static.Helpers.Volcano exposing(..)
import MyNet.Static.ExtraTypes exposing(..)

import Html exposing(..)
import Html.Events exposing(..)
import Debug exposing(todo)

subs : Volcano -> Sub Msg
subs volcano =
    Sub.none

view : Volcano -> Html Msg
view volcano =
        div
        []
        [
         h1 [] [ text "Volcano"]
         , button [onClick LeaveVolcano] [ text "Leave Volcano"]
        ]

title : Volcano -> String
title volcano =
    "Volcano"