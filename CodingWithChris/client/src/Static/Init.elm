module Static.Init exposing (..)
import Static.Types exposing(..)
import MyNet.Static.Init

init : (NetModel, Cmd NetTransition)
init = (MyNet MyNet.Static.Init.init, Cmd.none)
