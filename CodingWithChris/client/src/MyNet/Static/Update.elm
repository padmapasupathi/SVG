module MyNet.Static.Update exposing(..)
import MyNet.Static.Types exposing(..)
import MyNet.Static.Wrappers exposing(..)
import MyNet.Static.Wrappers.ForestPath exposing(..)
import MyNet.Static.Wrappers.EmeraldLake exposing(..)
import MyNet.Static.Wrappers.Volcano exposing(..)

import MyNet.Static.FromSuperPlace exposing (FromSuperPlace)
import MyNet.Update exposing(..)
import Utils.Utils exposing(Either(..))
import Static.Types exposing(..)
import Dict

update : FromSuperPlace -> IncomingMessage -> NetState -> (NetState,Cmd Transition)
update fsp trans state =
    case (trans,state) of
        (MLeaveForestPath4Volcano , SForestPath st) -> let (newModel, cmd) = updateForestPathLeaveForestPath4VolcanoVolcano fsp LeaveForestPath4Volcano  st in (SVolcano newModel, Cmd.map MyNet.Static.Wrappers.Volcano.unwrap cmd)
        (MLeaveForestPath4EmeraldLake , SForestPath st) -> let (newModel, cmd) = updateForestPathLeaveForestPath4EmeraldLakeEmeraldLake fsp LeaveForestPath4EmeraldLake  st in (SEmeraldLake newModel, Cmd.map MyNet.Static.Wrappers.EmeraldLake.unwrap cmd)

        (MLeaveEmeraldLake4ForestPath , SEmeraldLake st) -> let (newModel, cmd) = updateEmeraldLakeLeaveEmeraldLake4ForestPathForestPath fsp LeaveEmeraldLake4ForestPath  st in (SForestPath newModel, Cmd.map MyNet.Static.Wrappers.ForestPath.unwrap cmd)

        (MLeaveVolcano4ForestPath , SVolcano st) -> let (newModel, cmd) = updateVolcanoLeaveVolcano4ForestPathForestPath fsp LeaveVolcano4ForestPath  st in (SForestPath newModel, Cmd.map MyNet.Static.Wrappers.ForestPath.unwrap cmd)


        _ -> (state, Cmd.none)
outgoingToIncoming : Transition -> Either IncomingMessage Transition
outgoingToIncoming trans =
    case trans of

        External outT -> Right <| External outT
