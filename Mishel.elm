module Main exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing(..)
import List
import String
import Dict exposing (Dict)

main = gameApp Tick { model = init, view = view, update = update, title = "CodeCopiedFromAll-Knowing" }

view model = collage 192 128 (myShapes model)

init = { time = 0}

update msg model =
  case msg of
    Tick t _ -> { model | time = t }

type Msg = Tick Float GetKeyState

-------------------------------------------------
---- this is where code from the Slides goes ----
---- BUT MOVE "import"s above main           ----
-------------------------------------------------

player t =
  group
    [ rect 100 25
  |> filled darkBrown
  |> scaleX 3
  |> move (0,-30)
      ,rect 100 25
  |> filled brown
  |> move (0,-20)
  |> scaleX 3
  |> scaleY 3
      ,curve (0,35) [Pull (17,10) (0,-20), Pull (9,-20) (30,-20), Pull (17,10) (30,35), Pull (16,35) (0,35) ]
  |> filled (rgb 64 0 0)
  |> scale 0.25
  |> move (-5,-15)
      ,curve (0,20) [Pull (25,10) (0,0), Pull (-10,-25) (-20,0), Pull (-50,12) (-20,20), Pull (-10,50) (0,20) ]
  |> filled (rgb 68 255 72)
  |> scaleX 0.35
  |> scaleY 0.35
  |> rotate (degrees 30)
  |> move (5,-5)
     ,curve(-12,5)[Pull (-27,-8) (-34,15), Pull (-23,35) (-11,15), Pull (5,33) (13,13), Pull (8,-8) (-12,-5)]
  |> filled (rgb 184 81 32)
  |> scale 0.11
  |> move (-75,-30)
     ,curve(-11,77)[Pull (1,7) (30,7), Pull (4,-14) (-9,70), Pull (-13,2) (2,-1)]
  |> filled (rgb 61 136 0)
  |> rotate (degrees -535)
  |> scale 0.1
  |> move (-50,-12)
     ,curve (0,35) [Pull (17,10) (0,-20), Pull (9,-20) (30,-20), Pull (17,10) (30,35), Pull (16,35) (0,35) ]
  |> filled (rgb 64 0 0)
  |> scale 0.75
  |> move (50,-15)
     ,curve (0,20) [Pull (25,10) (0,0), Pull (-10,-25) (-20,0), Pull (-50,12) (-20,20), Pull (-10,50) (0,20) ]
  |> filled (rgb 68 255 72)
  |> move (75,0)
  |> rotate (degrees 10)
   ]

myShapes model =
  [ player model.time
  ]   
