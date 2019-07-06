module MyNet.Static.Decode exposing(..)
import MyNet.Static.Types exposing(..)
import MyNet.Static.ExtraTypes exposing(..)

import Utils.Utils exposing(..)
decodeIncomingMessage  :  (Result String a, List String) -> (Result String IncomingMessage, List String)
decodeIncomingMessage (_,incomingmessageTxts) = 
    case incomingmessageTxts of
        ("MLeaveForestPath4Volcano" :: rest) ->
            (Err "",rest) |> 
                    (\(r3,l4) -> (Ok <| MLeaveForestPath4Volcano ,l4))
        ("MLeaveForestPath4EmeraldLake" :: rest) ->
            (Err "",rest) |> 
                    (\(r3,l4) -> (Ok <| MLeaveForestPath4EmeraldLake ,l4))
        ("MLeaveEmeraldLake4ForestPath" :: rest) ->
            (Err "",rest) |> 
                    (\(r3,l4) -> (Ok <| MLeaveEmeraldLake4ForestPath ,l4))
        ("MLeaveVolcano4ForestPath" :: rest) ->
            (Err "",rest) |> 
                    (\(r3,l4) -> (Ok <| MLeaveVolcano4ForestPath ,l4))

        _ -> (Err <| tConcat ["Incorrect input, could not decode value of type IncomingMessage from string \"", tConcat incomingmessageTxts, "\""],[])

--extra types decoders
decodeForest  :  (Result String a, List String) -> (Result String Forest, List String)
decodeForest (_,forestTxts) = 
    case forestTxts of
        ("Foll" :: rest) ->
            (Err "",rest) |> 
                    (\(r3,l4) -> (Ok <| Foll ,l4))

        _ -> (Err <| tConcat ["Incorrect input, could not decode value of type Forest from string \"", tConcat forestTxts, "\""],[])


