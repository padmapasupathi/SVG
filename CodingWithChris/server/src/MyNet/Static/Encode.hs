{-# LANGUAGE OverloadedStrings #-}
module MyNet.Static.Encode where
import MyNet.Static.Types

import Utils.Utils
import qualified Data.Text as T
import Static.Types
import Data.Map.Strict as Dict
import qualified Static.Result as Result
encodeClientMessage :: ClientMessage -> T.Text
encodeClientMessage clientmessage = 
    case clientmessage of
        MLeaveForestPath4EmeraldLake -> 
                tConcat ["MLeaveForestPath4EmeraldLake"]
        MLeaveForestPath4Volcano -> 
                tConcat ["MLeaveForestPath4Volcano"]
        MLeaveEmeraldLake4ForestPath -> 
                tConcat ["MLeaveEmeraldLake4ForestPath"]
        MLeaveVolcano4ForestPath -> 
                tConcat ["MLeaveVolcano4ForestPath"]


-- extra type encoders
encodeForest :: Forest -> T.Text
encodeForest forest = 
    case forest of
        Foll -> 
                tConcat ["Foll"]



