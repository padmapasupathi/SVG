module MyNet.Static.Wrappers where
import Static.Dict
import Data.Map.Strict as Dict
import MyNet.Static.Types

unwrapLeaveForestPath4EmeraldLake :: LeaveForestPath4EmeraldLake -> ClientMessage
unwrapLeaveForestPath4EmeraldLake LeaveForestPath4EmeraldLake  = MLeaveForestPath4EmeraldLake 


unwrapLeaveForestPath4Volcano :: LeaveForestPath4Volcano -> ClientMessage
unwrapLeaveForestPath4Volcano LeaveForestPath4Volcano  = MLeaveForestPath4Volcano 


unwrapLeaveEmeraldLake4ForestPath :: LeaveEmeraldLake4ForestPath -> ClientMessage
unwrapLeaveEmeraldLake4ForestPath LeaveEmeraldLake4ForestPath  = MLeaveEmeraldLake4ForestPath 


unwrapLeaveVolcano4ForestPath :: LeaveVolcano4ForestPath -> ClientMessage
unwrapLeaveVolcano4ForestPath LeaveVolcano4ForestPath  = MLeaveVolcano4ForestPath 



unwrapForestPathPlayer :: ForestPathPlayer -> Player
unwrapForestPathPlayer ForestPathPlayer  = PForestPathPlayer 


unwrapEmeraldLakePlayer :: EmeraldLakePlayer -> Player
unwrapEmeraldLakePlayer EmeraldLakePlayer  = PEmeraldLakePlayer 


unwrapVolcanoPlayer :: VolcanoPlayer -> Player
unwrapVolcanoPlayer VolcanoPlayer  = PVolcanoPlayer 



unwrapLeaveForestPathfromForestPath :: LeaveForestPathfromForestPath -> (Player, Maybe ClientMessage)
unwrapLeaveForestPathfromForestPath trans =
    case trans of
        (LeaveForestPath_ForestPathtoVolcano player msg)  -> (unwrapVolcanoPlayer player, Just $ unwrapLeaveForestPath4Volcano msg)
        (LeaveForestPath_ForestPathtoEmeraldLake player msg)  -> (unwrapEmeraldLakePlayer player, Just $ unwrapLeaveForestPath4EmeraldLake msg)
        (LeaveForestPath_Stay_ForestPath player)  -> (unwrapForestPathPlayer player, Nothing)




unwrapLeaveEmeraldLakefromEmeraldLake :: LeaveEmeraldLakefromEmeraldLake -> (Player, Maybe ClientMessage)
unwrapLeaveEmeraldLakefromEmeraldLake trans =
    case trans of
        (LeaveEmeraldLake_EmeraldLaketoForestPath player msg)  -> (unwrapForestPathPlayer player, Just $ unwrapLeaveEmeraldLake4ForestPath msg)
        (LeaveEmeraldLake_Stay_EmeraldLake player)  -> (unwrapEmeraldLakePlayer player, Nothing)




unwrapLeaveVolcanofromVolcano :: LeaveVolcanofromVolcano -> (Player, Maybe ClientMessage)
unwrapLeaveVolcanofromVolcano trans =
    case trans of
        (LeaveVolcano_VolcanotoForestPath player msg)  -> (unwrapForestPathPlayer player, Just $ unwrapLeaveVolcano4ForestPath msg)
        (LeaveVolcano_Stay_Volcano player)  -> (unwrapVolcanoPlayer player, Nothing)





unwrapLeaveForestPath :: LeaveForestPath -> Transition
unwrapLeaveForestPath LeaveForestPath  = TLeaveForestPath 


unwrapLeaveEmeraldLake :: LeaveEmeraldLake -> Transition
unwrapLeaveEmeraldLake LeaveEmeraldLake  = TLeaveEmeraldLake 


unwrapLeaveVolcano :: LeaveVolcano -> Transition
unwrapLeaveVolcano LeaveVolcano  = TLeaveVolcano 



