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
        (  myShapes model )

myShapes model = [ group [ oval 4 2 |> filled lightBrown |> rotate (degrees 35) |> move ( 21,2.5)|> addOutline (solid 0.5) black
                 , curve (20,2) [Pull (6,-4) (0,0), Pull (0,0) (-5,5) ]  |> outlined (solid 2.5)  lightBrown  ---Body
                 , curve (20,2) [Pull (6,-4) (0,0), Pull (0,0) (-5,5) ]  |> outlined (solid 0.5)  black |> move (0,-1) --BodyOutline
                 , curve (20,2) [Pull (6,-4) (0,0), Pull (0,0) (-5,5) ]  |> outlined (solid 0.5)  black |> move (0,1) --Body Outline
                 , curve (0,0) [Pull (0,3) (2,4) ]  |> outlined (solid 0.5) black |> move (-7,7) --Antenna
                 , circle 1 |> filled lightPurple |> move (-5,12) |> addOutline (solid 0.5) black --Antenna
                 , circle 3 |> filled lightBrown |> move (-6.75,6) |> addOutline (solid 0.5) black --HEad
                 , circle 1 |> filled white |> move (-7,7)|> addOutline (solid 0.25)black --Eye
                 , circle 0.25 |> filled black |> move (-7,7)
                 , oval 20 19 |> filled lightPurple |> move (7.5,7.5) |> addOutline (solid 0.5) black --Shell
                 --, oval 20 19 |> outlined (solid 0.5) black |> move (7.5,7.5)
                 , curve (0,0) [Pull (-9,3) (-1,-3) ]  |> filled white |> mirrorX |> scale 0.5 |> rotate (degrees 10) |> move (-9,4.5) |> addOutline (solid 0.5)black
                 ] |>scale 3
                 ]


main =
    gameApp
        Tick
        { 
            model = init
        ,   view = view
        ,   update = update
        ,   title = "Snail Example" -- This is the title of the browser window / tab
        }
