module MyNet.Update where
import MyNet.Static.Types
import MyNet.Static.FromSuperPlace
import MyNet.Static.Helpers.ForestPath as ForestPath
import MyNet.Static.Helpers.EmeraldLake as EmeraldLake
import MyNet.Static.Helpers.Volcano as Volcano

import MyNet.Static.Helpers.ForestPathPlayer as ForestPathPlayer
import MyNet.Static.Helpers.EmeraldLakePlayer as EmeraldLakePlayer
import MyNet.Static.Helpers.VolcanoPlayer as VolcanoPlayer

import Static.List
import Utils.Utils
import Static.ServerTypes
import Static.Cmd (Cmd(..))
import qualified Static.Cmd as Cmd

-- function called when new client connects (do not delete)
clientConnect :: FromSuperPlace -> ClientID -> ForestPath -> (ForestPath, ForestPathPlayer)
clientConnect fsp clientID forestPath =
    (ForestPath, ForestPathPlayer) --says what should happen when someone connects

-- functions called when a client disconnects (do not delete)
clientDisconnectFromEmeraldLake :: FromSuperPlace -> ClientID -> EmeraldLake -> EmeraldLakePlayer -> EmeraldLake
clientDisconnectFromEmeraldLake fsp clientID emeraldLake emeraldLakePlayer =
    EmeraldLake

clientDisconnectFromForestPath :: FromSuperPlace -> ClientID -> ForestPath -> ForestPathPlayer -> ForestPath
clientDisconnectFromForestPath fsp clientID forestPath forestPathPlayer =
    ForestPath

clientDisconnectFromVolcano :: FromSuperPlace -> ClientID -> Volcano -> VolcanoPlayer -> Volcano
clientDisconnectFromVolcano fsp clientID volcano volcanoPlayer =
    Volcano


-- functions for each transition
updateLeaveForestPath :: FromSuperPlace -> 
    ClientID ->
    LeaveForestPath ->
    ForestPath -> 
    EmeraldLake -> 
    Volcano -> 
    List ForestPathPlayer -> 
    ( ForestPath,
      EmeraldLake,
      Volcano,
      (ClientID, ForestPathPlayer) -> LeaveForestPathfromForestPath
    )
updateLeaveForestPath fsp clientId LeaveForestPath forestPath emeraldLake volcano lstForestPath =
    let
        fromForestPath :: (ClientID, ForestPathPlayer) -> LeaveForestPathfromForestPath
        fromForestPath (pId, pforestPath) =
            if clientId == pId then
              if pId `mod` 2 ==0 then
                LeaveForestPath_ForestPathtoVolcano VolcanoPlayer LeaveForestPath4Volcano
              else
                LeaveForestPath_ForestPathtoEmeraldLake EmeraldLakePlayer LeaveForestPath4EmeraldLake
            else
              LeaveForestPath_Stay_ForestPath ForestPathPlayer

    in
        (forestPath, emeraldLake, volcano, fromForestPath)

updateLeaveEmeraldLake :: FromSuperPlace -> 
    ClientID ->
    LeaveEmeraldLake ->
    EmeraldLake -> 
    ForestPath -> 
    List EmeraldLakePlayer -> 
    ( EmeraldLake,
      ForestPath,
      (ClientID, EmeraldLakePlayer) -> LeaveEmeraldLakefromEmeraldLake
    )
updateLeaveEmeraldLake fsp clientId LeaveEmeraldLake emeraldLake forestPath lstEmeraldLake =
    let
        fromEmeraldLake :: (ClientID, EmeraldLakePlayer) -> LeaveEmeraldLakefromEmeraldLake
        fromEmeraldLake (pId, pemeraldLake) =
          if clientId ==pId then
            LeaveEmeraldLake_EmeraldLaketoForestPath ForestPathPlayer LeaveEmeraldLake4ForestPath
          else
            LeaveEmeraldLake_Stay_EmeraldLake EmeraldLakePlayer


    in
        (emeraldLake, forestPath, fromEmeraldLake)

updateLeaveVolcano :: FromSuperPlace -> 
    ClientID ->
    LeaveVolcano ->
    Volcano -> 
    ForestPath -> 
    List VolcanoPlayer -> 
    ( Volcano,
      ForestPath,
      (ClientID, VolcanoPlayer) -> LeaveVolcanofromVolcano
    )
updateLeaveVolcano fsp clientId LeaveVolcano volcano forestPath lstVolcano =
    let
        fromVolcano :: (ClientID, VolcanoPlayer) -> LeaveVolcanofromVolcano
        fromVolcano (pId, pvolcano) =
          if clientId == pId then
            LeaveVolcano_VolcanotoForestPath ForestPathPlayer LeaveVolcano4ForestPath
          else
            LeaveVolcano_Stay_Volcano VolcanoPlayer

    in
        (volcano, forestPath, fromVolcano)


