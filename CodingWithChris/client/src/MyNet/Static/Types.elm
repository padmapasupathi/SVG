module MyNet.Static.Types exposing(..)
import MyNet.Static.ExtraTypes exposing(..)


-- the types of all places in the net
type Dummy = Dummy
-- place states
type ForestPath  =
      ForestPath


type EmeraldLake  =
      EmeraldLake


type Volcano  =
      Volcano



-- union place type
type NetState  =
      SForestPath ForestPath
    | SEmeraldLake EmeraldLake
    | SVolcano Volcano
-- internal transition types

-- outgoing transition types
type OutgoingTransition  =
      TLeaveForestPath
    | TLeaveEmeraldLake
    | TLeaveVolcano
type LeaveForestPath4Volcano  =
      LeaveForestPath4Volcano
type LeaveForestPath4EmeraldLake  =
      LeaveForestPath4EmeraldLake
type LeaveEmeraldLake4ForestPath  =
      LeaveEmeraldLake4ForestPath
type LeaveVolcano4ForestPath  =
      LeaveVolcano4ForestPath
type LeaveForestPath  =
      LeaveForestPath
type LeaveEmeraldLake  =
      LeaveEmeraldLake
type LeaveVolcano  =
      LeaveVolcano

-- outgoing server message types
type IncomingMessage  =
      MLeaveForestPath4Volcano
    | MLeaveForestPath4EmeraldLake
    | MLeaveEmeraldLake4ForestPath
    | MLeaveVolcano4ForestPath

type Transition =
    External OutgoingTransition
