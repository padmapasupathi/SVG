module AvatarCreator exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)

import ColourPalette exposing (drawRGB, RGB(..))

{-
-}
theFace : Model -> Shape Msg
theFace model =
    let
        mouth = curve (-50,-30) [Pull (0,(-190-5*2)/2) (50, -30)]
    in
      group [
              --THIS IS THE WHOLE FACE
                    --The portion of the hair that shows behind the head
                    (case model.hairFront of
                      Turban -> group []
                      TurbanWithBeard -> group []
                      Hijab -> group []
                      _ -> myHairBack model.hairFront model)
                        |> notifyTap ClickHair

                   ,ears model

                   --The oval that makes up the face
                   ,oval 143 156
                        |> filled black
                        |> move (0,-7)
                   ,oval 140 153
                        |> filled (drawRGB model.skinColour)
                        |> move (0,-7)
                        |> notifyTap ClickSkin

                   ,freckles |> move (-40,-30) -- modified y value from -20 to -30
                   ,freckles |> move (40,-30) -- modified y value from -20 to -30


                   ,myEyeShape model.eyeShape model

{- This is where other accessories go that can be accessed by
   removing the uncommenting the code.
-}

                   --,blush |> move (-40,-20)
                   --,blush |> move (40,-20)
                   --,hipsterGlasses |> move (0,10)
                 ,myExtra model.extra


                 --This is the curve for the mouth
                 ,mouth
                      |> outlined (solid 3) red
                      |> move (0,-60) -- modified y value from -40 to -60
                      |> scale 0.4

                 {-} ,lefteyebrows
                      |> outlined  (solid 6) black
                      |> move (30,20) --(55,18)
                      |> scale 0.4
                  ,righteyebrows
                      |> outlined  (solid 6) black
                      |> move (-30,20) --(-55,18)
                      |> scale 0.4 -}

                --The portion of the hair that shows infront of the face
                ,(myHairFront model.hairFront model)
                        |> notifyTap ClickHair
                        |> move(0,60)

                         ] |> scale 0.4 --Scale the whole face


view : Model -> List (Shape Msg)
view model =
    [ theFace model
    , case model.selected of
        SelectNone ->
           group [ group [   roundedRect 35 17 5 |> filled black
                            , roundedRect 33 15 4 |> filled (rgb 56 173 180)
                            , text "Hair Colour"
                                |> filled black
                                |> scale 0.5
                                |> move (-14,-2)
                          ] |> move (-20,-55)
                            |> scale 0.9
                            |> notifyTap ClickHairColour

                ,group [   roundedRect 35 17 5 |> filled black
                            , roundedRect 33 15 4 |> filled (rgb 56 173 180)
                            , text "Highlight"
                                |> filled black
                                |> scale 0.5
                                |> move (-11,2)
                             , text "Colour"
                                |> filled black
                                |> scale 0.5
                                |> move (-8,-5)
                          ] |> move (20,-55)
                            |> scale 0.9
                            |> notifyTap ClickHighlightColour

                  ,group [   roundedRect 22 17 5 |> filled black
                                  |> move (-8,0)
                            , roundedRect 20 15 4 |> filled (rgb 56 173 180)
                                  |> move (-8,0)
                            , text "Eyes"
                                |> filled black
                                |> scale 0.5
                                |> move (-14,-2)
                          ] |> move (60,-55)
                            |> scale 0.9
                            |> notifyTap ClickEye

                ,group [roundedRect 27 17 5 |> filled black
                                  |> move (-10,0)
                            , roundedRect 25 15 4 |> filled (rgb 56 173 180)
                                  |> move (-10,0)
                            , text "Head"
                                |> filled black
                                |> scale 0.5
                                |> move (-18,2)
                             , text "Covering"
                                |> filled black
                                |> scale 0.5
                                |> move (-20,-5)
                          ] |> move (-45,-55)
                            |> scale 0.9
                            |> notifyTap ClickCoverButton
             ]
        somethingSelected ->
          group
            [ rect 1000 1000 |> filled (rgba 0 0 0 0.01) |> notifyTap ClickColourSelected
            , ColourPalette.palette ClickColour
                                |> scale 0.30
                                |> move (70,-10)
            ]

                   ,group [ text "Tap on the face"
                                  |> filled black
                                  |> move (-5,0)
                          , text "to change skin"
                                  |> filled black
                                  |> move (-3,-10)
                          , text "colour"
                                  |> filled black
                                  |> move (10,-22)
                          , curve (0,-10) [Pull (0,-40) (40,-40)]
                                  |> outlined (solid 1) black
                                  |> move (20,-20)
                          , rect 1 10
                                  |> filled black
                                  |> rotate (degrees 35)
                                  |> move (62,-55.5)
                          , rect 1 10
                                  |> filled black
                                  |> rotate (degrees -35)
                                  |> move (62,-64.5)

                          ] |>  scale 0.5 |> move (-91,10)

                    ,group [ text "Tap on the eyes"
                                  |> filled black
                          , text "to change eye colour"
                                  |> filled black
                                  |> move (-10,-10)
                          , curve (0,0) [Pull (0,-40) (40,-40)]
                                  |> outlined (solid 1) black
                                  |> move (-40,-20) -- Modified
                                  |> mirrorX
                          , rect 1 10
                                  |> filled black
                                  |> rotate (degrees 35)
                                  |> move (0,-65)
                          , rect 1 10
                                  |> filled black
                                  |> rotate (degrees -35)
                                  |> move (0,-56)

                          ] |>  scale 0.5 |> move (50,35)

                  , group [ text "Tap on the hair"
                                  |> filled black
                          , text "to change hairstyles"
                                  |> filled black
                                  |> move (-10,-10)
                          ,group[
                           curve (0,0) [Pull (0,-40) (40,-40)]
                                  |> outlined (solid 1) black
                                  |> move (20,-20)
                          , rect 1 10
                                  |> filled black
                                  |> rotate (degrees 35)
                                  |> move (62,-55.5)
                          , rect 1 10
                                  |> filled black
                                  |> rotate (degrees -35)
                                  |> move (62,-64.5) ] |>  scale 0.8
                                              |> move (20,0)

                            ] |> scale 0.5
                              |> move (-90,50)

                   ]

