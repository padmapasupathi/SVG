module Static.Update exposing(..)
import MyNet.Static.Update as MyNet

import Static.Types exposing(..)
import Utils.Utils exposing (Either(..),mapBoth)
import Maybe

update : TopLevelData -> NetIncomingMessage -> NetModel -> (NetModel, Cmd NetTransition)
update tld netInMsg state =
    case (netInMsg,state) of
            (MyNetInMsg msg, MyNet m) ->
                let
                    (newMyNetState, mcmd) = MyNet.update tld msg m
                    newClientState = MyNet newMyNetState
                in (newClientState, Cmd.map MyNetTrans mcmd)



outgoingToIncoming : NetTransition -> Either NetIncomingMessage NetTransition
outgoingToIncoming trans =
    case trans of
        MyNetTrans tr -> mapBoth MyNetInMsg MyNetTrans <| MyNet.outgoingToIncoming tr


