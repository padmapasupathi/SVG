module Static.Decode exposing(..)
import Static.Types exposing(..)
import Utils.Utils exposing(..)
import MyNet.Static.Decode


decodeIncomingMessage : String -> NetModel -> Result String NetIncomingMessage
decodeIncomingMessage txt clientNet =
    case clientNet of
        MyNet _ -> rMap MyNetInMsg <| Tuple.first <| MyNet.Static.Decode.decodeIncomingMessage (Err "",String.split "\u{0000}" txt)