eyes1 model = group [     eyebrows model
                          , curve (10,18) [Pull (35,((0+60)/3)+10)(60, 18)] |> outlined  (solid 6) black |> scale 0.4 |> move (15,10) --(55,18)
                          , curve (-60,18) [Pull (-35,((0+60)/3)+10)(-10, 18)] |> outlined  (solid 6) black |> scale 0.4 |> move (-15,10)  --(-55,18)
                          ,filled black (circle 20)|> move (-27,0) --Left eye
                          ,filled white (circle 18) |> move (-27,0)
                          ,circle 15
                              |> filled (drawRGB model.eyeColour)
                              |> move (-24,0)
                          ,filled black (circle 12) |> move (-21,2)
                          ,filled white (circle 6) |> move (-18,3)
                          ,filled black (circle 20)|> move (27,0) --Right eye
                          ,filled white (circle 18) |> move (27,0)
                          ,circle 15
                              |> filled (drawRGB model.eyeColour)
                              |> move (30,0)
                          ,filled black (circle 12) |> move (32,2)
                          ,filled white (circle 6) |> move (35,3)
                        ] |> notifyTap Click

eyes2 model = group [   eyebrows model
                                |> move (0,-10)
                        --, curve (10,18) [Pull (35,((0+60)/3)+10)(60, 18)] |> outlined  (solid 6) black |> scale 0.4 |> move (10,-5)--(55,18)
                        --, curve (-60,18) [Pull (-35,((0+60)/3)+10)(-10, 18)] |> outlined  (solid 6) black |> scale 0.4 |> move (-10,-5) --(-55,18)
                        , rect 15 1 |> filled black |> rotate (degrees 225) |> move (10,5)
                        , rect 15 1 |> filled black |> rotate (degrees 135) |> move (-10,5)
                        ,wedge 21 0.5 |> filled black |> rotate (degrees -90) |> move(-27,1)
                        , wedge 18 0.5 |> filled white |> rotate (degrees -90)|> move(-27,0)
                        , wedge 15 0.5 |> filled (drawRGB model.eyeColour)
                                      |> rotate (degrees -90)|> move(-24,0)
                        , wedge 12 0.5 |> filled black |> rotate (degrees -90)|> move(-22,0)
                        , wedge 4 0.5|> filled white |> rotate (degrees -90)|> move (-28,0)

                        , wedge 21 0.5 |> filled black |> rotate (degrees -90) |> move(27,1)
                        , wedge 18 0.5 |> filled white |> rotate (degrees -90)|> move(27,0)
                        , wedge 15 0.5 |> filled (drawRGB model.eyeColour) |> rotate (degrees -90)|> move(30,0)
                        , wedge 12 0.5 |> filled black |> rotate (degrees -90)|> move(31,0)
                        , wedge 4 0.5|> filled white |> rotate (degrees -90)|> move (25,0)
                        ] |> notifyTap Click

eyes3 model = group [ wedge 21 0.5 |> filled black |> rotate (degrees 90) |> move(-27,-1)
                        ,eyebrows model
                       , curve (10,18) [Pull (35,((0+60)/3)+10)(60, 18)] |> outlined  (solid 6) black |> scale 0.4 |> move (15,10)--(55,18)
                       , curve (-60,18) [Pull (-35,((0+60)/3)+10)(-10, 18)] |> outlined  (solid 6) black |> scale 0.4 |> move (-15,10) --(-55,18)

                       , wedge 18 0.5 |> filled white |> rotate (degrees 90)|> move(-27,0)
                       , wedge 15 0.5 |> filled (drawRGB model.eyeColour) |> rotate (degrees 90)|> move(-24,0)
                       , wedge 12 0.5 |> filled black |> rotate (degrees 90)|> move(-22,-1)
                       , wedge 4 0.5  |> filled white |> rotate (degrees 90)|> move (-31,0)

                       , wedge 21 0.5 |> filled black |> rotate (degrees 90) |> move(27,-1)
                       , wedge 18 0.5 |> filled white |> rotate (degrees 90)|> move(27,0)
                       , wedge 15 0.5 |> filled (drawRGB model.eyeColour)
                                      |> rotate (degrees 90)
                                      |> move(30,0)
                       , wedge 12 0.5 |> filled black |> rotate (degrees 90)|> move(31,-1)
                       , wedge 4 0.5|> filled white |> rotate (degrees 90)|> move (22,0)
                       ] |> move (0,-15) |> notifyTap Click


almond colour = group[ curve (15,-15) [Pull (-17,-13) (-15,15)] |> filled colour
                     , curve (15,-15) [Pull (15,20) (-15,15)] |> filled colour]

hollowAlmond thickness colour = group[ curve (15,-15) [Pull (-17,-13) (-15,15)] |> outlined (solid thickness) colour
                     , curve (15,-15) [Pull (15,20) (-15,15)] |> outlined (solid thickness) colour]

eyes4 model = group [ almond white |> rotate (degrees 40) |> move (-28,-4) --|> rotate (degrees 20) ----modified x value (-30 to -28), y value (-5 to 4)
                     , eyebrows model
                            |> move (0,-5)
                     , curve (10,18) [Pull (35,((0+60)/3)+10)(60, 18)] |> outlined  (solid 6) black |> scale 0.4 |> move (23,0)--(55,18)
                     , curve (-60,18) [Pull (-35,((0+60)/3)+10)(-10, 18)] |> outlined  (solid 6) black |> scale 0.4 |> move (-18,0) --(-55,18)

                     , almond white |> rotate (degrees 40) |> move (-33,-4) |> scaleX(-1) --|> rotate (degrees -15) |> move (-33,3) --modified x  value (30 to -33) and y value (-5 to 3), degrees from (-20 to -15)
                     , circle 11 |> filled (drawRGB model.eyeColour) |> move (-29,-3)
                     , circle 11 |> filled  (drawRGB model.eyeColour) |> move (34,-3)
                     , circle 8 |> filled black |> move (-28,-3)
                     , circle 8 |> filled black |> move (35,-3)
                     , circle 2 |> filled white |> move (38,0)
                     , circle 2 |> filled white |> move (-25,0)
                     , hollowAlmond 1.85 black |> rotate (degrees 40) |> move(-28,-4)-- |> rotate (degrees 20) --modified x value (-30 to -28), y value (-5 to 5)
                     , hollowAlmond 1.85 black |> rotate (degrees 40)|> move(-33,-4) |> scaleX(-1) --|> rotate (degrees -19)  --modified x value (30 to -32) and y value (-5 to 5), degrees (-20 to -19)
                      ] |> notifyTap Click

ears model = group [
                   group[
                       oval 24 44 |> filled black
                      ,oval 20 40 |> filled (drawRGB model.skinColour)
                         ] |> move (-70,0)
                           |> notifyTap ClickSkin
                   ,group[
                       oval 24 44 |> filled black
                      ,oval 20 40 |> filled (drawRGB model.skinColour)
                         ] |> move (70,0)
                           |> notifyTap ClickSkin

                    ]

