--module HappyFace exposing (..)
module Main exposing (main)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (GetKeyState,gameApp)
import ColourPalette exposing (drawRGB, RGB(..))
init = { time = 0 }

type Msg = Tick Float GetKeyState
  
update msg model =
    case msg of
        Tick t _ -> { model | time = t }

view model =
    collage 300 300
        [ circle 20 |> filled yellow
          , wedge 5 0.5 |> filled black |> rotate (degrees 90) |> move (-7,3)
          , wedge 5 0.5 |> filled black |> rotate (degrees 90) |> move (7,3)
          , wedge 7 0.5 |> filled black |> rotate (degrees 270) |> move (0,-5)
        ]

main =
    gameApp
        Tick
        { 
            model = init
        ,   view = view
        ,   update = update
        ,   title = "Happy Face Example" -- This is the title of the browser window / tab
        }
