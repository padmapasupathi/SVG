module Info exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing(..)
import List
import String
import Dict exposing (Dict)

main = gameApp Tick { model = init, view = view, update = update, title = "COVID-19 Info" }

view model = collage 192 128 (myShapes model)

-----------------------------------------------
---- this is where code from GameSlot goes ----
---- BUT MOVE "import"s above main         ----
-----------------------------------------------
myShapes model = [ rect 80 125
                      |> filled white
                      |> addOutline (solid 1) black
                      ,
                      rect 80 23
                      |> filled white
                      |> addOutline (solid 1) black
                      |> move (0,50.8)


                      ,
                      rect 80 23
                      |> filled white
                      |> addOutline (solid 1) black
                      |> move (0,27.8)
                      ,

                      rect 80 23
                      |> filled white
                      |> addOutline (solid 1) black
                      |> move (0,4.8)
                      ,
                      rect 80 23
                      |> filled white
                      |> addOutline (solid 1) black
                      |> move (0,-18)
                      ,
                      thing model
                      |> scale 0.22
                      |> move (-23,28)
                      ,
                      clock model
                      |> scale 0.32
                      |> move (23,5)
                      ,
                      text "Scrub your hands for at least 20"
                      |> sansserif
                      |> filled blue
                      |> scale 0.2
                      |> move (-39,10)
                      ,
                      text "seconds to enure you get rid of"
                      |> sansserif
                      |> filled blue
                      |> scale 0.2
                      |> move (-39,5)
                      ,
                      text "as much bacteria as you can"
                      |> sansserif
                      |> filled blue
                      |> scale 0.2
                      |> move (-39,0)
-- --------------------------------------------------------------
                       ,
                       text "It is recommended to wash"
                       |> sansserif
                      |> filled blue
                      |> scale 0.2
                      |> move (2,30)
                       ,
                       text "your hands thrice daily"
                       |> sansserif
                      |> filled blue
                      |> scale 0.2
                      |> move (2,25),
                        coronavirus model
                        |> scale 0.15
                        |> move (-20,-19)

-- ---------------------------------------------------------
                             ,
                         text "The corona virus or the"
                         |> sansserif
                      |> filled blue
                      |> scale 0.2
                      |> move (2,-10)
                         ,
                         text "COVID-19 virus is spread "
                         |> sansserif
                      |> filled blue
                      |> scale 0.2
                      |> move (2,-13)
                         ,
                         text "through interactions with people. "
                         |> sansserif
                      |> filled blue
                      |> scale 0.2
                      |> move (2,-16)
                         ,
                         text "If you wash your hands you have  "
                         |> sansserif
                      |> filled blue
                      |> scale 0.2
                      |> move (2,-19)
                         ,
                         text "a lesser chance of getting it!"
                         |> sansserif
                      |> filled blue
                      |> scale 0.2
                      |> move (2,-22)
                      ,
                      text "Taysen, Kai & Royce"
                      |> sansserif
                      |> filled blue
                      |> scale 0.3
                      |> move (-16,-45)
                      ,
                      text "And help from mentorMB"
                      |> sansserif
                      |> filled blue
                      |> scale 0.3
                      |> move (-16,-50)
                      ,
                      text "Preventing Covid-19 by"
                      |> sansserif
                      |> filled blue
                      |> move (-55,178)
                      |> scale 0.3
                      ,
                      text "Washing your Hands"
                      |> sansserif
                      |> filled blue
                      |> move (-50,158)
                      |> scale 0.3







                      ,
                      rect 1 69.5
                      |> filled black
                      |> move (0,5)

                      ]

type Msg = Tick Float GetKeyState

update msg model = case msg of
                     Tick t _ -> { time = t }

type alias Model = { time : Float }
init : Model
init = { time = 0 }





arm model = group  [rect 15 1
                      |> filled white
                      |> move (7,0)
--                      |> rotate (sin model.time)
                   ,

                   rect 15 1
                      |> filled red
                      |> move (-7,0)
--                      |> rotate (sin model.time)
      ]


