module Static.View exposing(..)
import MyNet.Static.View as MyNet

import Static.Types exposing(..)
import Html exposing(Html)
view : NetModel -> Html NetTransition
view model =
    case model of
        MyNet m -> Html.map MyNetTrans <| MyNet.view m

title : NetModel -> String
title model =
    case model of
        MyNet m -> MyNet.title m

