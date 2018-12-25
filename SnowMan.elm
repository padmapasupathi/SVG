module Main exposing (main)
import GraphicSVG exposing (..)

import GraphicSVG.EllieApp exposing (GetKeyState,gameApp)

 --Initialize variables (states)
init = { time = 0 }

type Msg = Tick Float GetKeyState

-- update variables (states) when input is sent
update msg model = case msg of
                     Tick t _ -> { model | time = t }



view model = collage 500 500 (myGame model) --Size of display

-- data model (what to display)
myGame model = 
    [ rect 200 300 |> filled lightBlue
        , roundedRect 100 15 50  |> filled black  |> move (0,-110)
        , roundedRect 40 75 50  |> filled darkRed  |> move (0,40)  |> rotate (degrees 135)
        , roundedRect 40 75 50  |> filled darkRed  |> move (0,40)  |> rotate (degrees 270)
        , rect 60 15  |> filled darkRed  |> move (0,30)
        , circle 50  |> filled white  |> move (0,-60)
        , circle 10  |> filled white  |> move (35,60)
        , rect 60 15  |> filled darkRed  |> move (0,30)
        , circle 30  |> filled white  |> move (0,10)
        , circle 4  |> filled black  |> move (-10,20)
        , circle 4  |> filled black  |> move (10,20)
        , wedge 7 0.5 |> filled black  |> rotate (degrees 270)  |> move (0,7)  |> scaleX 1.5  |> scaleY 1.5
        , circle 4  |> filled black  |> move (0,-40)
        , circle 4  |> filled black  |> move (0,-60)
        , circle 4  |> filled black  |> move (0,-80)
        , isosceles 20 20|> filled darkRed |> rotate (degrees 90)  |> move (20,-10)
        , isosceles 20 20|> filled darkRed |> rotate (degrees 270)  |> move (-20,-10)
        , text "MERRY CHRISTMAS!"  |> filled black  |> scale 1.5  |> move (-80,110) |> makeTransparent 1
        , group [ circle 4  |> filled white  |> move (-80,-40)
        , circle 4  |> filled white  |> move (-60,0)
        , circle 4  |> filled white  |> move (-90,40)
        , circle 4  |> filled white  |> move (-70,-90)
        , circle 4  |> filled white  |> move (-40,60)
        , circle 4  |> filled white  |> move (-80,90)
        , circle 4  |> filled white  |> move (80,-40)
        , circle 4  |> filled white  |> move (60,0)
        , circle 4  |> filled white  |> move (90,40)
        , circle 4  |> filled white  |> move (70,-90)
        , circle 4  |> filled white  |> move (80,90)
        ] |> scale (3*sin(model.time))
  ]
     
    
main = gameApp Tick { model = init, view = view, update = update  ,   title = "SnowMan Example"}
