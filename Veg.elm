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
        [apple model |> move (100,100)
        , tomato model |> move (0,100)
        , pumpkin model |> move (-100,100)
        , hay model |> move (0,-50)
        ]

hay model = group [ roundedRect 130 65 25 |> filled yellow |> addOutline (solid 2) darkYellow |> rotate (degrees 45) |> move (25,25)
               , oval 65 70 |> filled lightYellow |> addOutline (solid 2) darkYellow |> move (-2,0)
               , curve (0,0) [Pull (-5,5) (0,14), Pull (18,20) (14,-5), Pull (0,-25) (-15,0), Pull (-20,40) (20,25), Pull (57,3) (10,-30), Pull (-30,-45) (-35,18), Pull (-31,60) (20,50) ]|> outlined (solid 3) darkYellow |> scaleY 1.5 |> scale 0.5 |> move (0,-5)
                --, line (-10,33)(50,80) |> outlined (solid 2) darkYellow
               --, line (15,-33)(80,40) |> outlined (solid 2) darkYellow
               ]

pumpkin model = group [ oval 25 40 |> filled lightOrange |> addOutline (solid 1) darkOrange
                , oval 25 40 |> filled lightOrange |> addOutline (solid 1) darkOrange |> move (10,-2)
                , oval 25 40 |> filled lightOrange |> addOutline (solid 1) darkOrange |> move (-10,-2)
                , oval 25 40 |> filled lightOrange |> addOutline (solid 1) darkOrange |> move (20,-4)
                , oval 25 40 |> filled lightOrange |> addOutline (solid 1) darkOrange |> move (-20,-4)
                , oval 25 40 |> filled lightOrange |> addOutline (solid 1) darkOrange |> move (10,-6)
                , oval 25 40 |> filled lightOrange |> addOutline (solid 1) darkOrange |> move (-10,-6)
                , oval 25 40 |> filled lightOrange |> addOutline (solid 1) darkOrange |> move (0,-8)
                , curve (10,10) [Pull (8,2) (4,0) ]  |> outlined (solid 3) darkBrown |> scaleY 1.5 |> move (-5,12)

                ]

tomato model = group [ oval 50 43 |> filled darkOrange |> addOutline (solid 1) black
                 --, curve (30,9) [Pull (20,-16) (0,-10), Pull (7,-31) (38,6) ]  |> filled darkGreen |> rotate (degrees 180) |> move (70,20)
       , curve (30,0) [Pull (15,15) (0,0), Pull (7,-2) (14,3), Pull (9,-10) (22,1), Pull (35,-11) (30,0) ]  |> filled darkGreen |> addOutline (solid 1) black |> rotate (degrees 175) |> move (20,20)
               ]

apple model = group [ curve (30,-7) [Pull (16,-18) (3,0), Pull (-10,15) (10,30), Pull (17,36) (29,27) ] |> filled red |> addOutline (solid 1) black
        , curve (30,-10) [Pull (16,-16) (3,0), Pull (-8,15) (10,30), Pull (17,36) (29,27) ] |> filled red |> addOutline (solid 1) black |> mirrorX |> move (52,0)
        , curve (20,20) [Pull (20,5) (0,0), Pull (0,10) (20,20), Pull (0,0) (0,0) ] |> filled green |> addOutline (solid 1) black |> rotate (degrees -20) |> move (30,35)
        --, curve (10,10) [Pull (8,2) (4,0), Pull (4,4) (8,10), Pull (10,12) (10,10) ] |> filled brown |> addOutline (solid 0.5) black  |> scale 1.75 |> move (19,30)
        --, curve (10,10) [Pull (8,2) (4,0) ]  |> outlined (solid 3) darkBrown |> scaleY 1.5 |> move (20,30)
        , curve (30,9) [Pull (20,-16) (0,-10), Pull (7,-31) (38,6) ]  |> filled darkGreen |> addOutline (solid 1) black |> rotate (degrees 220) |> scale 0.6|> move (40,47)
       ]
main =
    gameApp
        Tick
        {
            model = init
        ,   view = view
        ,   update = update
        ,   title = "Vegetables Example" -- This is the title of the browser window / tab
        }
