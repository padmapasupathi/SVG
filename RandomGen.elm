module Main exposing (main)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (GetKeyState,gameApp)

myShapes model = [
    background,
    text ("Score " ++ String.fromInt (round model.score)) |> size 8 |> filled white |> move (-80,-55),
    text (Debug.toString model.newPos ++ Debug.toString model.item) |> size 12 |> filled white |> notifyTap OnClick
    ]

background = group [
    square 200 |> filled black
 ]

spaceship posX = group [
    oval 20 10 |> filled grey,
    triangle 3 |> filled grey |> rotate (degrees 45) |> move (6,-4),
    triangle 3 |> filled grey |> move (-6,-4),
    circle 4 |> filled lightBlue |> addOutline (solid 1) red |> move (0,4),
    circle 1.5 |> filled yellow |> move (-4,-1.5),
    circle 1.5 |> filled yellow |> move (4,-1.5)
  ]
   |> move (posX,-5)

mkCrystal : Int -> Shape Msg
mkCrystal xPos = ngon 4 2 |> filled lightGreen |> move (toFloat xPos,50)

type Msg = Tick Float GetKeyState
           | RefreshCrystals | OnClick

update msg model = case msg of
                     Tick t (_,(x,y),_)
                        -> { model | time = t, posX = x + model.posX, score = model.score + 0.01
                            , yPos = -25 * model.time
                            }
                     RefreshCrystals
                        -> { model | locations = -50 :: model.locations}

                     OnClick
                       -> { model | newPos = round (abs(10*cos(model.time*100)))
                           , item = case round (abs(3*sin(model.time*100))) of
                                       1 -> "Apple"
                                       2 -> "Tomato"
                                       _ -> "Pumpkin"

                           }

type alias Model = { time : Float, posX : Float, score : Float, locations : List Int, yPos : Float, newPos : Int, item : String}

init = {  time = 0, posX = 0, score = 0, locations = [-10,20,70,-50], yPos = 50, newPos = 0 , item = "Apple"}

main =
    gameApp Tick
        { model = init
        , view = view
        , update = update
        , title = "Random Generator"
        }

view model = collage 192 128 (myShapes model)
