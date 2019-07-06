module MyNet.Static.Init exposing(..)
import MyNet.Init as Init
import MyNet.Static.Types exposing (NetState(..))
import MyNet.Update as Update
import MyNet.Static.Wrappers
import MyNet.Static.ExtraTypes exposing(..)

init : NetState
init = SForestPath Init.init
