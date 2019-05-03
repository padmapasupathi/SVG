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
        [ curve (36,12) [Pull (15,-15) (0,-10), Pull (17,-22) (45,6), Pull (46,16) (36,12) ]  |> filled red |> scale 2.5 |> move (-68,-13)
        , curve (34,15) [Pull (30,5) (0,0) ]  |> filled gray |>rotate (degrees 20) |> move (-20,-30)
--        , curve (36,12) [Pull (15,-15) (0,-10), Pull (17,-22) (45,6), Pull (46,16) (36,12) ]  |> filled gray |> scale 0.5 |> scaleX 1.5|> move (-30,-30)
        , curve (30,9) [Pull (20,-16) (0,-10), Pull (7,-31) (38,6) ]  |> filled darkGreen |> rotate (degrees 180) |> move (70,20)
        , curve (30,0) [Pull (15,15) (0,0), Pull (7,-2) (14,3), Pull (9,-10) (22,1), Pull (35,-11) (30,0) ]  |> filled darkGreen |> rotate (degrees -25) |> move (20,20)
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
