module Static.Subs exposing(..)
import Static.Types exposing(..)
import MyNet.Static.Subs as MyNet

subscriptions : NetModel -> Sub NetTransition
subscriptions model =
    case model of
        MyNet m -> Sub.map MyNetTrans <| MyNet.subs m

