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
        [ circle 5 |> filled gray |> addOutline(solid 1) black |> move (0,100) -- Antenna
        , line (0,80)(0,95) |> outlined(solid 1) black |> scaleX 1.5
        , wedge 7 0.5 |> filled gray |> addOutline(solid 1) black|>  rotate (degrees 90) |> move (0,80) -- Cap
        , square 10 |> filled gray |> addOutline(solid 1) black |> move (0,52) -- Neck
        , group [ roundedRect 50 25 5 |> filled gray |> addOutline(solid 1) black |> rotate (degrees 5) |> move (0,68) -- Face
        , group [ circle 5 |> filled yellow |> addOutline (solid 1) black |> move (-10,72)
        , circle 2 |> filled black |> move (-8,70)
        , circle 5 |> filled yellow |> addOutline (solid 1) black |> move (10,74)
        , circle 2 |> filled black |> move (8,72)
        ] --eyes
        , line (-10,62)(10,65) |> outlined (solid 2) black -- Mouth
        ] -- Full Face
        , oval 40 60 |> filled gray |> addOutline (solid 1) black |> rotate (degrees -90) |> move (2,-5) --Hip
        , group [ line (25,20)(35,5) |> outlined (solid 2) black |> scale 2 
        , circle 7 |> filled gray |> addOutline (solid 1) black |> move (73,5) 
        , wedge 10 0.5 |> filled gray |> addOutline (solid 1) black |> rotate (degrees 4) |> move (44,40)
        , line (35,0)(25,-10) |> outlined (solid 2) black |> scale 2
        , curve (10,0) [Pull (0,0) (0,-10), Pull (-1,-21) (11,-20) ]  |> filled gray |> addOutline (solid 1) black |> rotate (degrees 180) |> move (50,-30)
        , curve (10,0) [Pull (0,0) (0,-10), Pull (-1,-21) (11,-20) ]  |> filled white |> addOutline (solid 2) black |> scale 0.5|> rotate (degrees 180) |> move (45,-25) 
        ]
        , group [ line (25,20)(35,5) |> outlined (solid 2) black |> scale 2 
        , circle 7 |> filled gray |> addOutline (solid 1) black |> move (73,5) 
        , wedge 10 0.5 |> filled gray |> addOutline (solid 1) black |> rotate (degrees -2) |> move (44,40)
        , line (35,0)(25,-10) |> outlined (solid 2) black |> scale 2
        , curve (10,0) [Pull (0,0) (0,-10), Pull (-1,-21) (11,-20) ]  |> filled gray |> addOutline (solid 1) black |> rotate (degrees 180) |> move (50,-30)
        , curve (10,0) [Pull (0,0) (0,-10), Pull (-1,-21) (11,-20) ]  |> filled white |> addOutline (solid 2) black |> scale 0.5|> rotate (degrees 180) |> move (45,-25) 
        ] |> rotate (degrees 180) |> move (3.5, 80) 
        , polygon [(40,25),(43,-25),(-46,-25),(-43,25)] |> filled gray |> addOutline(solid 1) black |> move (3,25)
        , polygon [(40,25),(43,-25),(-46,-25),(-43,25)] |> filled gray |> addOutline(solid 2) black |> scale 0.6 |> move (2,25)
        , wedge 10 0.5 |> filled white |> addOutline (solid 1 ) black |> rotate (degrees 90)|> move (0,20)
        , curve (10,12) [Pull (0,0) (0,-10) ]  |> filled black |> scale 0.5 |> move (-2,23)
        , line (10,-10)(15,-25) |> outlined (solid 2) black |> scale 2
        , line (-8,-10)(-13,-25) |> outlined (solid 2) black |> scale 2
        , line (-25,-50)(-25,-60) |> outlined (solid 2) black |> scale 2 |> move (25,45)
        , line (25,-50)(25,-60) |> outlined (solid 2) black |> scale 2 |> move (-20,45)
        , circle 7 |> filled gray |> addOutline (solid 1) black |> move (30,-50) 
        , circle 7 |> filled gray |> addOutline (solid 1) black |> move (-25,-50) 
        , wedge 10 0.5 |> filled gray |> addOutline (solid 1) black |> rotate (degrees 90) |> move (-25,-85)
        , wedge 10 0.5 |> filled gray |> addOutline (solid 1) black |> rotate (degrees 90) |> move (30,-85)
        ]

main =
    gameApp
        Tick
        { 
            model = init
        ,   view = view
        ,   update = update
        ,   title = "Ellie Example" -- This is the title of the browser window / tab
        }
