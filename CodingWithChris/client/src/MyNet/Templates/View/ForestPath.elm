module MyNet.View.ForestPath exposing(..)
import MyNet.Static.Types.ForestPath exposing(Msg(..))
import MyNet.Static.Types exposing(ForestPath(..))
import MyNet.Static.Helpers.ForestPath exposing(..)
import MyNet.Static.ExtraTypes exposing(..)

import Html exposing(Html)
import Debug exposing(todo)

subs : ForestPath -> Sub Msg
subs forestPath =
    Sub.none

view : ForestPath -> Html Msg
view forestPath =
    todo "Please fill out the view function for the MyNet net for the ForestPath place."

title : ForestPath -> String
title forestPath =
    todo "Please fill out the title function for the MyNet net for the ForestPath place."