clock model= group [arm model
                  |> rotate (-0.5*model.time)
                  ,
                   rect 12 1.5
                      |> filled grey
                      |> rotate (degrees -40)
                      |> move (20, -16)
                   ,
                   rect 12 1.5
                      |> filled grey
                      |> rotate (degrees 40)
                      |> move (-20, -16)
                  ,

                  circle 20
                     |> outlined (solid 1) black
                   ,
                   wedge 10 0.625
                      |> filled black
                      |> rotate (degrees -310)
                      |> move (14, 16.5)
                   ,
                   triangle 5
                      |> filled black
                      |> rotate (degrees -72.5)
                      |> move (14.5, 16)
                   ,
                   wedge 10 0.625
                      |> filled black
                      |> rotate (degrees 130)
                      |> move (-14, 16.5)
                   ,
                   triangle 5
                      |> filled black
                      |> rotate (degrees 11)
                      |> move (-14, 16.5)

--                   ,
--                   rect 15 2
--                      |> filled red
--                      |> move (7,0)
--                      |> rotate (sin model.time)

                      ,
                      text "12"
                      |> filled black
                      |> move (-5,35)
                      |>scale 0.4

                                            ,

                      text "3"
                      |> filled black
                      |> move (41,0)
                      |>scale 0.4
                      ,
                      text "6"
                      |> filled black
                      |> move (-5,-35)
                      |>scale 0.4
                      ,
                      text "9"
                      |> filled black
                      |> move (-41,0)
                      |>scale 0.4
 ]

thing model = group [sink
                  ,
                  washingHands model
  |> rotate (degrees 62)
  |> move (70, -20)
  |> scale 0.6]


table = group
 [

 curve (-82.19,13.301) [Pull (-1.756,12.674) (78.682,12.047),Pull (77.678,-16.31) (76.674,-44.67),Pull (-3.513,-43.92) (-83.70,-43.16),Pull (-84.07,-14.93) (-84.45,13.301)] |> filled (rgb 255 228 181)
 ]

tap = group
 [
 curve (17.192,33.631) [Pull (21.474,8.2823) (20.956,-17.06),Pull (23.341,-19.95) (25.725,-22.83),Pull (28.611,-23.71) (31.498,-24.59),Pull (24.056,-9.031) (23.215,34.133),Pull (20.831,35.011) (18.447,35.890)] |> filled lightBlue

 ,
 curve (-77.17,18.321) [Pull (-77.87,20.956) (-76.17,23.592),Pull (-61.56,39.435) (-44.54,45.678),Pull (-67.28,33.272) (-60.61,29.866),Pull (-56.65,21.143) (-58.10,17.819),Pull (-57.6,9.5372) (-57.09,1.2549),Pull (-4.362,46.686) (24.972,42.917),Pull (25.6,38.149) (26.227,33.380),Pull (20.580,29.027) (14.933,31.874),Pull (16.247,37.782) (9.1607,35.890),Pull (-4.517,32.937) (-18.19,21.584),Pull (-37.77,5.2764) (-57.34,-8.031),Pull (-55.69,-12.29) (-55.84,-16.56),Pull (-66.00,-28.18) (-76.17,-15.81),Pull (-74.07,-0.125) (-76.17,15.560)] |> filled lightCharcoal
  ]

sink = group
 [

 curve (-54.83,-40.15) [Pull (-49.19,-8.952) (-5.145,-12.54),Pull (32.878,-11.67) (70.901,-10.79),Pull (71.027,-26.60) (71.152,-42.41),Pull (8.1568,-42.29) (-54.83,-42.16)] |> filled darkGray
 ,
 curve (-49.06,-41.91) [Pull (-38.63,-14.53) (-8.407,-16.56),Pull (30.117,-15.43) (68.643,-14.30),Pull (69.270,-27.85) (69.898,-41.41),Pull (11.043,-41.41) (-47.81,-41.41)] |> filled lightBlue
 ]

washingHands model = group [
    hand,
        bubble
  |> rotate (model.time)
  |> move (-30, 12)
  |> move (model.time*20, model.time*20)
  ,
  bubble
  |> rotate (model.time)
  |> move (-20, 40)
  |> move (model.time*20, model.time*20)
  ,
  bubbles
  |> rotate (sin model.time/2)
  |> move (sin model.time/2, sin model.time / 2)
  |> move (4, 0)
  ,
  bubble
  |> rotate (model.time)
  |> move (7, 15)
  |> move (model.time*20, model.time*20)
    , bubbles1
    |> rotate (sin model.time)
  |> move (-5, 30)
  ,
  bubbles2
  |> rotate (sin model.time)
  |> move (-30, 15)
  , tap
    |> rotate (degrees -62)
  |> move (-10, 40)
  |> scale 1.6
  , hand2
  |> move (-20, sin model.time*10)


  ]
bubble = group [
    circle 5
  |> filled pink
  |> makeTransparent 0.25
  |> addOutline (solid 1) (rgba 200 50 200 0.30)
  , oval 2 4
  |> filled pink
  |> rotate (degrees 30)
  |> move (2, 2)
  |> makeTransparent 0.50
  ]
