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
        ,   title = "OnOff Example" -- This is the title of the browser window / tab
        }

-- Model : Current state of application

-- Light On & Off

init = { time = 0 , color = OffGray }

type Msg = Tick Float GetKeyState | Click

type Color = OnYellow | OffGray

-- View : Display the application

view model = collage 500 500 [ circle 25 |> filled (changeCol model.color) -- |> move (model.time,0)
                              , rect 25 10 |> filled green |> move (-40,-10) |> notifyTap Click
                            --  , rect 25 10 |> filled red |> move (40,-10) |> notifyTap ClickOff
                              ]

-- userdefined function to assign predefined colours to our userdefined colours
changeCol col = case col of
                  OnYellow -> yellow
                  OffGray -> gray

-- Update : Updates application upon an event
update msg model =
    case msg of
        Tick t _ -> { model | time = t }
        Click -> { model | color = case model.color of
                                        OnYellow -> OffGray
                                        OffGray -> OnYellow
                                      --if model.color == yellow then gray else yellow
                  }
      --  ClickOff -> { model | color = gray }
