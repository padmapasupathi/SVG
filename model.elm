module Main exposing (main)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (GetKeyState,gameApp)

init = { time = 0 }

type alias Model =
       { time : Float}

type Msg = Tick Float GetKeyState

update msg model =
    case msg of
        Tick t _ ->  { model | time = t }

view model = collage 1250 900 [ circle 10 |> filled red ]

main =
    gameApp
        Tick
        {
            model = init
        ,   view = view
        ,   update = update
        ,   title = "Unicorn Game Example" -- This is the title of the browser window / tab
        }
