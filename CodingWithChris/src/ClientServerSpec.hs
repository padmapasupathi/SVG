{-# LANGUAGE OverloadedStrings #-} -- allows us to use T.Text directly

module ClientServerSpec where

import Types
import TypeHelpers

jobT = dt StringT "job" "this comment is for job"
ageT = dt (IntRangeT (-99999) (99999)) "age" "this comment is for age"
personT = dt (PairT ageT jobT) "person" "this comment is for person"
testfloatT = dt (FloatRangeT (0) (10) 2) "testFloat" "this comment is for testFloat"

forestType = ct "Forest"
    [constr "Foll" []
    ]

net :: Net
net =
    let
        forestpathPlace =
            Place "ForestPath"
            []
            []
            []
            Nothing

        emeraldlakePlace =
            Place "EmeraldLake"
            []
            []
            []
            Nothing

        volcanoPlace =
            Place "Volcano"
            []
            []
            []
            Nothing
        leavevolcanoTrans =
            Transition OriginClientOnly
                (msg "LeaveVolcano" [])
                [("Volcano", Nothing)
                ,("Volcano", Just ("ForestPath", msg "LeaveVolcano4ForestPath" []))
                ]
                Nothing
        leaveemeraldlakeTrans =
                    Transition OriginClientOnly
                        (msg "LeaveEmeraldLake" [])
                        [("EmeraldLake", Nothing)
                        ,("EmeraldLake", Just ("ForestPath", msg "LeaveEmeraldLake4ForestPath" []))
                        ]
                        Nothing
        leaveforestTrans =
                    Transition OriginClientOnly
                        (msg "LeaveForestPath" [])
                        [("ForestPath", Nothing)
                        ,("ForestPath", Just ("Volcano", msg "LeaveForestPath4Volcano" []))
                        ,("ForestPath", Just ("EmeraldLake", msg "LeaveForestPath4EmeraldLake" []))
                        ]
                        Nothing
    in
        Net
           "MyNet"
           "ForestPath"
            [forestpathPlace,emeraldlakePlace,volcanoPlace]
            [leaveforestTrans,leaveemeraldlakeTrans,leavevolcanoTrans]
            []

clientServerApp :: ClientServerApp
clientServerApp =

    ( "MyNet"

    , [net]              --all the nets in this client/server app (current only one is supported at a time)

    , [forestType])