eyebrows model = group [
                    curve (0,0) [Pull (20,10) (40,0)]
                                |> filled black
                                |> move (-47,23)
                    ,curve (0,0) [Pull (20,10) (40,0)]
                                |> filled black
                                |> move (7,23)

                    ,curve (4,0) [Pull (20,5) (36,0)]
                                |> filled (drawRGB model.hairColour)
                                |> move (-47,24)
                    ,curve (4,0) [Pull (20,5) (36,0)]
                                |> filled (drawRGB model.hairColour)
                                |> move (7,24)
                          ]


--blush = group [circle 15 |> filled (rgba 255 158 158 0.2)]

hipsterGlasses = group[ roundedRect 40 33 4 |> outlined (solid 4) black |> move(-29,-10)
                             , roundedRect 40 33 4 |> outlined (solid 4) black |> move(29,-10)
                             , curve (-2,0) [Pull (6,5) (14,0)] |> outlined (solid 3) black |> move (-6,-3)
                             , curve (-2,0) [Pull (10,-5) (22,0)] |> outlined (solid 3) black |> move (-10,7)
                             , rect 15 6 |> filled black |> move(0,2)
                             , rect 6 5 |> filled black |> move (48,6)
                             , rect 6 5 |> filled black |> move (-48,6)
                             , oval 3 2 |> filled lightGrey |> move (-48.5,6)
                             , oval 3 2 |> filled lightGrey |> move (48.5,6)]
                                    |> move (0,8)
--Basic Curly hair
hair1f model = group [

             oval 63 43 |> filled black |> move(0,10) --(0,5)
              ,oval 63 43 |> filled black
                      |> move (-35,0) --|> rotate (degrees 20) (-30,0)
              ,oval 63 43 |> filled black
              |> move (35,0) --|> rotate (degrees 160) --(30,0)
              ,oval 58 38 |> filled black
              |> move (60,-20) --|> rotate (degrees 130) --(55,15)
              ,oval 58 38 |> filled black
              |> move (-60,-20) --|> rotate (degrees 50) --(-55,-15)


              ,oval 60 40 |> filled (drawRGB model.hairColour) |> move(0,10) --(0,5)
              ,oval 60 40 |> filled (drawRGB model.hairColour)
                  |> move (-35,0) --|> rotate (degrees 20) --(-30,0)
              ,oval 60 40 |> filled (drawRGB model.hairColour)
              |> move (35,0) -- |> rotate (degrees 160) --(30,0)
              ,oval 55 35 |> filled (drawRGB model.hairColour)
              |> move (60,-20) --|> rotate (degrees 130) --(55,15)
              ,oval 55 35 |> filled (drawRGB model.hairColour)
              |> move (-60,-20) -- |> rotate (degrees 50) --(-55,-15)
              ]


hair1b model = group []

--Dreadlocks
hair2f model= group [
              oval 17 27 |> filled black|> move (-70,-35) --|> rotate (degrees 60)
              ,oval 17 27 |> filled black |> move (70,-35) --|> rotate (degrees -60)

              ,oval 12 22 |> filled (drawRGB model.hairColour)|> move (-70,-35) --|> rotate (degrees 60)
              ,oval 12 22 |> filled (drawRGB model.hairColour) |> move (70,-35) --|> rotate (degrees -60)

              ,oval 20 30 |> filled black |> move (65,-25) --|> rotate (degrees -60)
              ,oval 15 25 |> filled (drawRGB model.hairColour) |> move (65,-25) --|> rotate (degrees -60)

              ,oval 20 30 |> filled black |> move (-65,-25) --|> rotate (degrees 60)
              ,oval 15 25 |> filled (drawRGB model.hairColour) |> move (-65,-25) --|> rotate (degrees 60)

              ,oval 20 35 |> filled black |> move (-55,-15) --|> rotate (degrees 50)
              ,oval 15 30 |> filled (drawRGB model.hairColour) |> move (-55,-15)  --|> rotate (degrees 50)


              ,oval 20 35 |> filled black |> move (-45,-5)-- |> rotate (degrees 40)
              ,oval 15 30 |> filled (drawRGB model.hairColour) |> move (-45,-5) --|> rotate (degrees 40)

              ,oval 20 35 |> filled black |> move (55,-15) --|> rotate (degrees 130)
              ,oval 15 30 |> filled (drawRGB model.hairColour) |> move (55,-15)-- |> rotate (degrees 130)

              ,oval 20 35 |> filled black |> move (45,-5)-- |> rotate (degrees -40)
              ,oval 15 30 |> filled (drawRGB model.hairColour) |> move (45,-5)-- |> rotate (degrees -40)

              ,oval 20 40 |> filled black |> move (30,0) --|> rotate (degrees 160)
              ,oval 15 35 |> filled (drawRGB model.hairColour) |> move (30,0)-- |> rotate (degrees 160)

              ,oval 20 40 |> filled black |> move (-30,0)-- |> rotate (degrees 20)
              ,oval 15 35 |> filled (drawRGB model.hairColour) |> move (-30,0)-- |> rotate (degrees 20)

              ,oval 20 40 |> filled black |> move(-15,5) --|> rotate (degrees 15)
              ,oval 15 35 |> filled (drawRGB model.hairColour) |> move(-15,5)-- |> rotate (degrees 15)

             ,oval 20 40 |> filled black |> move(15,5)-- |> rotate (degrees -15)
             ,oval 15 35 |> filled (drawRGB model.hairColour) |> move(15,5)-- |> rotate (degrees -15)
             ,oval 23 43 |> filled black |> move(0,7)
             ,oval 18 38 |> filled (drawRGB model.hairColour) |> move(0,7)
                ]


