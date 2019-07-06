module MyNet.View.Volcano exposing(..)
import MyNet.Static.Types.Volcano exposing(Msg(..))
import MyNet.Static.Types exposing(Volcano(..))
import MyNet.Static.Helpers.Volcano exposing(..)
import MyNet.Static.ExtraTypes exposing(..)

import Html exposing(Html)
import Debug exposing(todo)

subs : Volcano -> Sub Msg
subs volcano =
    Sub.none

view : Volcano -> Html Msg
view volcano =
    todo "Please fill out the view function for the MyNet net for the Volcano place."

title : Volcano -> String
title volcano =
    todo "Please fill out the title function for the MyNet net for the Volcano place."
