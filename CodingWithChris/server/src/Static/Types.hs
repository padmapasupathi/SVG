module Static.Types where
import MyNet.Static.Types


-- a type identifying all of the nets in the server
data NetModel  =
      MyNet
    deriving(Show,Ord,Eq)
-- a union type of all the nets and their transitions
data NetTransition  =
      MyNetTrans MyNet.Static.Types.Transition
    deriving(Show,Ord,Eq)
-- a union type of all the nets and their transitions
data NetOutgoingMessage  =
      MyNetOMsg MyNet.Static.Types.ClientMessage
    deriving(Show,Ord,Eq)
