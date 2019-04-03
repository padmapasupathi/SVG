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
        [ group [ triangle 70 |> filled white |> scaleY 2.5 |> rotate (degrees 90) |> move (0,52)
        , triangle 70 |> outlined (solid 1) black |> scaleY 2.5 |> rotate (degrees 90) |> move (0,52)
        , triangle 30 |> outlined (solid 1) black |> scaleY 2.5 |> rotate (degrees 90) |> move (0,45)
        , triangle 30 |> filled white |> scaleY 2.5 |> rotate (degrees 90) |> move (0,45)
        , circle 20 |> outlined (solid 1) black |> move (0,50)        
        , rect 304 15  |> filled white |> move (0,10)
        , rect 304 15 |> outlined(solid 1) black |> move (0,10)
        , roundedRect 15 150 5 |> filled white |> move (-90,-80)
        , roundedRect 15 150 5 |> outlined (solid 1) black |> move (-90,-80)
        , roundedRect 15 150 5 |> filled white |> move (-45,-80)
        , roundedRect 15 150 5 |> outlined (solid 1) black |> move (-45,-80)
        , roundedRect 15 150 5 |> filled white |> move (0,-80)
        , roundedRect 15 150 5 |> outlined (solid 1) black |> move (0,-80)
        , roundedRect 15 150 5 |> filled white |> move (45,-80)
        , roundedRect 15 150 5 |> outlined (solid 1) black |> move (45,-80)
        , roundedRect 15 150 5 |> filled white |> move (90,-80)
        , roundedRect 15 150 5 |> outlined (solid 1) black |> move (90,-80)
        , rect 300 15  |> filled white |> move (0,-150)
        , rect 300 15  |> outlined (solid 1) black |> move (0,-150)
       , group [rectangle 2 15  |> filled charcoal  |> rotate (degrees -90)
       , rectangle 2 17  |> filled charcoal  |> rotate (degrees -90) |> move (0, 2)
       , rectangle 2 19  |> filled charcoal  |> rotate (degrees -90) |> move (0, 4)
       , rectangle 2 21  |> filled charcoal  |> rotate (degrees -90) |> move (0, 6)
       , rectangle 2 23  |> filled charcoal  |> rotate (degrees -90) |> move (0, 8)
       , rectangle 2 25  |> filled charcoal  |> rotate (degrees -90) |> move (0, 10)] |> move (-90,-8)
        , group [rectangle 2 15  |> filled charcoal  |> rotate (degrees -90)
       , rectangle 2 17  |> filled charcoal  |> rotate (degrees -90) |> move (0, 2)
       , rectangle 2 19  |> filled charcoal  |> rotate (degrees -90) |> move (0, 4)
       , rectangle 2 21  |> filled charcoal  |> rotate (degrees -90) |> move (0, 6)
       , rectangle 2 23  |> filled charcoal  |> rotate (degrees -90) |> move (0, 8)
       , rectangle 2 25  |> filled charcoal  |> rotate (degrees -90) |> move (0, 10)] |> move (-45,-8)
       , group [rectangle 2 15  |> filled charcoal  |> rotate (degrees -90)
       , rectangle 2 17  |> filled charcoal  |> rotate (degrees -90) |> move (0, 2)
       , rectangle 2 19  |> filled charcoal  |> rotate (degrees -90) |> move (0, 4)
       , rectangle 2 21  |> filled charcoal  |> rotate (degrees -90) |> move (0, 6)
       , rectangle 2 23  |> filled charcoal  |> rotate (degrees -90) |> move (0, 8)
       , rectangle 2 25  |> filled charcoal  |> rotate (degrees -90) |> move (0, 10)] |> move (0,-8)
       , group [rectangle 2 15  |> filled charcoal  |> rotate (degrees -90)
       , rectangle 2 17  |> filled charcoal  |> rotate (degrees -90) |> move (0, 2)
       , rectangle 2 19  |> filled charcoal  |> rotate (degrees -90) |> move (0, 4)
       , rectangle 2 21  |> filled charcoal  |> rotate (degrees -90) |> move (0, 6)
       , rectangle 2 23  |> filled charcoal  |> rotate (degrees -90) |> move (0, 8)
       , rectangle 2 25  |> filled charcoal  |> rotate (degrees -90) |> move (0, 10)] |> move (45,-8)
        , group [rectangle 2 15  |> filled charcoal  |> rotate (degrees -90)
       , rectangle 2 17  |> filled charcoal  |> rotate (degrees -90) |> move (0, 2)
       , rectangle 2 19  |> filled charcoal  |> rotate (degrees -90) |> move (0, 4)
       , rectangle 2 21  |> filled charcoal  |> rotate (degrees -90) |> move (0, 6)
       , rectangle 2 23  |> filled charcoal  |> rotate (degrees -90) |> move (0, 8)
       , rectangle 2 25  |> filled charcoal  |> rotate (degrees -90) |> move (0, 10)] |> move (90,-8)
         --, ngon 4 20 |> filled yellow
        --, rectangle 70 100 |> filled lightGray |> move (0,-70)
        ]  |> scale 0.35 ]

main =
    gameApp
        Tick
        { 
            model = init
        ,   view = view
        ,   update = update
        ,   title = "Bank Example" -- This is the title of the browser window / tab
        }
