module MyNet.Static.Update where
import MyNet.Static.Types
import MyNet.Static.Wrappers
import MyNet.Static.FromSuperPlace (FromSuperPlace(..))
import MyNet.Update as Update
import qualified Static.Cmd as Cmd
import qualified Data.TMap as TM
import Static.ServerTypes
import qualified Data.IntMap.Strict as IM'
import Data.Maybe (fromJust, isJust, mapMaybe)
import Utils.Utils
import Static.Cmd (Cmd)
import Plugins.Users (processLogout, Users)
import Static.Task (evalTask)

-- player processing functions
processLeaveForestPathPlayer :: ((ClientID, ForestPathPlayer) -> LeaveForestPathfromForestPath) -> (ClientID, Player) -> ((ClientID, Player), (ClientID, Maybe ClientMessage))
processLeaveForestPathPlayer fromForestPath (cId,player) = case player of
    PForestPathPlayer  -> let (np, mCm) = (unwrapLeaveForestPathfromForestPath $ fromForestPath (cId,ForestPathPlayer )) in ((cId, np), (cId, mCm))


processLeaveEmeraldLakePlayer :: ((ClientID, EmeraldLakePlayer) -> LeaveEmeraldLakefromEmeraldLake) -> (ClientID, Player) -> ((ClientID, Player), (ClientID, Maybe ClientMessage))
processLeaveEmeraldLakePlayer fromEmeraldLake (cId,player) = case player of
    PEmeraldLakePlayer  -> let (np, mCm) = (unwrapLeaveEmeraldLakefromEmeraldLake $ fromEmeraldLake (cId,EmeraldLakePlayer )) in ((cId, np), (cId, mCm))


processLeaveVolcanoPlayer :: ((ClientID, VolcanoPlayer) -> LeaveVolcanofromVolcano) -> (ClientID, Player) -> ((ClientID, Player), (ClientID, Maybe ClientMessage))
processLeaveVolcanoPlayer fromVolcano (cId,player) = case player of
    PVolcanoPlayer  -> let (np, mCm) = (unwrapLeaveVolcanofromVolcano $ fromVolcano (cId,VolcanoPlayer )) in ((cId, np), (cId, mCm))



-- player splitting functions
splitLeaveForestPathPlayers :: [(ClientID,Player)] -> ([(ClientID,ForestPathPlayer)])
splitLeaveForestPathPlayers players = foldl (\t@(fromForestPathlst) pl -> case pl of
    (cId,p@(PForestPathPlayer )) -> ((cId,ForestPathPlayer ):fromForestPathlst)

    _ -> t) ([]) players

splitLeaveEmeraldLakePlayers :: [(ClientID,Player)] -> ([(ClientID,EmeraldLakePlayer)])
splitLeaveEmeraldLakePlayers players = foldl (\t@(fromEmeraldLakelst) pl -> case pl of
    (cId,p@(PEmeraldLakePlayer )) -> ((cId,EmeraldLakePlayer ):fromEmeraldLakelst)

    _ -> t) ([]) players

splitLeaveVolcanoPlayers :: [(ClientID,Player)] -> ([(ClientID,VolcanoPlayer)])
splitLeaveVolcanoPlayers players = foldl (\t@(fromVolcanolst) pl -> case pl of
    (cId,p@(PVolcanoPlayer )) -> ((cId,VolcanoPlayer ):fromVolcanolst)

    _ -> t) ([]) players