hair2b model = group[--Long hair
          roundedRect 18 75 10 |> filled black |> move (-70,-50)
          ,roundedRect 13 70 10 |> filled (drawRGB model.hairColour) |> move (-70,-50)

          ,roundedRect 18 75 10 |> filled black |> move (-55,-65)
          ,roundedRect 13 70 10 |> filled (drawRGB model.hairColour) |> move (-55,-65)

          ,roundedRect 18 75 10 |> filled black |> move (70,-50)
          ,roundedRect 13 70 10 |> filled (drawRGB model.hairColour) |> move (70,-50)

          ,roundedRect 18 75 10 |> filled black |> move (55,-65)
          ,roundedRect 13 70 10 |> filled (drawRGB model.hairColour) |> move (55,-65)

          ,roundedRect 18 75 10 |> filled black |> move (-38,-75) |> rotate (degrees -5)
          ,roundedRect 13 70 10 |> filled (drawRGB model.hairColour) |> move (-38,-75) |> rotate (degrees -5)

          ,roundedRect 18 75 10 |> filled black |> move (38,-75) |> rotate (degrees 5)
          ,roundedRect 13 70 10 |> filled (drawRGB model.hairColour) |> move (38,-75) |> rotate (degrees 5)


            --HIGHLIGHTS

          ,rect 0.8 60
                |> filled (drawRGB model.highlightColour)
                |> move (50,-50) --(-74.5,-50)
          ,rect 0.8 60
                |> filled (drawRGB model.highlightColour)
                |> move (-70,-55)
          ,rect 0.8 60
                |> filled (drawRGB model.highlightColour)
                |> move (-59,-65)
          ,rect 0.8 60
                |> filled (drawRGB model.highlightColour)
                |> move (-54,-69)
          ,rect 0.8 60
                |> filled (drawRGB model.highlightColour)
                |> move (-42,-75)
                |> rotate (degrees -5)
          ,rect 0.8 60
                |> filled (drawRGB model.highlightColour)
                |> move (-37,-79)
                |> rotate (degrees -5)

          ,rect 0.8 60
                |> filled (drawRGB model.highlightColour)
                |> move (74.5,-50)
          ,rect 0.8 60
                |> filled (drawRGB model.highlightColour)
                |> move (70,-55)
          ,rect 0.8 60
                |> filled (drawRGB model.highlightColour)
                |> move (59,-65)
          ,rect 0.8 60
                |> filled (drawRGB model.highlightColour)
                |> move (54,-69)
          ,rect 0.8 60
                |> filled (drawRGB model.highlightColour)
                |> move (42,-75)
                |> rotate (degrees 5)
          ,rect 0.8 60
                |> filled (drawRGB model.highlightColour)
                |> move (37,-79)
                |> rotate (degrees 5)
          ]

--Long hair with bangs
hair3f model = group [
                    bangs model
                    |> scale 1.2
                    |> move (70,50) --(11,10)(70,50)
                   ,bangs model
                    |> scale 1.2
                    |> move (68,50) --(-12,10)(68,50)
                    |> mirrorX

                   ,circle 5
                    |> filled (drawRGB model.hairColour)
                    |> move(0,23.2)

                     --highlights
                   ,curve (0,0) [Pull (50,10) (40,50)]
                    |> outlined (solid 0.8) (drawRGB model.highlightColour)
                    |> move (-44,-37) --modified from(-75,-65)
                    |> scale 1.6
                    ,curve (0,0) [Pull (40,10) (40,50)]
                    |> outlined (solid 0.8) (drawRGB model.highlightColour)
                    |> move (-53,-36) --modified from(-72,-55)
                    |> scale 1.3

                    ,curve (0,0) [Pull (50,10) (40,50)]
                    |> outlined (solid 0.8) (drawRGB model.highlightColour)
                    |> move (-45,-37) --modified from(75,-65)
                    |> scale 1.6
                    |> mirrorX
                    ,curve (0,0) [Pull (40,10) (40,50)]
                    |> outlined (solid 0.8) (drawRGB model.highlightColour)
                    |> move  (-54,-36) --modified from(72,-55)
                    |> scale 1.3
                    |> mirrorX
               ]

hair3b model = group [

               roundedRect 148 143 30
                    |> filled black
                    |> move (0,-50)

               ,roundedRect 145 140 30
                    |> filled (drawRGB model.hairColour)
                    |> move (0,-50)
                , rect 1 140
                    |> filled (drawRGB model.highlightColour)
                    |> move (-60,-30)
                , rect 1 150
                    |> filled (drawRGB model.highlightColour)
                    |> move (-50,-40)
                , rect 1 150
                    |> filled (drawRGB model.highlightColour)
                    |> move (-30,-40)
                , rect 1 140
                    |> filled (drawRGB model.highlightColour)
                    |> move (60,-30)
                , rect 1 150
                    |> filled (drawRGB model.highlightColour)
                    |> move (50,-40)
                , rect 1 150
                    |> filled (drawRGB model.highlightColour)
                    |> move (30,-40)
                , rect 33 153
                    |> filled black
                    |> move (0,-45)

                , rect 30 150
                    |> filled white
                    |> move (0,-50)


               ]

bangs model = group [
                curve (0,0) [Pull (10,50) (40,50)]
                    |> filled black
                    |> move (-73,-63) --(-78,-68)
                    |> scale 1.7
                ,curve (0,0) [Pull (50,10) (40,50)]
                    |> filled black
                    |> move(-73,-63) --(-78,-68)
                    |> scale 1.7

                ,curve (0,0) [Pull (10,50) (40,50)]
                    |> filled (drawRGB model.hairColour)
                    |> move (-75,-64.5)
                    |> scale 1.6
                ,curve (0,0) [Pull (50,10) (40,50)]
                    |> filled (drawRGB model.hairColour)
                    |> move (-76,-64.5)
                    |> scale 1.6
                    ]

--Long curly hair
hair4f model = group [
                oval 60 95
                      |> filled black
                      |> rotate (degrees -65)
                      |> move (-20,-15)
                ,oval 20 30
                      |> filled black
                      |> rotate (degrees 60)
                      |> move (27,0)
                ,oval 60 95
                      |> filled (drawRGB model.hairColour)
                      |> rotate (degrees -65)
                      |> move (-20,-13)
                ,oval 20 30
                      |> filled (drawRGB model.hairColour)
                      |> rotate (degrees 60)
                      |> move (27,2)

                --HIGHLIGHTS
                ,curve (14,-10) [Pull (-10,-50) (-54,-38)]
                      |> outlined (solid 1) (drawRGB model.highlightColour)
                ,curve (14,-10) [Pull (-10,-50) (-54,-38)]
                      |> outlined (solid 1) (drawRGB model.highlightColour)
                      |> scale 0.8
                      |> move (-10,0)

                  ]

