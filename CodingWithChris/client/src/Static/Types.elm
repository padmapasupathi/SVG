module Static.Types exposing(..)
import MyNet.Static.Types


type alias TopLevelData = ()
-- a type identifying all of the nets in the server
type NetModel  =
      MyNet MyNet.Static.Types.NetState
-- a union type of all the nets and their incoming transitions
type NetIncomingMessage  =
      MyNetInMsg MyNet.Static.Types.IncomingMessage
-- a union type of all the nets and their outgoing transitions
type NetTransition  =
      MyNetTrans MyNet.Static.Types.Transition
