module Main exposing (main)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (GetKeyState,gameApp)

init = { time = 0 , scaleVal = 2 }

type Msg = Tick Float GetKeyState

update msg model =
    case msg of
        Tick t _ -> { model | time = t
                    , scaleVal = if model.scaleVal > 0 then
                                    model.scaleVal - 0.1
                                 else model.scaleVal
                                 }

view model =
    collage 500 500 actualFlower

-- flower model = group [ curve (0,13) [Pull (-20,20) (-13,0), Pull (-20,-20) (0,-13), Pull (20,-20) (13,0), Pull (20,20) (0,13) ] |> filled white |> addOutline (solid 1) red |> rotate (degrees ( if sin(5*model.time) > 0 then 45 else 0 )) |> scale (model.scaleVal) ]

mappableFlower =
    curve (0,13) [Pull (-20,20) (-13,0), Pull (-20,-20) (0,-13), Pull (20,-20) (13,0), Pull (20,20) (0,13) ]
            |> filled white
            |> addOutline (solid 1) red

lstOfScales =
    [ 1.1, 1.0, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2 ]

actualFlower =
    List.map (\scaleFloat -> [ mappableFlower |> rotate 0 |> scale scaleFloat |> scale 3.0
                             , mappableFlower |> rotate (degrees 45) |> scale scaleFloat |> scale 3.0 ] ) lstOfScales
             |> List.concat

main =
    gameApp
        Tick
        {
            model = init
        ,   view = view
        ,   update = update
        ,   title = "Sea Shell Example" -- This is the title of the browser window / tab
        }