hair4b model = group [
            -- top of the head
            oval 154 74
                |> filled black
                |> move (0,55)
            ,oval 54 74
                |> filled black
                |> move (55,40)
              |> rotate (degrees -40)
            ,oval 54 74
                |> filled black
                |> move (-55,40)
               |> rotate (degrees 40)
            ,oval 74 184
                |> filled black
              |> rotate (degrees 5)
                |> move (40,-15)
            ,oval 44 74
                |> filled black
                |> move (80,10)
               |> rotate (degrees 5)
            ,oval 74 184
                |> filled black
               |> rotate (degrees -5)
                |> move (-40,-15)
            ,oval 44 74
                |> filled black
                |> move (-80,10)
                |> rotate (degrees -5)
            ,oval 74 184
                |> filled black
                |> rotate (degrees -25)
                |> move (-50,0)
            --long
           ,oval 74 184
                |> filled black
                |> rotate (degrees 25)
                |> move (50,0)
           ,oval 150 70
                |> filled (drawRGB model.hairColour)
                |> move (0,55)
           ,oval 70 180
                |> filled (drawRGB model.hairColour)
                |> rotate (degrees 25)
                |> move (50,0)
            --long
            ,oval 70 180
                |> filled (drawRGB model.hairColour)
                |> rotate (degrees 5)
                |> move (40,-15)
            --long
            ,oval 40 70
                |> filled (drawRGB model.hairColour)
                |> move (-80,10)
                |> rotate (degrees -5)
           ,oval 70 180
                |> filled (drawRGB model.hairColour)
                |> rotate (degrees -25)
                |> move (-50,0)
            --long
            ,oval 70 180
                |> filled (drawRGB model.hairColour)
                |> rotate (degrees -5)
                |> move (-40,-15)
            --side head
            ,oval 50 70
                |> filled (drawRGB model.hairColour)
                |> move (55,40)
                |> rotate (degrees -40)
            --side head
            ,oval 50 70
                |> filled (drawRGB model.hairColour)
                |> move (-55,40)
                |> rotate (degrees 40)
            ,oval 40 70
                |> filled (drawRGB model.hairColour)
                |> move (80,10)
                |> rotate (degrees 5)

            --HIGHLIGHTS
            ,curve (0,0) [Pull (-10,-20) (0,-40)]
                  |> outlined (solid 1) (drawRGB model.highlightColour)
                  |> move (-90,32)
            ,curve (0,0) [Pull (-10,-20) (0,-40)]
                  |> outlined (solid 1) (drawRGB model.highlightColour)
                  |> move (-90,32) --modified from (90,32)
                  |> mirrorX
            ,curve (-2,0) [Pull (-10,-55) (20,-45)]
                  |> outlined (solid 1) (drawRGB model.highlightColour)
                  |> move (-90,-30)
            ,curve (-2,0) [Pull (-10,-55) (20,-45)]
                  |> outlined (solid 1) (drawRGB model.highlightColour)
                  |> move (-90,-30) --modified from (90,-30)
                  |> mirrorX

                ]
--Two buns
hair5f model = group [

                      curve (0,5) [Pull (-20,-50) (0,-105)]
                      |> filled black
                      |> move (-68,-28)
                      |> rotate (degrees 5)

                     ,curve (0,5) [Pull (-20,-50) (0,-105)]
                      |> filled black
                      |> move (68,-28)
                      |> rotate (degrees -5)
                      |> mirrorX

                      , oval 105 45
                      |> filled black
                      |> rotate (degrees 35)
                      |> move (-30,-20)

                      , oval 105 45
                      |> filled black
                      |> rotate (degrees -35)
                      |> move (30,-20)





                      ,curve (0,0) [Pull (-15,-50) (0,-100)]
                      |> filled (drawRGB model.hairColour)
                      |> move (-69,-28)
                      |> rotate (degrees 5)
                      ,curve (0,0) [Pull (-15,-50) (0,-100)]
                      |> filled (drawRGB model.hairColour)
                      |> move (69,-28)
                      |> rotate (degrees -5)
                      |>mirrorX






                      , oval 102 42
                      |> filled (drawRGB model.hairColour)
                      |> rotate (degrees 35)
                      |> move (-30,-20)

                      , oval 102 42
                      |> filled (drawRGB model.hairColour)
                      |> rotate (degrees -35)
                      |> move (30,-20)
                    ]

hair5b model = group [
                  circle 32 |> filled black |> move (-55,60)
                  ,circle 30 |> filled (drawRGB model.hairColour)  |> move (-55,60)
                  ,circle 32 |> filled black |> move (55,60)
                  ,circle 30 |> filled (drawRGB model.hairColour)  |> move (55,60)
                     ]
--Short side part
hair6f model = group [ oval 42 102
                            |> filled black
                            |> rotate (degrees -55)
                            |> move (-20,-10)


                       ,group [curve (0,0) [Pull (10,-10) (-20,-30)]
                                   |> filled black
                               ,curve (0,0) [Pull (-30,-35) (-20,-30)]
                                    |> filled black
                              ] |> move (26,13)
                                |> rotate (degrees 13)
                                |> scale 1.3


                        ,group [curve (0,0) [Pull (10,-10) (-20,-30)]
                                   |> filled (drawRGB model.hairColour)
                                ,curve (0,0) [Pull (-30,-35) (-20,-30)]
                                    |> filled (drawRGB model.hairColour)
                              ] |> move (26,10)
                                |> rotate (degrees 13)

                        ,oval 40 100
                            |> filled (drawRGB model.hairColour)
                            |> rotate (degrees -55)
                            |> move (-20,-8)

                        ,oval 10 10
                              |> filled (drawRGB model.hairColour)
                              |> move (28.5,9.5)
                       ,oval 5 11
                              |> filled (drawRGB model.hairColour)
                              |> move (23,13.5)


                         ]

hair6b model = group [oval 73 123
                            |> filled black
                            |> rotate (degrees -55)
                            |> move (-25,50)
                      ,oval 53 83
                            |> filled black
                            |> rotate (degrees 40)
                            |> move (50,45)


                      ,oval 70 120
                            |> filled (drawRGB model.hairColour)
                            |> rotate (degrees -55)
                            |> move (-25,50)
                      ,oval 50 80
                            |> filled (drawRGB model.hairColour)
                            |> rotate (degrees 40)
                            |> move (50,45)


                            ]

--Short bob
hair7f model = group [ oval 60 122
                      |> filled black
                      |> rotate (degrees -65)
                      |> move (-20,-15)
                ,oval 20 30
                      |> filled black
                      |> rotate (degrees 60)
                      |> move (35,0)
                ,oval 60 120
                      |> filled (drawRGB model.hairColour)
                      |> rotate (degrees -65)
                      |> move (-20,-13)
                ,oval 20 30
                      |> filled (drawRGB model.hairColour)
                      |> rotate (degrees 60)
                      |> move (35,2)

                      ] |> scale 0.8
hair7b model = group [
                      oval 73 123
                            |> filled (black)
                            |> rotate (degrees -55)
                            |> move (-25,50)
                      ,oval 73 123
                            |> filled black
                            |> rotate (degrees 55)
                            |> move (25,50)
                      ,oval 73 123
                            |> filled black
                            |> move (-50,0)
                      ,oval 73 123
                            |> filled black
                            |> move (50,0)


                      ,oval 70 120
                            |> filled (drawRGB model.hairColour)
                            |> rotate (degrees -55)
                            |> move (-25,50)
                      ,oval 70 120
                            |> filled (drawRGB model.hairColour)
                            |> rotate (degrees 55)
                            |> move (25,50)
                      ,oval 70 120
                            |> filled (drawRGB model.hairColour)
                            |> move (-50,0)
                      ,oval 70 120
                            |> filled (drawRGB model.hairColour)
                            |> move (50,0)

                      ]