bubbles = group [
    bubble
    |> makeTransparent 0.50
  , bubble
  |> move (5, 2.5)
  |> makeTransparent 0.50
  , bubble
  |> move (3, 7)
  |> makeTransparent 0.50
    , bubble
  |> move (-5, -2)
  |> makeTransparent 0.50
    , bubble
  |> move (-0.5, -7)
  |> makeTransparent 0.50
  ]

bubbles1= group [
  bubble
  |> makeTransparent 0.50
  |> move (0,0)
  ,
    bubble
  |> makeTransparent 0.50
  |> move (6,-4)
  ,
    bubble
  |> makeTransparent 0.50
  |> move (-3,2)
  ,  bubble
  |> makeTransparent 0.50
  |> move (0,-6)





  ]

bubbles2 = group [
  bubble
  |> makeTransparent 0.50
  |> move (0,0)
   , bubble
  |> makeTransparent 0.50
  |> move (-3,5)
  ,  bubble
  |> makeTransparent 0.50
  |> move (0,3)
  ,  bubble
  |> makeTransparent 0.50
  |> move (4,-6)
  ,  bubble
  |> makeTransparent 0.50
  |> move (6,6)

  ]


hand = group [ circle 20
                  |> filled (rgb 255 217 156),
               rect 10 23
                  |> filled (rgb 255 217 156)
                  |> rotate (degrees 35)
                  |> move (-23,9),
               rect 10 29
                  |> filled (rgb 255 217 156)
                  |> rotate (degrees 32)
                  |> move (-15,20),
               rect 10 29
                  |> filled (rgb 255 217 156)
                  |> rotate (degrees 23)
                  |> move (-3,26),
               rect 10 29
                  |> filled (rgb 255 217 156)
                  |> rotate (degrees 10)
                  |> move (11,23),
               rect 10 32
                  |> filled (rgb 255 217 156)
                  |> rotate (degrees -17)
                  |> move (19,9),
               rect 35 70
                  |> filled blue
                  |> rotate (degrees 26)
                  |> move (20,-38)
                  ]

hand2 = group [ circle 20
                  |> filled (rgb 219 188 138),
               rect 10 23
                  |> filled (rgb 219 188 138)
                  |> rotate (degrees 35)
                  |> move (-23,9),
               rect 10 29
                  |> filled (rgb 219 188 138)
                  |> rotate (degrees 32)
                  |> move (-15,20),
               rect 10 29
                  |> filled (rgb 219 188 138)
                  |> rotate (degrees 23)
                  |> move (-3,26),
               rect 10 29
                  |> filled (rgb 219 188 138)
                  |> rotate (degrees 10)
                  |> move (11,23),
               rect 10 32
                  |> filled (rgb 219 188 138)
                  |> rotate (degrees -17)
                  |> move (19,9),
               rect 35 70
                  |> filled darkBlue
                  |> rotate (degrees 26)
                  |> move (20,-42)
                  ]


coronaCell model = group [
                    circle 5
                    |> filled (rgb 220 20 60)
                    |> scaleY (sin(model.time*2)*1.4)
                    ,
                    circle 3
                    |> filled (rgb 260 20 60)
                    |> scaleY (sin(model.time*2)*1.4)


                    ]

coronavirus model = group [
  coronaClump model
  |> rotate (degrees 0)
  |> move (0,0)
  ,
  coronaClump model
  |> rotate (degrees 0)
  |> move (40,10)
  ,

  coronaClump model
  |> rotate (degrees 0)
  |> move (30,-10)
  ,

  coronaClump model
  |> rotate (degrees 30)
  |> move (40,30)
  ,

  coronaClump model
  |> rotate (degrees 17)
  |> move (-23,-12)
  ,

  coronaClump model
  |> rotate (degrees 129)
  |> move (-54,21)
  ,

  coronaClump model
  |> rotate (degrees 180)
  |> move (-40,-10)
  ,

  coronaClump model
  |> rotate (degrees 0)
  |> move (0,0)

 ]


coronaClump model = group [

 coronaCell model
  |> move (0,0)
  ,
 coronaCell model
  |> move (8,12)
  ,
 coronaCell model
  |> move (-58,0)
  ,
 coronaCell model
  |> move (0,39)
  ,
 coronaCell model
  |> move (19,34)
  ,
 coronaCell model
  |> move (20,12)
  ,
 coronaCell model
  |> move (-23,29)
  ,
 coronaCell model
  |> move (32,-30)
  ,
 coronaCell model
  |> move (-10,-45)
  ,
 coronaCell model
  |> move (-12, 4)


  ]
