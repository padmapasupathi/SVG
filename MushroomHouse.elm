module Main exposing (main)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (GetKeyState,gameApp)

init = { time = 0 }

type Msg = Tick Float GetKeyState

update msg model =
    case msg of
        Tick t _ -> { model | time = t }

view model =
    collage 500 500
        [ mushroom1
        , mushroom2   |> rotate (degrees -15)  |> move (10,-5)
        , mushroom3 |> move (-5,-25)]

mushroom1 = group [ --roundedRect 70 70 10 |> filled white |> addOutline (solid 1) black |> move (35,-30)
            oval 100 95 |> filled white |> addOutline (solid 2) black |> move (35,-40)
            , curve (-10,-15) [Pull (-9,10) (10,30), Pull (24,50) (40,30), Pull (50,10) (80,10), Pull (101,-5) (46,-19), Pull (10,-30) (-10,-15) ] |> filled red |> addOutline (solid 1.5) black |> scale 1.25 |> move (-15,0)
            , curve (0,-15) [Pull (-9,10) (10,30), Pull (35,50) (50,34), Pull (72,13) (65,-15) ] |> filled brown |> addOutline (solid 2) black |> scale 0.8 |> move (9,-70)
            , circle 5 |> filled yellow |> addOutline (solid 1) black |> move (20,-60)
            , circle 8 |> filled white |> addOutline (solid 1) black |> move (5,5)
            , circle 8 |> filled white |> addOutline (solid 1) black |> move (-20,-15)
            , circle 8 |> filled white |> addOutline (solid 1) black |> move (15,40)
            , circle 8 |> filled white |> addOutline (solid 1) black |> move (35,20)
            , circle 8 |> filled white |> addOutline (solid 1) black |> move (30,-15)
            , circle 8 |> filled white |> addOutline (solid 1) black |> move (60,5)

            ]

mushroom2 = group [ oval 50 45 |> filled white |> addOutline (solid 1) black |> move (90,-40)
                  , curve (0,-15) [Pull (-9,10) (10,30), Pull (35,50) (50,30), Pull (64,7) (80,18), Pull (101,-5) (46,-21), Pull (10,-30) (0,-15) ] |> filled red |> addOutline (solid 2) black |> scale 0.7 |> move (60,-20)
                  , roundedRect 20 15 7 |> filled brown |> addOutline (solid 1) black |> move (90,-50)
                  , circle 6 |> filled white |> addOutline (solid 1) black |> move (100,-15)
                  , circle 6 |> filled white |> addOutline (solid 1) black |> move (80,-5)
                  , circle 6 |> filled white |> addOutline (solid 1) black |> move (70,-25)
            ]

mushroom3 = group [ oval 25 50 |> filled white |> addOutline (solid 1.5) black  |> move (-10,-40)
            , curve (0,-15) [Pull (-9,10) (10,30), Pull (35,50) (50,34), Pull (52,34) (65,20), Pull (80,-5) (46,-21), Pull (10,-30) (0,-15) ] |> filled red |> addOutline (solid 2.5) black |> scale 0.5  |> move (-30,-25)
            ]

main =
    gameApp
        Tick
        {
            model = init
        ,   view = view
        ,   update = update
        ,   title = "Mushroom House Example" -- This is the title of the browser window / tab
        }