--Close army cut
hair8f model = group [
                      oval 100 30 |> filled black |> move (0,-2)
                      ,oval 100 30 |> filled (drawRGB model.hairColour)
                      , circle 5
                            |> filled (drawRGB model.hairColour)
                            |> move (-46,-2)
                      , circle 5
                            |> filled (drawRGB model.hairColour)
                            |> move (46,-2)

                      --HIGHLIGHTS
                      ,curve (-15,0) [Pull (-30,-10) (-45,-40)]
                            |> outlined (solid 1) (drawRGB model.highlightColour)
                            |> move (-25,5) --(-25,5)
                      ,curve (-15,0) [Pull (-30,-10) (-45,-40)]
                            |> outlined (solid 1) (drawRGB model.highlightColour)
                            |> move (-30,5) --(-30,5)
                            |> mirrorX



                      ]
hair8b model = group [oval 73 123
                            |> filled (black)
                            |> rotate (degrees -55)
                            |> move (-25,50)
                      ,oval 73 123
                            |> filled black
                            |> rotate (degrees 55)
                            |> move (25,50)



                      ,oval 70 120
                            |> filled (drawRGB model.hairColour)
                            |> rotate (degrees -55)
                            |> move (-25,50)
                      ,oval 70 120
                            |> filled (drawRGB model.hairColour)
                            |> rotate (degrees 55)
                            |> move (25,50)

                        --HIGHLIGHTS
                      ,curve (0,0) [Pull (-30,-10) (-45,-50)]
                            |> outlined (solid 1) (drawRGB model.highlightColour)
                            |> move (-30,80)

                      ,curve (0,0) [Pull (-30,-10) (-45,-50)]
                            |> outlined (solid 1) (drawRGB model.highlightColour)
                            |> move (30,80)
                            |> mirrorX

                      ]
--Tall hair
hair9f model = group [oval 130 40 |> filled black |> move (0,-8)
                      ,oval 130 40
                            |> filled (drawRGB model.hairColour)
                            |> move (0,-6)


                      , circle 7
                            |> filled (drawRGB model.hairColour)
                            |> move (-60,-12)
                      , circle 7
                            |> filled (drawRGB model.hairColour)
                            |> move (60,-12)
                      ]
hair9b model = group [ oval 153 103 |> filled black
                            |> move (0,40)

                      ,oval 150 100 |> filled (drawRGB model.hairColour)
                            |> move (0,40)



                          ]
--Pony tail
hair10f model = group [oval 120 40
                            |> filled black
                            |> move (0,-7.5)
                      ,oval 120 40
                            |> filled (drawRGB model.hairColour)
                            |> move (0,-6)
                      , circle 5
                            |> filled (drawRGB model.hairColour)
                            |> move (-58,-12)
                      , circle 5
                            |> filled (drawRGB model.hairColour)
                            |> move (58,-12)
                      ,rect 1.4 69 |> filled black
                                |> move (-70,-123)

                      ,curve (0,1) [Pull (-10,15) (-31,10)]
                            |> outlined (solid 1) black
                            |> move (-15,32)

                          --HIGHLIGHTS
                      ,curve (-15,0) [Pull (-30,-10) (-45,-40)]
                            |> outlined (solid 1) (drawRGB model.highlightColour)
                            |> move (-25,5)
                      ,curve (-15,0) [Pull (-30,-10) (-45,-40)]
                            |> outlined (solid 1) (drawRGB model.highlightColour)
                            |> move (-25,5) --(25,5)
                            |> mirrorX


                            ]
hair10b model = group [

                      oval 113 153
                            |> filled black
                            |> move (-35,35)
                            |> rotate (degrees -10)

                      ,curve (0,0) [Pull (-40,-10) (0,-120) ]
                            |> filled black
                            |> move (-70,35)
                            |> scale 1.1



                      ,oval 110 150
                            |> filled (drawRGB model.hairColour)
                            |> move (-35,35)
                            |> rotate (degrees -10)

                      ,curve (0,0) [Pull (-40,-10) (0,-120) ]
                            |> filled (drawRGB model.hairColour)
                            |> move (-70,30)


                      ,oval 73 123
                            |> filled (black)
                            |> rotate (degrees -55)
                            |> move (-25,50)
                      ,oval 73 123
                            |> filled black
                            |> rotate (degrees 55)
                            |> move (25,50)



                      ,oval 70 120
                            |> filled (drawRGB model.hairColour)
                            |> rotate (degrees -55)
                            |> move (-25,50)
                      ,oval 70 120
                            |> filled (drawRGB model.hairColour)
                            |> rotate (degrees 55)
                            |> move (25,50)

                        --HIGHLIGHTS
                      ,curve (0,0) [Pull (-30,-10) (-45,-50)]
                            |> outlined (solid 1) (drawRGB model.highlightColour)
                            |> move (-30,80)

                      ,curve (0,0) [Pull (-30,-10) (-45,-50)]
                            |> outlined (solid 1) (drawRGB model.highlightColour)
                            |> move (30,80)
                            |> mirrorX

                      ]
--Mid length
hair11f model = group [
                oval 55 95
                      |> filled black
                      |> rotate (degrees -45)
                      |> move (-30,-15)
                ,oval 45 90
                      |> filled black
                      |> rotate (degrees 50)
                      |> move (27,-8)
                ,oval 55 95
                      |> filled (drawRGB model.hairColour)
                      |> rotate (degrees -45)
                      |> move (-30,-13)
                ,oval 45 90
                      |> filled (drawRGB model.hairColour)
                      |> rotate (degrees 50)
                      |> move (26,-6)

                  ]

hair11b model = group [
           oval 58 25
               |> filled black
               |> move (0,80)

           ,oval 74 184
                |> filled black
                |> rotate (degrees 25)
                |> move (50,5)

           ,oval 74 184
                |> filled black
                |> rotate (degrees 5)
                |> move (40,-10)

           ,oval 74 184
                |> filled black
                |> rotate (degrees -25)
                |> move (-50,5)

           ,oval 74 184
                |> filled black
                |> rotate (degrees -5)
                |> move (-40,-10)

           ,oval 58 25
               |> filled (drawRGB model.hairColour)
               |> move (0,78)

           ,oval 70 180
                |> filled (drawRGB model.hairColour)
                |> rotate (degrees 25)
                |> move (50,5)
            ,oval 70 180
                |> filled (drawRGB model.hairColour)
                |> rotate (degrees 5)
                |> move (40,-10)


           ,oval 70 180
                |> filled (drawRGB model.hairColour)
                |> rotate (degrees -25)
                |> move (-50,5)
            ,oval 70 180
                |> filled (drawRGB model.hairColour)
                |> rotate (degrees -5)
                |> move (-40,-10)


                ]
