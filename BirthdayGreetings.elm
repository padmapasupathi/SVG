module Main exposing (main)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (GetKeyState,gameApp)

init = { time = 0 }

type Msg = Tick Float GetKeyState
  
update msg model =
    case msg of
        Tick t _ -> { model | time = t }

view model =
    collage 500 500 (myGame model)
    
myGame model = [rectangle 5 10 |> filled orange |> move (0,5) |> scale (cos(0.1*model.time))]
   {-} [ 
    {-Frame-}
        rect 500 500 |> filled (rgb 255 255 180)
    {-Cake-}
        , roundedRect 80 45 15  |> filled pink  |> move (0,20)
        , rect 80 45 |> filled hotPink  |> move (0,0)
        , rect 80 15 |> filled pink  |> move (0,0)
        , rect 5 25 |> filled hotPink  |> move (0,40)
        , oval 7 10 |> filled orange |> scale (cos(0.2*model.time)-1) |> move(0,50)
        , circle 5 |> filled green |> move (0,0)
        , circle 5 |> filled green |> move (25,0)
        , circle 5 |> filled green |> move (-25,0)
        , circle 5 |> filled green |> move (13,15)
        , circle 5 |> filled green |> move (-13,15)
        , circle 5 |> filled green |> move (-35,15)
        , circle 5 |> filled green |> move (35,15)
        , circle 5 |> filled green |> move (13,-15)
        , circle 5 |> filled green |> move (-13,-15)
        , circle 5 |> filled green |> move (-35,-15)
        , circle 5 |> filled green |> move (35,-15)
    {-Butterfly-}
        , oval 50 27 |> filled yellow |> move (80,80) |> rotate (degrees <| 2.5 * sin(2*model.time))-- |> rotate (degrees 45)
        , oval 50 27 |> filled blue |> move (80,80)  |> rotate (degrees <| 2.5 * cos(2*model.time))  |> rotate (degrees 0.5)
        , oval 7 50 |> filled green |> move (80,80)  |> rotate (degrees <| 2.5 * sin(2*model.time)) --|> rotate (degrees 75)
        , oval 50 27 |> filled pink |> move (-80,-80) |> rotate (degrees <| 12.5 * sin(2*model.time)) -- |> rotate (degrees 135)
        , oval 27 50 |> filled pink |> move (-80,-80) |> rotate (degrees <| 12.5 * sin(2*model.time))  --|> rotate (degrees 0.5)
        , oval 7 50 |> filled green |> move (-80,-80) |> rotate (degrees <| 12.5 * sin(2*model.time))  |> rotate (degrees 5)
     {-Text-}
        , text "Happy Birthday" |> filled blue |> move (-100,100) |> scale 2 
        , text "Enjoy the day" |> filled blue |> move (0,-100) |> scale 2
        ] 
 -}
main =
    gameApp
        Tick
        { 
            model = init
        ,   view = view
        ,   update = update
        ,   title = "Happy Birthday Card" -- This is the title of the browser window / tab
        }
