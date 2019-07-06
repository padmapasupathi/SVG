{-# LANGUAGE OverloadedStrings #-}
module MyNet.Static.Decode where
import MyNet.Static.Types

import Utils.Utils
import Static.Result (Result(..))
import qualified Data.Text as T
import qualified Static.Result as Result
decodeTransition  ::  (Result T.Text a, [T.Text]) -> (Result T.Text Transition, [T.Text])
decodeTransition (_,transitionTxts) = 
    case transitionTxts of
        ("TLeaveForestPath" : rest) ->
            (Err "",rest) |> 
                    (\(r3,l4) -> (Ok <| TLeaveForestPath ,l4))
        ("TLeaveEmeraldLake" : rest) ->
            (Err "",rest) |> 
                    (\(r3,l4) -> (Ok <| TLeaveEmeraldLake ,l4))
        ("TLeaveVolcano" : rest) ->
            (Err "",rest) |> 
                    (\(r3,l4) -> (Ok <| TLeaveVolcano ,l4))

        _ -> (Err <| tConcat ["Incorrect input, could not decode value of type Transition from string \"", tConcat transitionTxts, "\""],[])

-- extra type decoders
decodeForest  ::  (Result T.Text a, [T.Text]) -> (Result T.Text Forest, [T.Text])
decodeForest (_,forestTxts) = 
    case forestTxts of
        ("Foll" : rest) ->
            (Err "",rest) |> 
                    (\(r3,l4) -> (Ok <| Foll ,l4))

        _ -> (Err <| tConcat ["Incorrect input, could not decode value of type Forest from string \"", tConcat forestTxts, "\""],[])