--Side tufts
hair12f model = group [circle 19
                      |> filled black
                      |> move (55,-20)
                ,circle 14
                      |> filled black
                      |> move (62,-33)
                ,circle 14
                      |> filled black
                      |> move (42,-10)

                ,circle 19
                      |> filled black
                      |> move (-55,-20)
                ,circle 14
                      |> filled black
                      |> move (-62,-33)
                ,circle 14
                      |> filled black
                      |> move (-42,-10)



                ,circle 17
                      |> filled (drawRGB model.hairColour)
                      |> move (55,-20)
                ,circle 12
                      |> filled (drawRGB model.hairColour)
                      |> move (62,-33)
                ,circle 12
                      |> filled (drawRGB model.hairColour)
                      |> move (42,-10)

                ,circle 17
                      |> filled (drawRGB model.hairColour)
                      |> move (-55,-20)
                ,circle 12
                      |> filled (drawRGB model.hairColour)
                      |> move (-62,-33)
                ,circle 12
                      |> filled (drawRGB model.hairColour)
                      |> move (-42,-10)

                ]

hair12b model = group []

--One bun
hair13f model = group [ circle 19
                      |> filled black
                      |> move (55,-20)
                ,circle 14
                      |> filled black
                      |> move (62,-33)
                ,circle 18
                      |> filled black
                      |> move (42,-10)
                ,circle 20
                      |> filled black
                      |> move (30,-3)
                ,circle 18
                      |> filled black
                      |> move (15,5)
                ,circle 20
                      |> filled black
                      |> move (0,5)


                ,circle 19
                      |> filled black
                      |> move (-55,-20)
                ,circle 14
                      |> filled black
                      |> move (-62,-33)
                ,circle 18
                      |> filled black
                      |> move (-42,-10)
                ,circle 20
                      |> filled black
                      |> move (-30,-3)
                ,circle 18
                      |> filled black
                      |> move (-15,5)






                ,circle 17
                      |> filled (drawRGB model.hairColour)
                      |> move (55,-20)
                ,circle 12
                      |> filled (drawRGB model.hairColour)
                      |> move (62,-33)
                ,circle 16
                      |> filled (drawRGB model.hairColour)
                      |> move (42,-10)
                ,circle 18
                      |> filled (drawRGB model.hairColour)
                      |> move (30,-3)
                ,circle 16
                      |> filled (drawRGB model.hairColour)
                      |> move (15,5)
                ,circle 18
                      |> filled (drawRGB model.hairColour)
                      |> move (0,5)


                ,circle 17
                      |> filled (drawRGB model.hairColour)
                      |> move (-55,-20)
                ,circle 12
                      |> filled (drawRGB model.hairColour)
                      |> move (-62,-33)
                ,circle 16
                      |> filled (drawRGB model.hairColour)
                      |> move (-42,-10)
                ,circle 18
                      |> filled (drawRGB model.hairColour)
                      |> move (-30,-3)
                ,circle 16
                      |> filled (drawRGB model.hairColour)
                      |> move (-15,5)

                    ]

hair13b model = group [   circle 32 |> filled black |> move (0,80)
                  ,circle 30 |> filled (drawRGB model.hairColour) |> move (0,80)]


beard model = group [ circle 19
                      |> filled black
                      |> move (55,-20)
                ,circle 14
                      |> filled black
                      |> move (62,-33)
                ,circle 18
                      |> filled black
                      |> move (42,-10)
                ,circle 20
                      |> filled black
                      |> move (30,-3)
                ,circle 18
                      |> filled black
                      |> move (15,5)
                ,circle 20
                      |> filled black
                      |> move (0,5)


                ,circle 19
                      |> filled black
                      |> move (-55,-20)
                ,circle 14
                      |> filled black
                      |> move (-62,-33)
                ,circle 18
                      |> filled black
                      |> move (-42,-10)
                ,circle 20
                      |> filled black
                      |> move (-30,-3)
                ,circle 18
                      |> filled black
                      |> move (-15,5)






                ,circle 17
                      |> filled (drawRGB model.hairColour)
                      |> move (55,-20)
                ,circle 12
                      |> filled (drawRGB model.hairColour)
                      |> move (62,-33)
                ,circle 16
                      |> filled (drawRGB model.hairColour)
                      |> move (42,-10)
                ,circle 18
                      |> filled (drawRGB model.hairColour)
                      |> move (30,-3)
                ,circle 16
                      |> filled (drawRGB model.hairColour)
                      |> move (15,5)
                ,circle 18
                      |> filled (drawRGB model.hairColour)
                      |> move (0,5)


                ,circle 17
                      |> filled (drawRGB model.hairColour)
                      |> move (-55,-20)
                ,circle 12
                      |> filled (drawRGB model.hairColour)
                      |> move (-62,-33)
                ,circle 16
                      |> filled (drawRGB model.hairColour)
                      |> move (-42,-10)
                ,circle 18
                      |> filled (drawRGB model.hairColour)
                      |> move (-30,-3)
                ,circle 16
                      |> filled (drawRGB model.hairColour)
                      |> move (-15,5)

                    ] |> rotate (degrees 180)
                    |> scaleY 1.5
                     |> move (0,-135)


freckles =
  let
    brown1 = rgb 61 27 0 -- FIXME should we let them choose?
  in
      group [
            circle 1.3 |> filled brown1
            ,circle 1.3 |> filled brown1 |> move (-4,-4)
            ,circle 1.3 |> filled brown1 |> move (4,-4)]

nothing = group[]



myHairBack hair = case hair of
                  HairF1 -> hair1b
                  HairF2 -> hair2b
                  HairF3 -> hair3b
                  HairF4 -> hair4b
                  HairF5 -> hair5b
                  HairF6 -> hair6b
                  HairF7 -> hair7b
                  HairF8 -> hair8b
                  HairF9 -> hair9b
                  HairF10 -> hair10b
                  HairF11 -> hair11b
                  HairF12 -> hair12b
                  HairF13 -> hair13b
                  _ -> ( \ _ -> group [] )

type HairFront = HairF1 | HairF2 | HairF3 | HairF4 | HairF5
                  | HairF6 | HairF7 | HairF8 | HairF9 | HairF10
                  | HairF11 | HairF12 | HairF13
                  | Hijab
                  | Turban
                  | TurbanWithBeard

changeCover hf =
  case hf of
    Hijab -> Turban
    Turban -> TurbanWithBeard
    TurbanWithBeard -> HairF1
    _ -> Hijab

changeHairFront old = case old of
                  HairF1 -> HairF2
                  HairF2 -> HairF3
                  HairF3 -> HairF4
                  HairF4 -> HairF5
                  HairF5 -> HairF6
                  HairF6 -> HairF7
                  HairF7 -> HairF8
                  HairF8 -> HairF9
                  HairF9 -> HairF10
                  HairF10 -> HairF11
                  HairF11 -> HairF12
                  HairF12 -> HairF13
                  HairF13 -> HairF1
                  Hijab -> Hijab
                  Turban -> Turban
                  TurbanWithBeard -> TurbanWithBeard



