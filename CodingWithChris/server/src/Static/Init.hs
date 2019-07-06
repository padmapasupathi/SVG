module Static.Init where
import Static.Types
import qualified Data.TMap as TM
import Data.Maybe (fromJust)
import MyNet.Static.Init


init = do
    ns <- MyNet.Static.Init.init
    Prelude.putStrLn $ "Successfully started server."
    Prelude.putStrLn $ "Use Ctrl+C to stop server."
    return ns
teardown = MyNet.Static.Init.teardown . fromJust . TM.lookup
-- reference to the initial Net
initNet :: NetModel
initNet = MyNet
