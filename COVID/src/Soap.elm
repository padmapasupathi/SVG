module Soap exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing(..)
import List
import String
import Dict exposing (Dict)

main = gameApp Tick { model = init, view = view, update = update, title = "Soapy" }

view model = collage 192 128 (myShapes model)

-----------------------------------------------
---- this is where code from GameSlot goes ----
---- BUT MOVE "import"s above main         ----
-----------------------------------------------

type alias Model = { time : Float
        , posL : (Float,Float)
        , posL2 : (Float,Float)
        , posL3 : (Float,Float)
        , posL4 : (Float,Float)
        , posL5 : (Float,Float)
        , posL6 : (Float,Float)
        , posL7 : (Float,Float)
        , posL8 : (Float,Float)
        , posL9 : (Float,Float)
        , posL10 : (Float,Float)
        , posR : (Float,Float)
        , posb1 : (Float,Float)
        , posb2 : (Float,Float)
        , posb3 : (Float,Float)
        , posb4 : (Float,Float)
        , posb5 : (Float,Float)
        , posb6 : (Float,Float)
        , c1 : GraphicSVG.Color
        , c2 : GraphicSVG.Color
        , c3 : GraphicSVG.Color
        , c4 : GraphicSVG.Color
        , c5 : GraphicSVG.Color
        , c6 : GraphicSVG.Color
        , c7 : GraphicSVG.Color
        , c8 : GraphicSVG.Color
        , c9 : GraphicSVG.Color
        , c10 : GraphicSVG.Color
        , cb1 : GraphicSVG.Color
        , cb2 : GraphicSVG.Color
        , cb3 : GraphicSVG.Color
        , cb4 : GraphicSVG.Color
        , cb5 : GraphicSVG.Color
        , cb6 : GraphicSVG.Color
        , state1 : Float
        , state2 : Float
        , state3 : Float
        , state4 : Float
        , state5 : Float
        , state6 : Float
        , state7 : Float
        , state8 : Float
        , state9 : Float
        , state10 : Float
        , bstate1 : Float
        , bstate2 : Float
        , bstate3 : Float
        , bstate4 : Float
        , bstate5 : Float
        , bstate6 : Float
        , v1:Int,v2:Int,v3:Int,v4:Int,v5:Int,v6:Int,v7:Int,v8:Int,v9:Int,v10:Int,b1:Int,b2:Int,b3:Int,b4:Int,b5:Int,b6:Int
        ,score:Int
        }

init = { time = 0
        , posL = (-70,0)
        , posL2=(-70,-50)
        , posL3=(-50,30)
        , posL4=(-30,-50)
        , posL5=(-10,0)
        , posL6 = (15,20)
        , posL7=(30,-40)
        , posL8=(66,30)
        , posL9=(30,50)
        , posL10=(60,0)
        , posR = (0,-20)
        , posb1=(-50, -40)
        , posb2=(-35, -9)
        , posb3=(46, 20)
        , posb4=(60, -29)
        , posb5=(-79, 38)
        , posb6=(-2, 50)
        , c1=(rgb 56 181 74)
        , c2=(rgb 56 181 74)
        , c3=(rgb 56 181 74)
        , c4=(rgb 56 181 74)
        , c5=(rgb 56 181 74)
        , c6=(rgb 56 181 74)
        , c7=(rgb 56 181 74)
        , c8=(rgb 56 181 74)
        , c9=(rgb 56 181 74)
        , c10=(rgb 56 181 74)
        , cb1=lightGreen
        , cb2=lightGreen
        , cb3=lightGreen
        , cb4=lightGreen
        , cb5=lightGreen
        , cb6=lightGreen
        , state1=1
        , state2=1
        , state3=1
        , state4=1
        , state5=1
        , state6=1
        , state7=1
        , state8=1
        , state9=1
        , state10=1
        , bstate1=1
        , bstate2=1
        , bstate3=1
        , bstate4=1
        , bstate5=1
        , bstate6=1
        , v1=0,v2=0,v3=0,v4=0,v5=0,v6=0,v7=0,v8=0,v9=0,v10=0,b1=0,b2=0,b3=0,b4=0,b5=0,b6=0
        ,score=0
        }

