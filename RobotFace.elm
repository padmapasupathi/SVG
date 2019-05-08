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
        [ roundedRect 100 90 20 |> filled darkGray 
        , rectangle 15 25 |> filled darkGray |> move (0,55)
        , circle 20 |> filled darkGray |> move (0,75)
        , roundedRect 50 40 10 |> filled darkGray |> move (40,0)
        , roundedRect 50 40 10 |> filled darkGray |> move (-40,0)
        , roundedRect 60 40 10 |> filled darkGray |> move (0,-40)
        , circle 15 |> filled white |> move (20,10)
        , circle 15 |> filled white |> move (-20,10)
        , roundedRect 50 20 10 |> filled white |> move (0,-25)
        ]

main =
    gameApp
        Tick
        { 
            model = init
        ,   view = view
        ,   update = update
        ,   title = "Robot Face Example" -- This is the title of the browser window / tab
        }