-- process player connect
clientConnect :: FromSuperPlace -> ClientID -> NetState Player -> NetState Player
clientConnect fsp clientID state =
    let
        (forestPath,forestPathPlayer) = Update.clientConnect fsp clientID (safeFromJust "client connect Net" $ TM.lookup $ placeStates state)
    in
        state { placeStates = TM.insert forestPath $ placeStates state, playerStates = IM'.insert clientID (unwrapForestPathPlayer forestPathPlayer) (playerStates state) }

-- process player disconnects
disconnect :: FromSuperPlace -> ClientID -> NetState Player -> IO (NetState Player)
disconnect fsp clientID state =
    let
        player = safeFromJust "disconnect" $ IM'.lookup clientID $ players
        places = placeStates state
        players = playerStates state
        newPlaces = case player of
            PForestPathPlayer  -> (flip TM.insert) places $ clientDisconnectFromForestPath fsp clientID (safeFromJust "clientDisconnectFrom" $ TM.lookup places) (ForestPathPlayer )
            PEmeraldLakePlayer  -> (flip TM.insert) places $ clientDisconnectFromEmeraldLake fsp clientID (safeFromJust "clientDisconnectFrom" $ TM.lookup places) (EmeraldLakePlayer )
            PVolcanoPlayer  -> (flip TM.insert) places $ clientDisconnectFromVolcano fsp clientID (safeFromJust "clientDisconnectFrom" $ TM.lookup places) (VolcanoPlayer )

        newPlayers = IM'.delete clientID players
        task = processLogout clientID
    in do
        case (TM.lookup $ pluginStates state :: Maybe Plugins.Users.Users) of
            Just _ -> do
                evalTask (pluginStates state) task -- back door into the users plugin...
                return ()
            Nothing -> return ()
        return $ state { playerStates = newPlayers, placeStates = newPlaces }

update :: TopLevelData -> Maybe ClientID -> Transition -> NetState Player -> (NetState Player,[(ClientID,ClientMessage)],Maybe (Cmd.Cmd Transition))
update tld mClientID trans state =
    let
        places = placeStates state
        players = playerStates state
        (newPlaces, newPlayers, clientMessages, cmd) = 
            case trans of
                TLeaveForestPath ->
                    let
                        (forestPathPlayerLst) = splitLeaveForestPathPlayers (IM'.toList players)
                        (forestPath,emeraldLake,volcano,fromForestPath) = updateLeaveForestPath tld (fromJust mClientID) (LeaveForestPath ) ((safeFromJust "place lookup") $ TM.lookup places) ((safeFromJust "place lookup") $ TM.lookup places) ((safeFromJust "place lookup") $ TM.lookup places) (map snd forestPathPlayerLst)
                        newPlaces = TM.insert forestPath $ TM.insert emeraldLake $ TM.insert volcano places
                        (newPlayers, clientMessages) = unzip $ map (processLeaveForestPathPlayer fromForestPath) (mapSnd unwrapForestPathPlayer forestPathPlayerLst)
                    in
                        (newPlaces, newPlayers, clientMessages, Nothing)

                TLeaveEmeraldLake ->
                    let
                        (emeraldLakePlayerLst) = splitLeaveEmeraldLakePlayers (IM'.toList players)
                        (emeraldLake,forestPath,fromEmeraldLake) = updateLeaveEmeraldLake tld (fromJust mClientID) (LeaveEmeraldLake ) ((safeFromJust "place lookup") $ TM.lookup places) ((safeFromJust "place lookup") $ TM.lookup places) (map snd emeraldLakePlayerLst)
                        newPlaces = TM.insert emeraldLake $ TM.insert forestPath places
                        (newPlayers, clientMessages) = unzip $ map (processLeaveEmeraldLakePlayer fromEmeraldLake) (mapSnd unwrapEmeraldLakePlayer emeraldLakePlayerLst)
                    in
                        (newPlaces, newPlayers, clientMessages, Nothing)

                TLeaveVolcano ->
                    let
                        (volcanoPlayerLst) = splitLeaveVolcanoPlayers (IM'.toList players)
                        (volcano,forestPath,fromVolcano) = updateLeaveVolcano tld (fromJust mClientID) (LeaveVolcano ) ((safeFromJust "place lookup") $ TM.lookup places) ((safeFromJust "place lookup") $ TM.lookup places) (map snd volcanoPlayerLst)
                        newPlaces = TM.insert volcano $ TM.insert forestPath places
                        (newPlayers, clientMessages) = unzip $ map (processLeaveVolcanoPlayer fromVolcano) (mapSnd unwrapVolcanoPlayer volcanoPlayerLst)
                    in
                        (newPlaces, newPlayers, clientMessages, Nothing)


    in
        (state
           {
                placeStates = newPlaces
           ,    playerStates = insertList newPlayers $ players
           }
        , mapMaybe (\(a,b) -> if isJust b then Just (a,fromJust b) else Nothing) clientMessages
        , cmd)
