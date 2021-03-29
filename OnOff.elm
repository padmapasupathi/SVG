module Main exposing (main)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (GetKeyState,gameApp)

main =
    gameApp
        Tick
        {
            model = init
        ,   view = view
        ,   update = update
        ,   title = "ON OFF Example" -- This is the title of the browser window / tab
        }

--model : Current State of our application

init = { time = 0 , color = gray }

type Msg = Tick Float GetKeyState | ClickOn | ClickOff

--view : Displays the application

view model = collage 500 500 [
                              circle 20 |> filled model.color |> addOutline (solid 1) black |> move (10*sin(0.5*model.time),0)-- (rgba 255 255 0 0.5)
                              , rect 15 10 |> filled green |> move (-30,-30) |> notifyTap ClickOn
                              , rect 15 10 |> filled red |> move (30,-30) |> notifyTap ClickOff
                              , text "Click Green to turn on and Red to turn off" |> filled (rgb 115 155 (100*sin(0.5*model.time))) |> move (50,0)
                            ]

--update : Modifies the state of application upon an event
update msg model = case msg of
                        Tick t _ -> { model | time = t }
                        ClickOn -> { model | color = yellow }
                        ClickOff -> { model | color = gray }
