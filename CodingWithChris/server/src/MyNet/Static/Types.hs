{-# LANGUAGE DeriveDataTypeable #-}
module MyNet.Static.Types where
import Data.Typeable (Typeable)
import Data.Data (Data)
import Data.SafeCopy (SafeCopy)


-- place states and place player states
data ForestPath  =
      ForestPath
    deriving(Ord,Eq,Show,Typeable)

data ForestPathPlayer  =
      ForestPathPlayer
    deriving(Ord,Eq,Show,Typeable)


data EmeraldLake  =
      EmeraldLake
    deriving(Ord,Eq,Show,Typeable)

data EmeraldLakePlayer  =
      EmeraldLakePlayer
    deriving(Ord,Eq,Show,Typeable)


data Volcano  =
      Volcano
    deriving(Ord,Eq,Show,Typeable)

data VolcanoPlayer  =
      VolcanoPlayer
    deriving(Ord,Eq,Show,Typeable)



-- outgoing client message types
data LeaveForestPath4EmeraldLake  =
      LeaveForestPath4EmeraldLake
    deriving(Ord,Eq,Show)
data LeaveForestPath4Volcano  =
      LeaveForestPath4Volcano
    deriving(Ord,Eq,Show)
data LeaveEmeraldLake4ForestPath  =
      LeaveEmeraldLake4ForestPath
    deriving(Ord,Eq,Show)
data LeaveVolcano4ForestPath  =
      LeaveVolcano4ForestPath
    deriving(Ord,Eq,Show)
data ClientMessage  =
      MLeaveForestPath4EmeraldLake
    | MLeaveForestPath4Volcano
    | MLeaveEmeraldLake4ForestPath
    | MLeaveVolcano4ForestPath
    deriving(Ord,Eq,Show)

-- individual transition types
data LeaveForestPathfromForestPath  =
      LeaveForestPath_ForestPathtoVolcano VolcanoPlayer LeaveForestPath4Volcano
    | LeaveForestPath_ForestPathtoEmeraldLake EmeraldLakePlayer LeaveForestPath4EmeraldLake
    | LeaveForestPath_Stay_ForestPath ForestPathPlayer
    deriving(Ord,Eq,Show)

data LeaveEmeraldLakefromEmeraldLake  =
      LeaveEmeraldLake_EmeraldLaketoForestPath ForestPathPlayer LeaveEmeraldLake4ForestPath
    | LeaveEmeraldLake_Stay_EmeraldLake EmeraldLakePlayer
    deriving(Ord,Eq,Show)

data LeaveVolcanofromVolcano  =
      LeaveVolcano_VolcanotoForestPath ForestPathPlayer LeaveVolcano4ForestPath
    | LeaveVolcano_Stay_Volcano VolcanoPlayer
    deriving(Ord,Eq,Show)


-- main transition types
data Transition  =
      TLeaveForestPath
    | TLeaveEmeraldLake
    | TLeaveVolcano
    deriving(Ord,Eq,Show)
data LeaveForestPath  =
      LeaveForestPath
    deriving(Ord,Eq,Show)
data LeaveEmeraldLake  =
      LeaveEmeraldLake
    deriving(Ord,Eq,Show)
data LeaveVolcano  =
      LeaveVolcano
    deriving(Ord,Eq,Show)

-- player state union type
data Player  =
      PForestPathPlayer
    | PEmeraldLakePlayer
    | PVolcanoPlayer
    deriving(Ord,Eq,Show)
-- extra server types
data Forest  =
      Foll
    deriving(Ord,Eq,Show)


