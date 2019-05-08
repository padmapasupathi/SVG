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
        [ square 20 |> filled black |> move (15,30)
        , curve (10,0) [Pull (19,0) (0,15) ]  |> filled white |> addOutline (solid 1.5) black |> scale 1.05 |> rotate (degrees 227) |> move (11,42)
        , curve (10,0) [Pull (19,0) (0,15) ]  |> filled white |> addOutline (solid 1.5) black |> scale 1.05 |> rotate (degrees 110) |> mirrorY |> move (7,10)
        , curve (38,50) [Pull (37,5) (-10,-5), Pull (-26,-7) (-16,0), Pull (-8,5) (0,15), Pull (-4,21) (15,20), Pull (25,30) (22,35), Pull (8,27) (0,40), Pull (18,86) (38,50) ] |> filled red |> addOutline(solid 1) black 
        , group [  curve (30,9) [Pull (20,-16) (0,-10), Pull (7,-31) (38,6) ]  |> filled darkGreen |> addOutline(solid 1) black|> rotate (degrees 180) |> move (70,20)
        , curve (30,0) [Pull (15,15) (0,0), Pull (7,-2) (14,3), Pull (9,-10) (22,1), Pull (35,-11) (30,0) ]  |> filled darkGreen |> addOutline(solid 1) black |> rotate (degrees -25) |> move (20,20) ] |> move (-9,45)
        , curve (-15,0) [Pull (0,5) (0,0) ]  |> filled black |> mirrorX |> move (10,48)
        ,  curve (-15,0) [Pull (0,5) (0,0) ]  |> filled black |> mirrorX |> mirrorY |> rotate (degrees -45) |> move (10,50)  
        , group [ curve (20,0) [Pull (5,-5) (0,5), Pull (0,17) (-15,15), Pull (0,27) (20,0) ] |> filled yellow |> addOutline (solid 2) orange |> move (-20,30)
        , curve (20,0) [Pull (5,-5) (0,5), Pull (0,17) (-15,15), Pull (0,27) (20,0) ] |> filled yellow |> addOutline (solid 2) orange |> mirrorY |> move (-30,20)
        , curve (20,0) [Pull (5,-5) (0,5), Pull (0,17) (-15,15), Pull (0,27) (20,0) ] |> filled yellow |> addOutline (solid 2) orange |> mirrorY |> rotate (degrees -45) |> move (-40,40) ] |>makeTransparent(sin(model.time))
        
        ]

main =
    gameApp
        Tick
        { 
            model = init
        ,   view = view
        ,   update = update
        ,   title = "Hot Pepper Example" -- This is the title of the browser window / tab
        }
