module Main exposing (main)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (GetKeyState,gameApp)

init = { time = 0 , shp = 0}

type alias Model = { time : Float, shp : Int }

type Msg = Tick Float GetKeyState | ClickShape

update msg model =
    case msg of
        Tick t _ -> { model | time = t }
        ClickShape -> { model | shp = model.shp + 1 }

view model =
    collage 500 500
        [ shape |> move (0,100) |> notifyTap ClickShape
        , wagon
        , group <| List.map (\id -> shape |> move (drawShape id)) (List.range 1 model.shp)

        ]

drawShape shp = case shp of
                    0 -> (0,20)
                    1 -> (-80,20)
                    2 -> (-40,20)
                    3 -> (0,20)
                    4 -> (40,20)
                    5 -> (80,20)
                    6 -> (-80,-20)
                    7 -> (-40,-20)
                    8 -> (0, -20)
                    9 -> (40,-20)
                    _ -> (80,-20)

shape = group [ circle 10 |> filled red |> addOutline (solid 1) black ]

wagon = group [ rect 220 100 |> outlined (solid 1) orange
        , square 30 |> outlined (solid 1) black |> move (-80,20)
        , text  ("1") |> filled gray |> move (-80,20)
        , square 30 |> outlined (solid 1) black |> move (-80,-20)
        , text  ("6") |> filled gray |> move (-80,-20)
        , square 30 |> outlined (solid 1) black |> move (-40,20)
        , text  ("2") |> filled gray |> move (-40,20)
        , square 30 |> outlined (solid 1) black |> move (-40,-20)
        , text  ("7") |> filled gray |> move (-40,-20)
        , square 30 |> outlined (solid 1) black |> move (0,20)
        , text  ("3") |> filled gray |> move (0,20)
        , square 30 |> outlined (solid 1) black |> move (0,-20)
        , text  ("8") |> filled gray |> move (0,-20)
        , square 30 |> outlined (solid 1) black |> move (40,20)
        , text  ("4") |> filled gray |> move (40,20)
        , square 30 |> outlined (solid 1) black |> move (40,-20)
        , text  ("9") |> filled gray |> move (40,-20)
        , square 30 |> outlined (solid 1) black |> move (80,20)
        , text  ("5") |> filled gray |> move (80,20)
        , square 30 |> outlined (solid 1) black |> move (80,-20)
        , text  ("10") |> filled gray |> move (80,-20)
        ]

main =
    gameApp
        Tick
        {
            model = init
        ,   view = view
        ,   update = update
        ,   title = "10 Frame Example" -- This is the title of the browser window / tab
        }
