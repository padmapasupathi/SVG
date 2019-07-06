module MyNet.View.EmeraldLake exposing(..)
import MyNet.Static.Types.EmeraldLake exposing(Msg(..))
import MyNet.Static.Types exposing(EmeraldLake(..))
import MyNet.Static.Helpers.EmeraldLake exposing(..)
import MyNet.Static.ExtraTypes exposing(..)

import Html exposing(..)
import Html.Events exposing(..)
import Debug exposing(todo)

subs : EmeraldLake -> Sub Msg
subs emeraldLake =
    Sub.none

view : EmeraldLake -> Html Msg
view emeraldLake =
    div
    []
    [
     h1 [] [ text "Emerald Lake"]
     , button [onClick LeaveEmeraldLake] [ text "Leave EmeraldLake"]
    ]

title : EmeraldLake -> String
title emeraldLake =
    "Emerald Lake"