myShapes model = [  square 300 |> filled (rgb 40 55 148) |> makeTransparent 0.1
                 ,  bacteria model.time model.bstate1 20 model.posb1 model.cb1
                 ,  bacteria model.time model.bstate2 25 model.posb2 model.cb2
                 ,  bacteria model.time model.bstate3 0 model.posb3 model.cb3
                 ,  bacteria model.time model.bstate4 20 model.posb4 model.cb4
                 ,  bacteria model.time model.bstate5 90 model.posb5 model.cb5
                 ,  bacteria model.time model.bstate6 17 model.posb6 model.cb6
                   , rect 200 20
                     |> filled red
                     |> move (0,-62)
                   , text "WIPE DOWN THE CORONA VIRUS!"
                     |> filled white
                     |> scale 0.7
                  |> move (-70,-62)
                 , drawPaddle model.c1 model.state1 model.posL model
                 , drawPaddle model.c2 model.state2 model.posL2 model
                 , drawPaddle model.c3 model.state3 model.posL3 model
                 , drawPaddle model.c4 model.state4 model.posL4 model
                 , drawPaddle model.c5 model.state5 model.posL5 model
                 , drawPaddle model.c6 model.state6 model.posL6 model
                 , drawPaddle model.c7 model.state7 model.posL7 model
                 , drawPaddle model.c8 model.state8 model.posL8 model
                 , drawPaddle model.c9 model.state9 model.posL9 model
                 , drawPaddle model.c10 model.state10 model.posL10 model
                 , drawVirus (rgb 0 0 255) model.posR
                 , text "Score:"|>filled red |>move (47,-50)
                 , text (String.fromInt model.score) |> filled red |>move (80,-50)
                 , resetButton |> notifyTap Reset
                ]
bacteria t state rotation (xPos,yPos) clr = group
    [ roundedRect 10 5 2.5
        |> filled clr
        |> makeTransparent 0.6
    ,  curve (-5,0) [ Pull (-7.5,4 * sin (3 * t)) (-10,0)
                    , Pull (-12.5,-4 * sin (3 * t)) (-15,0) ]
        |> outlined (solid 0.5) (rgb 124 150 0)
    ] |> scale 1.5 |>rotate rotation |>move (xPos,yPos)|>makeTransparent state
type Msg = Tick Float GetKeyState | Reset

resetButton = group [ roundedRect 20 10 5 |> filled green |> addOutline (solid 1) black
                                , text "Reset" |> centered |> filled black |> scale 0.25
                                ] |> move (-50,50) |> notifyTap Reset

drawPaddle clr state (xPos,yPos) model =
  group [  circle 30
               |> filled clr
               |> makeTransparent 0.5
           , triangle 7.5
               |> filled red
               |> rotate (degrees 180)
               |> move(33,0)
               |> makeTransparent 0.5
          ,  triangle 7.5
              |> filled red
              |> rotate (degrees 150)
              |> move(1,33)
              |> makeTransparent 0.5

          ,  triangle 7.5
              |> filled red
              |> move(-33,0)
              |> makeTransparent 0.5

          ,  triangle 7.5
              |> filled red
              |> rotate (degrees 210)
              |> move(0,-33)
              |> makeTransparent 0.5
            ,   ngon 6 10
              |> filled blue
              |> makeTransparent 0.5
              |> scale 2
              ,circle 24
          |> filled darkBrown   |> makeTransparent 0.5
             ] |>scale 0.1
               |> makeTransparent state
          |> move (xPos, yPos)

drawVirus clr (xPos,yPos) =
  group [
           rect 10 15
               |> filled yellow
               |> scale 2
               |> scaleX 2
               |> scaleY 2
          , circle 20
               |> filled darkYellow
               |> scale 0.5
               |> scaleX 0.5
               |> scaleY 0.6
               |> move (-10, 0)
               |> makeTransparent 0.35
          , circle 20
               |> filled darkYellow
               |> move (30, -100)
               |> scale 0.4
               |> scaleX 0.5
               |> scaleY 0.4
               |> makeTransparent 0.35
          , circle 20
               |> filled darkYellow
               |> move (40, 100)
               |> scale 0.4
               |> scaleX 0.5
               |> scaleY 0.4
               |> makeTransparent 0.35
          , circle 20
               |> filled darkYellow
               |> move (-70, 120)
               |> scale 0.4
               |> scaleX 0.4
               |> scaleY 0.5
               |> makeTransparent 0.25
         , circle 20
               |> filled darkYellow
               |> move (80, -10)
               |> scale 0.4
               |> scaleX 0.4
               |> scaleY 0.5
               |> makeTransparent 0.25
         , circle 20
               |> filled darkYellow
               |> move (-70, -90)
               |> scale 0.4
               |> scaleX 0.4
               |> scaleY 0.5
               |> makeTransparent 0.2
         , text "Soapy Sponge" |>filled black |>rotate(degrees -65) |> move (-15,30)|>scale 0.9
      ]|>scale 0.4


    |> move (xPos,yPos)



