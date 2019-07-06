module MyNet.Static.Init where
import MyNet.Static.Types (Player)
import MyNet.Init as Init
import MyNet.Update as Update
import MyNet.Static.Wrappers
import MyNet.Static.Plugins (initPlugins,teardownPlugins)
import Static.ServerTypes
import qualified Data.IntMap as IM'
import qualified Data.TMap as TM

init :: IO (NetState Player)
init = do
    ip <- initPlugins
    return $ NetState
        {
          playerStates = IM'.empty
        , placeStates = TM.insert initForestPath $ TM.insert initEmeraldLake $ TM.insert initVolcano $ TM.empty
        , pluginStates = ip
        }
teardown :: NetState Player -> IO ()
teardown ns = do
    teardownPlugins (pluginStates ns)
