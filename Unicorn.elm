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
        [unicorn model |> move (100,100)
        ]

unicorn model = group [ group [roundedRect 20 15 5 |> filled lightGray |> addOutline (solid 1) black |> rotate (degrees 45) |> move (5,-35)
                      , roundedRect 31 16 5 |> filled black |> addOutline (solid 1) black |> rotate (degrees 45) |> move (10,-40)
                      , roundedRect 20 15 5 |> filled lightGray |> addOutline (solid 1) black |> rotate (degrees -45) |> move (10,-50)
                      , roundedRect 30 15 5 |> filled lightGray |> rotate (degrees 45) |> move (10,-40) ] -- front legs
                      , group [ roundedRect 30 15 5 |> filled lightGray |> addOutline (solid 1) black |> rotate (degrees -45) |> move (45,-45)
                      , roundedRect 30 15 5 |> filled lightGray |> addOutline (solid 1) black |> rotate (degrees -45) |> move (55,-45) ] -- back legs
                      , oval 60 40 |> filled lightGray |> addOutline (solid 1) black |> move (30,-20)
                      , group [ oval 40 30 |> filled lightGray |> addOutline (solid 1) black |> rotate (degrees 45) -- face
                      , curve (0,0) [Pull (-5,5) (0,10) ] |> outlined (solid 1) black |> rotate (degrees -90) |> move (-5,5)
                      , curve (0,0) [Pull (-5,5) (0,10) ] |> outlined (solid 1.5) black |> rotate (degrees 90) |> move (-8,-5)
                      , circle 3 |> filled pink |> move (2,-4) ]
                      , group [ curve (0,0) [Pull (-5,5) (0,10), Pull (0,0) (5,5), Pull (22,20) (30,0), Pull (15,-15) (0,0) ] |> filled lightPurple |> addOutline (solid 1) black |> rotate (degrees 25) |> move (-15,17) --bump curve2
                      , curve (0,0) [Pull (-5,5) (0,10), Pull (0,0) (5,5), Pull (22,20) (30,0), Pull (15,-15) (0,0) ] |> filled pink |> addOutline (solid 1) black |> rotate (degrees 25) |> move (-15,12) --bump curve1
                      , curve (0,15) [Pull (-3,3) (-2,0), Pull (1,-2) (4,0), Pull (4,2) (0,15) ]  |> filled yellow |> addOutline (solid 0.5) black |> scale 1.5 |> move (0,22) ]--horn
                      , group [ curve (-2,20) [Pull (3,18) (0,10), Pull (-10,-25) (20,-15), Pull (-2,-15) (10,20), Pull (0,30) (-2,20) ] |> filled lightPurple |> addOutline (solid 1) black |> rotate (degrees 25) |> move (22,10) --hair3
                      , curve (-2,20) [Pull (3,18) (0,10), Pull (-10,-25) (20,-15), Pull (-2,-15) (10,20), Pull (0,30) (-2,20) ] |> filled lightGreen |> addOutline (solid 1) black |> rotate (degrees 15) |> move (20,5) --hair2
                      , curve (-2,20) [Pull (3,18) (0,10), Pull (-10,-25) (20,-15), Pull (-2,-15) (10,20), Pull (0,30) (-2,20) ] |> filled pink |> addOutline (solid 1) black |> move (15,0) --hair1
                      , curve (0,15) [Pull (-6,6) (0,0), Pull (6,5) (0,15) ] |> filled lightGray |> addOutline (solid 0.5) black |> rotate (degrees -35) |> scale 1.5 |> move (7,10) ]-- ears
                      , group [ curve (0,0) [Pull (10,0) (0,-10), Pull (-15,-30) (15,-30), Pull (0,-20) (5,-15), Pull (20,7) (0,0) ] |> filled lightPurple |>  addOutline (solid 1) black |> rotate (degrees 35) |> scale 1.3|> move (57,-13) --tail2
                      , curve (0,0) [Pull (10,0) (0,-10), Pull (-15,-30) (15,-30), Pull (0,-20) (5,-15), Pull (20,7) (0,0) ] |> filled pink |>  addOutline (solid 1) black |> rotate (degrees 25) |> move (60,-15) ]--tail1
                      ]
main =
    gameApp
        Tick
        {
            model = init
        ,   view = view
        ,   update = update
        ,   title = "Unicorn Example" -- This is the title of the browser window / tab
        }