-- the update function records the time (in case we want animations)
update msg model =
   case msg of
     Tick t (_,deltaR,deltaL) ->
       let
         newModel =
           if tooClose model.posL model.posR then
               { model | c1 = red, state1=0.1, v1=2,time = t
                     , posR = jump deltaR model.posR
                     }
           else if tooClose model.posL2 model.posR then
               { model | c2 = red, state2=0.1, v2=2,time = t
                     , posR = jump deltaR model.posR }
           else if tooClose model.posL3 model.posR then
               { model | c3 = red, state3=0.1,v3=2, time = t
                     , posR = jump deltaR model.posR }
           else if tooClose model.posL4 model.posR then
               { model | c4 = red, state4=0.1,v4=2, time = t
                     , posR = jump deltaR model.posR }
           else if tooClose model.posL5 model.posR then
               { model | c5 = red, state5=0.1,v5=2, time = t
                     , posR = jump deltaR model.posR }
           else if tooClose model.posL6 model.posR then
               { model | c6 = red, state6=0.1,v6=2, time = t
                     , posR = jump deltaR model.posR }
           else if tooClose model.posL7 model.posR then
               { model | c7 = red, state7=0.1,v7=2, time = t
                     , posR = jump deltaR model.posR }
           else if tooClose model.posL8 model.posR then
               { model | c8 = red, state8=0.1,v8=2, time = t
                     , posR = jump deltaR model.posR }
           else if tooClose model.posL9 model.posR then
               { model | c9 = red, state9=0.1,v9=2, time = t
                     , posR = jump deltaR model.posR }
           else if tooClose model.posL10 model.posR then
               { model | c10 = red, state10=0.1,v10=2, time = t
                     , posR = jump deltaR model.posR }
           else if tooClose model.posb1 model.posR then
               { model | bstate1 =0.1, cb1=red,b1=1, time=t
                     , posR=jump deltaR model.posR}
           else if tooClose model.posb2 model.posR then
               { model | bstate2 =0.1,cb2=red,b2=1,  time=t
                     , posR=jump deltaR model.posR}
           else if tooClose model.posb3 model.posR then
               { model | bstate3 =0.1,cb3=red,b3=1,  time=t
                     , posR=jump deltaR model.posR}
           else if tooClose model.posb4 model.posR then
               { model | bstate4 =0.1,cb4=red,b4=1,  time=t
                     , posR=jump deltaR model.posR}
           else if tooClose model.posb5 model.posR then
               { model | bstate5 =0.1,cb5=red,b5=1,  time=t
                     , posR=jump deltaR model.posR}
           else if tooClose model.posb6 model.posR then
               { model | bstate6 =0.1, cb6=red,b6=1, time=t
                     , posR=jump deltaR model.posR}
           else
                     { model | time = t
                     , posR = jump deltaR model.posR }

         changePos (xPos, yPos) distance speed =
           (xPos, distance * 0.35 * sin(speed * model.time) + yPos)
       in
         { newModel | posL = changePos newModel.posL 1 1
         , posL2 = changePos newModel.posL2 1 1
         , posL3 = changePos newModel.posL3 1 2
         , posL4 = changePos newModel.posL4 1 3
         , posL5 = changePos newModel.posL5 1 4
         , posL6 = changePos newModel.posL6 1 3.4
         , posL7 = changePos newModel.posL7 1 2.2
         , posL8 = changePos newModel.posL8 1 0.76
         , posL9 = changePos newModel.posL9 1 0.42
         , posL10= changePos newModel.posL10 1 2.2
         ,score=model.v1+model.v2+model.v3+model.v4+model.v5+model.v6+model.v7+model.v8+model.v9+model.v10+model.b1+model.b2+model.b3+model.b4+model.b5+model.b6
         }
     Reset -> {model | time = 0
                 , posL = (-70,0)
                 , posL2=(-70,-50)
                 , posL3=(-50,30)
                 , posL4=(-30,-50)
                 , posL5=(-10,0)
                 , posL6 = (15,20)
                 , posL7=(30,-40)
                 , posL8=(66,30)
                 , posL9=(30,50)
                 , posL10=(60,0)
                 , posR = (0,-20)
                 , posb1=(-50, -40)
                 , posb2=(-35, -9)
                 , posb3=(46, 20)
                 , posb4=(60, -29)
                 , posb5=(-79, 38)
                 , posb6=(-2, 50)
                 , c1=(rgb 56 181 74)
                 , c2=(rgb 56 181 74)
                 , c3=(rgb 56 181 74)
                 , c4=(rgb 56 181 74)
                 , c5=(rgb 56 181 74)
                 , c6=(rgb 56 181 74)
                 , c7=(rgb 56 181 74)
                 , c8=(rgb 56 181 74)
                 , c9=(rgb 56 181 74)
                 , c10=(rgb 56 181 74)
                 , cb1=lightGreen
                 , cb2=lightGreen
                 , cb3=lightGreen
                 , cb4=lightGreen
                 , cb5=lightGreen
                 , cb6=lightGreen
                 , state1=1
                 , state2=1
                 , state3=1
                 , state4=1
                 , state5=1
                 , state6=1
                 , state7=1
                 , state8=1
                 , state9=1
                 , state10=1
                 , bstate1=1
                 , bstate2=1
                 , bstate3=1
                 , bstate4=1
                 , bstate5=1
                 , bstate6=1
                 , v1=0,v2=0,v3=0,v4=0,v5=0,v6=0,v7=0,v8=0,v9=0,v10=0,b1=0,b2=0,b3=0,b4=0,b5=0,b6=0
                 ,score=0
                 }

tooClose (x,y) (u,v) = (x - u)^2 + (y - v)^2 < 60

jump (dx,dy) (px,py) = (dx + px,  dy + py)
