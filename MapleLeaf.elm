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
        [ rectangle 10 20 |> filled red
        , group [ rectangle 20 30 |> filled red 
        , triangle 10 |> filled red |> rotate (degrees 90) |> move (0,20)
        , triangle 10 |> filled red |> rotate (degrees 25) |> move (8,10)
        , triangle 10 |> filled red |> rotate (degrees 145) |> move (-8,10)] |> move (0,10)
        , group [ rectangle 20 30 |> filled red 
        , triangle 10 |> filled red |> rotate (degrees 90) |> move (0,20)
        , triangle 10 |> filled red |> rotate (degrees 25) |> move (8,10)
        , triangle 10 |> filled red |> rotate (degrees 145) |> move (-8,10)] |> rotate (degrees 45) |> move (-20,-10)
        , group [ rectangle 20 30 |> filled red 
        , triangle 10 |> filled red |> rotate (degrees 90) |> move (0,20)
        , triangle 10 |> filled red |> rotate (degrees 25) |> move (8,10)
        , triangle 10 |> filled red |> rotate (degrees 145) |> move (-8,10)] |> rotate (degrees -45) |> move (20,-10)
        , square 35 |> filled red |> move (0,-12)
        , rightTriangle 10 15 |> filled red |> rotate (degrees 105) |> scaleY 1.5|> move (-10,-30)
        , rightTriangle 10 15 |> filled red |> rotate (degrees 75) |> mirrorY |> scaleY 1.5|> move (10,-30)
        , rectangle 10 15 |> filled red |> move (0,-30)
        ] 

main =
    gameApp
        Tick
        { 
            model = init
        ,   view = view
        ,   update = update
        ,   title = "Maple leaf Example" -- This is the title of the browser window / tab
        }
