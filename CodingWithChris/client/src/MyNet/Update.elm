module MyNet.Update exposing(..)
import MyNet.Static.Types exposing(..)
import MyNet.Static.Types.ForestPath as ForestPathT
import MyNet.Static.Types.EmeraldLake as EmeraldLakeT
import MyNet.Static.Types.Volcano as VolcanoT

import MyNet.Static.FromSuperPlace exposing(..)
import MyNet.Static.ExtraTypes exposing(..)
import MyNet.Static.Helpers.ForestPath as ForestPath
import MyNet.Static.Helpers.EmeraldLake as EmeraldLake
import MyNet.Static.Helpers.Volcano as Volcano
import Utils.Utils
import Debug exposing(todo)

updateForestPathLeaveForestPath4VolcanoVolcano : FromSuperPlace -> LeaveForestPath4Volcano -> ForestPath -> (Volcano, Cmd VolcanoT.Msg)
updateForestPathLeaveForestPath4VolcanoVolcano fsp LeaveForestPath4Volcano  forestPath =
    (Volcano, Cmd.none)

updateForestPathLeaveForestPath4EmeraldLakeEmeraldLake : FromSuperPlace -> LeaveForestPath4EmeraldLake -> ForestPath -> (EmeraldLake, Cmd EmeraldLakeT.Msg)
updateForestPathLeaveForestPath4EmeraldLakeEmeraldLake fsp LeaveForestPath4EmeraldLake  forestPath =
    (EmeraldLake, Cmd.none)


updateEmeraldLakeLeaveEmeraldLake4ForestPathForestPath : FromSuperPlace -> LeaveEmeraldLake4ForestPath -> EmeraldLake -> (ForestPath, Cmd ForestPathT.Msg)
updateEmeraldLakeLeaveEmeraldLake4ForestPathForestPath fsp LeaveEmeraldLake4ForestPath  emeraldLake =
    (ForestPath, Cmd.none)


updateVolcanoLeaveVolcano4ForestPathForestPath : FromSuperPlace -> LeaveVolcano4ForestPath -> Volcano -> (ForestPath, Cmd ForestPathT.Msg)
updateVolcanoLeaveVolcano4ForestPathForestPath fsp LeaveVolcano4ForestPath  volcano =
    (ForestPath, Cmd.none)


