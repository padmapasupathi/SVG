module Hands exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing(..)
import List
import String
import Dict exposing (Dict)

main = gameApp Tick { model = init, view = view, update = update, title = "Avoiding Hands" }

view model = collage 192 128 (myShapes model)

-----------------------------------------------
---- this is where code from GameSlot goes ----
---- BUT MOVE "import"s above main         ----
-----------------------------------------------

--Copy this into a 1030-1039 notebook
myface = group [ circle 20 |> filled yellow
 ,circle 5 |> filled white |> move (8,7)
 ,circle 2 |> filled black |> move (8,7)
 ,circle 5 |> filled white |> move (-8,7)
 ,circle 2 |> filled black |> move (-8,7)
 ,wedge 10 0.5 |> filled black |> rotate (degrees 270) |> move (0,-5) ] |> scale 0.5

myShapes model =
    case model.state of
      Start pos ->
        [ model.fallingShapes |> List.map drawShape |> group
        , myface |> move pos
        , rect 192 128 |> filled blank
        |> ( if model.started then
                notifyMouseMoveAt FacePos
             else
                notifyTap ClickStart
           )
        , model.score |> String.fromInt |> text |> filled black
        , if not model.started then
             showInstructions
          else
             group [ roundedRect 20 10 5 |> filled green |> addOutline (solid 1) black
             , text "Reset" |> centered |> filled black |> scale 0.25
             ] |> move (-50,50) |> notifyTap Reset
        ]

type State = Start (Float,Float)

type Msg
    = Tick Float GetKeyState
    | FacePos (Float, Float)
    | ClickStart
    | Reset

touches (x,y)(_,_,(u,v)) =
  (x - u)^2 + (y - v)^2 < 120

update msg model =
    case msg of
        Tick t _ ->
          case model.state of
            Start pos ->
              { model | time = t
              , fallingShapes = List.map (moveOne model) model.fallingShapes
              , score = if model.started && (List.any (touches pos) model.fallingShapes) then
                           model.score - 1
                        else
                           model.score
              }

        FacePos position ->
          case model.state of
            Start oldPos ->
                { model | state = Start position}

        ClickStart -> { model | started = True }
        Reset -> { model | started = False
                          , state = Start (0,0)
                          , score = 0
                          , pos = (0,0)
                          }

