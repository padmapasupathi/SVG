{-# LANGUAGE OverloadedStrings #-}
module Static.Lib
    ( mainServer
    ) where

import           Control.Concurrent             (forkIO,threadDelay)
import           Control.Concurrent.Async       (race)
import           Control.Concurrent.STM         (TQueue, atomically, readTQueue,
                                                 writeTQueue, STM, readTMVar, newEmptyTMVar)
import           Control.Monad                  (forever)
import           Control.Monad.IO.Class         (liftIO)
import qualified Data.Text              as T
import           Data.Text                      (Text)
import           Data.Text.IO                   as Tio
import qualified Data.ByteString.Lazy.Char8          as C
import           Network.HTTP.Types             (status200)
import           Network.Wai                    (Application, responseLBS, pathInfo)
import           Network.Wai.Handler.Warp       (run)
import           Network.Wai.Handler.WebSockets (websocketsOr)

import           Text.Read                      (readMaybe)
import qualified Network.WebSockets             as WS
import qualified System.Signal                  as Sig
import           System.Exit                    (exitSuccess)
import System.Environment (getArgs)

import qualified Static.ServerLogic as ServerLogic
import Static.ServerTypes
import Static.Types
import Static.Decode
import Utils.Utils
import Static.Init
import Static.Version (version)


wsApp :: TQueue CentralMessage -> WS.ServerApp
wsApp centralMessageChan pendingConn = 
    let
        loop :: WS.Connection -> TQueue OutgoingClientThreadMessage -> IO ()
        loop conn clientMessageChan = do
                  -- wait for login message
                  WS.sendTextData conn ("s" :: T.Text) -- ask the client to send the version
                  Prelude.putStrLn "Waiting for version string from client..."
                  rawMsg <- WS.receiveData conn
                  Tio.putStrLn $ T.concat ["Got login message:", rawMsg]
                  
                  case (rawMsg == version) of 
                    True -> do -- tell the central thread to log the user in
                        WS.sendTextData conn ("v" :: T.Text) --tell client that its version is right
                        atomically $ writeTQueue centralMessageChan (NewUser clientMessageChan conn)
                        forever $ threadDelay 10000000000 --sleep this thread forever (we need it to keep the connection alive)
                        return ()
                    _      -> do -- user's client version does not match 
                        WS.sendTextData conn ("i" :: T.Text) --close the Connection
                        WS.sendClose conn ("" :: T.Text) --close the Connection
                        return ()
    in
        do
        -- This function handles each new Connection.
        conn <- WS.acceptRequest pendingConn
        WS.forkPingThread conn 30

        -- Get a new message channel for this client.
        clientMessageChan <- atomically ServerLogic.newClientMessageChan

        loop conn clientMessageChan

fallbackApp :: TQueue CentralMessage -> Application
fallbackApp centralChan req respond = do
    {-let url = pathInfo req
    case url of 
        ["reset"] ->
            atomically $ do 
                writeTQueue centralChan $ SetInternalState $ Static.Init.init
                writeTQueue centralChan $ ResetClients
        _ -> return ()
    tempQ <- atomically $ giveReceivingQueue centralChan GetCurrentState
    state <- atomically $ readTQueue tempQ
    let userState = internalServerState state-}
    respond $ responseLBS status200 [] "" -- $ C.pack $ show userState


app :: TQueue CentralMessage -> Application
app centralChan = websocketsOr WS.defaultConnectionOptions (wsApp centralChan) (fallbackApp centralChan)


mainServer :: IO ()
mainServer = do
    args <- getArgs
    let port = if length args > 0 then (read $ (args !! 0) :: Int) else 8080
    killVar <- atomically $ newEmptyTMVar
    centralMessageChan <- atomically ServerLogic.newCentralMessageChan
    forkIO $ ServerLogic.processCentralChan centralMessageChan killVar
    Prelude.putStrLn $ "starting server on port " ++ show port
    Sig.installHandler Sig.sigINT 
        (\_ -> do
            atomically $ writeTQueue centralMessageChan KillMessageReceived
        )
    _ <- forkIO $ run port (app centralMessageChan)
    --wait for the kill variable to be filled
    _ <- atomically $ readTMVar killVar
    Prelude.putStrLn "Exiting..."
    exitSuccess