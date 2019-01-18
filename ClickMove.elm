{-
Here when you click on the object, it moves to another position

-}

module Main exposing (main)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (GetKeyState,gameApp)

init = { time = 0 , pos = Start }

type Msg = Tick Float GetKeyState | Click
  
update msg model =
    case msg of
        Tick t _ -> { model | time = t }
        Click -> { model | pos = case model.pos of
                                  Start -> Up
                                  Up -> Down
                                  Down -> Start }

view model =
    collage 500 500
        [ circle 5 |> filled orange |> move (changePos model.pos) |> notifyTap Click]

changePos pos = case pos of
                 Start -> (0,0)
                 Up -> (20,20)
                 Down -> (-20,-20)

type Position = Start | Up | Down

main =
    gameApp
        Tick
        { 
            model = init
        ,   view = view
        ,   update = update
        ,   title = "Click Example" -- This is the title of the browser window / tab
        }