handShape = curve (20.136,-48.07) [Pull (36.214,-48.54) (52.292,-49.01),Pull (52.760,-40.58) (53.229,-32.15),Pull (55.570,-26.84) (57.912,-21.54),Pull (58.536,-17.17) (59.160,-12.8),Pull (59.317,-9.209) (59.473,-5.619),Pull (60.097,-2.965) (60.721,-0.312),Pull (63.531,3.4341) (66.341,7.1804),Pull (69.151,9.5219) (71.960,11.863),Pull (76.956,17.326) (81.951,22.790),Pull (82.263,24.819) (82.575,26.848),Pull (81.326,27.629) (80.078,28.409),Pull (77.892,27.004) (75.707,25.6),Pull (72.897,23.882) (70.087,22.165),Pull (61.970,17.482) (53.853,12.8),Pull (53.385,14.985) (52.917,17.170),Pull (54.009,20.136) (55.102,23.102),Pull (56.975,26.224) (58.848,29.346),Pull (59.941,33.248) (61.034,37.151),Pull (62.282,40.273) (63.531,43.395),Pull (63.531,46.517) (63.531,49.639),Pull (61.814,50.887) (60.097,52.136),Pull (58.692,51.043) (57.287,49.951),Pull (55.570,47.453) (53.853,44.956),Pull (53.229,43.239) (52.604,41.521),Pull (51.043,37.619) (49.482,33.717),Pull (47.453,30.439) (45.424,27.160),Pull (44.019,25.287) (42.614,23.414),Pull (40.741,21.697) (38.868,19.980),Pull (37.931,23.258) (36.995,26.536),Pull (36.839,31.843) (36.682,37.151),Pull (36.370,41.834) (36.058,46.517),Pull (35.278,51.512) (34.497,56.507),Pull (33.717,59.629) (32.936,62.751),Pull (31.063,63.219) (29.190,63.687),Pull (28.097,62.282) (27.004,60.878),Pull (26.536,58.848) (26.068,56.819),Pull (26.068,54.009) (26.068,51.2),Pull (26.068,48.078) (26.068,44.956),Pull (26.068,40.273) (26.068,35.590),Pull (25.912,32) (25.756,28.409),Pull (25.756,25.912) (25.756,23.414),Pull (24.975,22.009) (24.195,20.604),Pull (22.478,22.634) (20.760,24.663),Pull (19.356,27.785) (17.951,30.907),Pull (16.702,36.058) (15.453,41.209),Pull (14.204,44.331) (12.956,47.453),Pull (11.863,50.107) (10.770,52.760),Pull (8.4292,53.385) (6.0878,54.009),Pull (5.6195,51.2) (5.1512,48.390),Pull (5.3073,44.487) (5.4634,40.585),Pull (7.0243,33.248) (8.5853,25.912),Pull (10.302,18.419) (12.019,10.926),Pull (12.8,8.1170) (13.580,5.3073),Pull (13.268,2.9658) (12.956,0.6243),Pull (12.019,-1.404) (11.082,-3.434),Pull (10.302,-4.526) (9.5219,-5.619),Pull (8.4292,-7.024) (7.3365,-8.429),Pull (4.2146,-7.492) (1.0926,-6.556),Pull (-2.185,-3.746) (-5.463,-0.936),Pull (-9.209,1.4048) (-12.95,3.7463),Pull (-15.29,3.7463) (-17.63,3.7463),Pull (-19.82,2.8097) (-22.00,1.8731),Pull (-21.54,-0.312) (-21.07,-2.497),Pull (-19.82,-3.434) (-18.57,-4.370),Pull (-14.98,-6.868) (-11.39,-9.365),Pull (-7.024,-13.58) (-2.653,-17.79),Pull (1.4048,-21.22) (5.4634,-24.66),Pull (8.7414,-26.84) (12.019,-29.03),Pull (14.204,-30.59) (16.390,-32.15),Pull (18.263,-34.34) (20.136,-36.52),Pull (20.136,-38.86) (20.136,-41.20),Pull (20.136,-44.01) (20.136,-46.82),Pull (20.448,-47.45) (20.760,-48.07)]
drawShape : (List(Float,Float),Color,(Float,Float)) -> Shape Msg
drawShape (offsets,clr,(xPos,yPos)) =
  let
    drawOne : (Float, Float) -> Shape Msg
    drawOne (x,y) = handShape
                  |> filled clr
                  |> scale 0.1
                  |> move (x+xPos,y+yPos)
  in
    group(List.map drawOne offsets)

offGrid y =
  y < -100

--moveOne : (List(Float,Float),Color,(Float,Float)) -> (List(Float,Float),Color,(Float,Float))
moveOne model (offsets,clr,(xPos,yPos)) =
 if offGrid yPos
  then
    (offsets,clr,(xPos, 64 + toFloat (modBy (round model.time) 100)))
 else
    (offsets,clr,(xPos,yPos-3))

type alias Model =
    {time : Float
    , state : State
    , fallingShapes : List (List(Float,Float),Color,(Float,Float))
    , score : Int
    , pos : (Float,Float)
    , started : Bool
    }

init : Model
init =
    { time = -10.5
    , state = Start (0,0)
    ,fallingShapes = [([(0,0),(0,0),(0,0),(0,0)],orange,(0,100))
                    , ([(0,0),(30,0),(0,0),(0,0)],orange,(50,200))
                    , ([(0,0),(0,0),(25,0),(0,0)],green,(-20,300))
                    , ([(0,0),(0,0),(0,0),(0,0)],lightBlue,(-30,210))
                    , ([(0,0),(0,0),(0,0),(0,0)],darkBlue,(40,400))
                    , ([(0,0),(0,0),(0,0),(0,0)],purple,(25,150))
                    , ([(0,0),(0,0),(0,0),(0,0)],black,(-47,120))
                    , ([(0,0),(20,0),(0,0),(0,20)],purple,(-90,170))
                    , ([(-20,0),(0,0),(0,0),(0,0)],yellow,(69,380))
                    , ([(0,0),(0,0),(0,0),(0,0)],pink,(-90,200))
                     ]
    , score = 0
    , pos = (0,0)
    , started = False
    }

showInstructions = group <|
  List.indexedMap oneInstruction
     ["Corona Virus can be transferred by contact so be carful with what you "
     ,"do with your hands and keep them off your face"
     ,"Objective of the game is to avoid the infected hands"

     ]

oneInstruction idx str = str |> text |> centered |> filled black |> scale 0.5|> move (0, toFloat idx * -10 + 50)
