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
        [ group [ roundedRect 150 50 5 |> filled red |> addOutline (solid 1) black |> move (40,0)
        , roundedRect 62 40 5 |> filled black |> move (60,36)
        , roundedRect 60 80 5 |> filled red |> move(60,15)
        , rectangle 40 20 |> filled gray |> addOutline (solid 1) black |> move (55,35)
        , group [ rectangle 10 30 |> filled black |> move (-5,40)
        , curve (10,0) [Pull (-20,-5) (-17,33), Pull (0,73) (-34,76), Pull (17,78) (10,0) ]|> filled darkGray |> rotate (degrees -40) |> scale 0.25 |> move (-5,55) |> makeTransparent (cos model.time)
        , curve (10,0) [Pull (-20,-5) (-17,33), Pull (0,73) (-34,76), Pull (17,78) (10,0) ]|> filled darkGray |> rotate (degrees -40) |> scale 0.45 |> move (5,75) |> makeTransparent (sin model.time) ]
        , group [ circle 20 |> filled white -- |> move (-10,-25)
        , circle 15 |> filled black |> addOutline (dotted 3) black -- |> move (-10,-25)
        , circle 10 |> filled white  ]|> move (-10,-25)
        , group [ circle 30 |> filled white -- |> move (80,-15)
        , circle 25 |> filled black |> addOutline (dotted 3) black -- |> move (80,-15)
        , circle 20 |> filled white ] |> move (80,-15)
        , line (110,-10)(140,-10) |> outlined(solid 3) darkGray
        ] |> move (-50,0)
        --, square 20 |> filled darkYellow |> move (190,0)
        , group [ rectangle 100 40 |> filled red |> move (140,0) |> makeTransparent 0.25
        , group [ circle 15 |> filled white
        , circle 10 |> filled black |> addOutline (dotted 3) black
        , circle 6 |> filled white ] |> move (110,-25)
        , group [ circle 15 |> filled white
        , circle 10 |> filled black |> addOutline (dotted 3) black
        , circle 6 |> filled white ] |> move (170,-25)]
        ]

main =
    gameApp
        Tick
        {
            model = init
        ,   view = view
        ,   update = update
        ,   title = "Tractor Example" -- This is the title of the browser window / tab
        }
