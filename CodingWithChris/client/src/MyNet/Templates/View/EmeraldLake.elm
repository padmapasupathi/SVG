module MyNet.View.EmeraldLake exposing(..)
import MyNet.Static.Types.EmeraldLake exposing(Msg(..))
import MyNet.Static.Types exposing(EmeraldLake(..))
import MyNet.Static.Helpers.EmeraldLake exposing(..)
import MyNet.Static.ExtraTypes exposing(..)

import Html exposing(Html)
import Debug exposing(todo)

subs : EmeraldLake -> Sub Msg
subs emeraldLake =
    Sub.none

view : EmeraldLake -> Html Msg
view emeraldLake =
    todo "Please fill out the view function for the MyNet net for the EmeraldLake place."

title : EmeraldLake -> String
title emeraldLake =
    todo "Please fill out the title function for the MyNet net for the EmeraldLake place."
