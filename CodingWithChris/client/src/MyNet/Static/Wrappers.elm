module MyNet.Static.Wrappers exposing(..)
import MyNet.Static.ExtraTypes exposing(..)
import MyNet.Static.Types exposing(..)

import Dict exposing (Dict)
x = 0
unwrapLeaveForestPath : LeaveForestPath -> OutgoingTransition
unwrapLeaveForestPath LeaveForestPath  = TLeaveForestPath 


unwrapLeaveEmeraldLake : LeaveEmeraldLake -> OutgoingTransition
unwrapLeaveEmeraldLake LeaveEmeraldLake  = TLeaveEmeraldLake 


unwrapLeaveVolcano : LeaveVolcano -> OutgoingTransition
unwrapLeaveVolcano LeaveVolcano  = TLeaveVolcano 