myHairFront hair = case hair of
                  HairF1 -> hair1f
                  HairF2 -> hair2f
                  HairF3 -> hair3f
                  HairF4 -> hair4f
                  HairF5 -> hair5f
                  HairF6 -> hair6f
                  HairF7 -> hair7f
                  HairF8 -> hair8f
                  HairF9 -> hair9f
                  HairF10 -> hair10f
                  HairF11 -> hair11f
                  HairF12 -> hair12f
                  HairF13 -> hair13f
                  Hijab -> hijab
                  Turban -> turban False
                  TurbanWithBeard -> turban True

--hijab
hijab model = group [
                       wedge 75 0.65 |> filled (drawRGB model.headcoverColour) |> rotate (degrees 90) |> move (0,-15) |> scaleY 0.8
                      , curve (-50,0) [Pull (0,-87)(60,0), Pull (0,-26) (-50,0) ] |> filled (drawRGB model.headcoverColour) |> rotate (degrees 90) |> move (50,-38) |>scaleY 1.5
                      , curve (-50,0) [Pull (0,-87)(60,0), Pull (0,-26) (-50,0) ] |> filled (drawRGB model.headcoverColour) |> rotate (degrees 90)|> mirrorX  |> move (-50,-38) |>scaleY 1.5
                      , curve (-56,0) [Pull (0,-60) (72,9), Pull (0,-20) (-45,19) ] |> filled (drawRGB model.headcoverColour) |> rotate (degrees -30) |> move (-34,-100) |> scaleY 1
                      , curve (-56,0) [Pull (0,-60) (72,9), Pull (0,-20) (-45,19) ] |> filled (drawRGB model.headcoverColour) |> rotate (degrees -30) |> mirrorX |>  move (34,-100) |> scaleY 1
                      , curve (-56,0) [Pull (0,-60) (72,9), Pull (0,-20) (-45,19) ] |> filled (drawRGB model.headcoverColour) |> mirrorX |> move (35,-140)
                      , curve (-56,0) [Pull (0,-60) (72,9), Pull (0,-20) (-45,19) ] |> filled (drawRGB model.headcoverColour) |> move (-35,-140)
                      , curve (-56,0) [Pull (0,-60) (72,9), Pull (0,-20) (-45,19) ] |> filled black |> makeTransparent 0.25 |> rotate(degrees 2) |> move (-25,-122)
                      , curve (-56,0) [Pull (0,-60) (72,9), Pull (0,-20) (-45,19) ] |> filled (drawRGB model.headcoverColour) |> move (-25,-120)
                      , curve (-56,0) [Pull (0,-60) (72,9), Pull (0,-20) (-45,19) ] |> filled (drawRGB model.headcoverColour) |> mirrorX |> move (25,-122)
                      , curve (-27,0) [Pull (0,-25) (70,-5), Pull (0,-20) (-27,0) ] |> filled black |> makeTransparent 0.25 |> rotate (degrees 6) |> move(6,-115)
                      , curve (-27,0) [Pull (0,-3) (72,13) ] |> filled black |> makeTransparent 0.25 |>  rotate (degrees 20)|> move (12,-155)
                       ]

--turban
turban withBeard model = group
  [ if withBeard then beard model else group []
  , wedge 90 0.65 |> filled (drawRGB model.headcoverColour)
    |> rotate (degrees 90)
    |> move (0,-10)
  , polygon [(0,2),(90,0),(0,-2),(0,2)]
    |> filled black |> makeTransparent 0.25
    |> rotate (degrees 30)
    |> move (0,-10)
  ]

--ClickEye  -> {model | eyeShape = changeEyeShape model.eyeShape}

type EyeShapes = Eye1 | Eye2 | Eye3 | Eye4

changeEyeShape old = case old of
                        Eye1 -> Eye2
                        Eye2 -> Eye3
                        Eye3 -> Eye4
                        Eye4 -> Eye1

myEyeShape c model = case c of
                Eye1 -> eyes1 model
                Eye2 -> eyes2 model
                Eye3 -> eyes3 model
                Eye4 -> eyes4 model

type Extra = Extra1 | Extra2 | Extra3

changeExtra old = case old of
                    Extra1 -> Extra2
                    Extra2 -> Extra3
                    Extra3 -> Extra1

myExtra c = case c of
            Extra1 -> nothing
            Extra2 -> nothing
            Extra3 -> hipsterGlasses

tick : InputHandler Msg
tick t msg = Tick t msg

type Msg = Tick Float GetKeyState
                | Click | ClickSkin | ClickHair
                | ClickHairColour | ClickHighlightColour
                | ClickEye | ClickCoverButton
                | ClickColour RGB
                | ClickColourSelected

update : Msg -> Model -> Model
update msg model = case msg of

                    Tick t _  -> { model | time = t }

                    Click     -> model -- { model | eyeColour = change model.eyeColour}

                    ClickCoverButton -> { model | hairFront = changeCover model.hairFront}

                    ClickEye  -> {model | eyeShape = changeEyeShape model.eyeShape}

                    ClickSkin -> model -- { model | skinColour = changeSkin model.skinColour}

                    ClickHair -> { model | hairFront = changeHairFront model.hairFront }

                    ClickHairColour -> { model | selected = SelectHair }

                    ClickHighlightColour -> model -- { model | highlightColour = changeHighlightColour model.highlightColour}

                    ClickColour clr -> case model.selected of
                        SelectNone ->
                            model  -- this is impossible

                        SelectEye ->
                            { model | eyeColour = clr }

                        SelectHair ->
                          { model | hairColour = clr }

                        SelectHighlight ->
                          { model | highlightColour = clr }

                        SelectSkin ->
                          { model | skinColour = clr }

                        SelectHeadcover ->
                          { model | headcoverColour = clr }

                    ClickColourSelected -> { model | selected = SelectNone }

type Selection
  = SelectNone
  | SelectEye
  | SelectHair
  | SelectHighlight
  | SelectSkin
  | SelectHeadcover

type alias Model =
       { time : Float,
         eyeColour : RGB,
         skinColour : RGB,
         headcoverColour : RGB,
         hairFront : HairFront,
         hairColour : RGB,
         highlightColour : RGB,
         eyeShape : EyeShapes,
         extra : Extra,
         selected : Selection
        }

init : Model
init = { time = 0,
         eyeColour = RGB 153 153 0,
         skinColour = RGB 51 102 0,
         headcoverColour = RGB 204 255 204,
         hairFront = HairF4,
         hairColour = RGB 25 0 51,
         highlightColour = RGB 102 0 204,
         eyeShape = Eye1,
         extra = Extra1,
         selected = SelectNone
        }
