module AvatarCreator exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)

init : Model
init = { time = 0,
         eyeColour = green,
         skinColour = brown,
         hairFront = HairF1,
         hairBack = HairB1,
         hairColour = brown,
         highlightColour = black,
         eyeShape = Eye1,
         extra = Extra1,
         clothColour = red, 
         selected = SelectedNone
        }

type RGB = RGB Float Float Float
drawRGB (RGB r g b) = rgb r g b
type Selected = SelectedSkinColor | SelectedHairColor | SelectedHighlightColor | SelectedEyeColor | SelectedHeadCover | SelectedNone
type Msg = Tick Float GetKeyState
                | Click | ClickSkin | ClickHair
                | ClickHairColour | ClickHighlightColour
                | ClickEye | ClickExtra | ClickCol RGB
tick : InputHandler Msg
tick t msg = Tick t msg

update : Msg -> Model -> Model
update msg model = case msg of

                    Tick t _  -> { model | time = t }
                    Click     -> { model | selected = SelectedEyeColor }
                    ClickExtra -> { model | hairFront = changeCover model.hairFront}
                    ClickEye  -> {model | eyeShape = changeEyeShape model.eyeShape}
                    ClickSkin -> { model | selected = SelectedHairColor}
                    ClickHair -> { model | hairFront = changeHairFront model.hairFront
                                          ,hairBack = changeHairBack model.hairBack}
                    ClickHairColour -> {model | selected = SelectedHairColor}
                    ClickHighlightColour -> {model | selected = SelectedHairColor}
                    ClickCol clr -> case model.selected of
                        SelectedNone   -> model
                        SelectedEyeColor -> { model | eyeColour = clr }
                        SelectedHeadCover   -> { model | clothColour = clr}
                        SelectedHairColor   -> { model | hairColour = clr }
                        SelectedHighlightColor   -> { model | highlightColour = clr }
                        SelectedSkinColor   ->  { model | skinColour = clr }

type Affect = Sad Float
            | Happy Float
            | Angry Float
            | Frustrated Float
            | Vibrant Float
            | Hopeful Float

theFace : Affect -> Model -> Shape Msg
theFace affect model =
    let
        mouth = case affect of
            Sad x ->
                curve (-50,-20) [Pull (0,(x-10)/3) (50, -20)]
            Happy x ->
                curve (-50,-30) [Pull (0,(-190-x*2)/2) (50, -30)]
            Hopeful x ->
                curve (-50,-20) [Pull (0,(-x-100)/2) (50, -20)]
            Vibrant x ->
                curve (-50,-5) [Pull (0,(-(x+60)/2)+5) (50, -5)]
            Frustrated x ->
                curve (-50,-20) [Pull (0,(x+20)/2) (50, -20)]
            Angry x ->
                curve (-50,-20) [Pull (0,(x + 20)/1.5) (50, -20)]
    in
      group [
              --THIS IS THE WHOLE FACE
                    --The portion of the hair that shows behind the head
                    (case model.hairFront of
                      Turban -> group []
                      TurbanWithBeard  -> group []
                      Hijab -> group []
                      _ -> myHairBack model.hairBack model)
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

                 ,myExtra model.extra


                 --This is the curve for the mouth
                 ,mouth
                      |> outlined (solid 3) red
                      |> move (0,-60) -- modified y value from -40 to -60
                      |> scale 0.4

                --The portion of the hair that shows infront of the face
                ,(myHairFront model.hairFront model)
                        |> notifyTap ClickHair
                        |> move(0,60)

                         ] |> scale 0.4 --Scale the whole face

{-colorPalette model = [ group [
                square 9 |> filled red |> move(-60,40) |> notifyTap (ClickCol (RGB 100 100 100))
                , square 9 |> filled red |> move(-50,40) |> notifyTap (ClickCol (RGB 150 150 150))
                , square 9 |> filled red |> move(-40,40) |> notifyTap (ClickCol (RGB 200 200 200)) ] |> move(50,50)
                ] -}

--view : Model -> List (Shape Msg)
view model = collage 100 100 (myShapes model)

myShapes model= [ theFace (Happy 0) model
      --, colorPalette model
        , group [
                square 9 |> filled red |> move(-60,40) |> notifyTap (ClickCol (RGB 100 100 100))
                , square 9 |> filled red |> move(-50,40) |> notifyTap (ClickCol (RGB 150 150 150))
                , square 9 |> filled red |> move(-40,40) |> notifyTap (ClickCol (RGB 200 200 200)) ] |> move(50,50)
      , group [ roundedRect 35 17 5 |> filled black
      , roundedRect 33 15 4 |> filled (rgb 56 173 180)
      , text "Hair Colour" |> filled black |> scale 0.5 |> move (-14,-2)
    ] |> move (-20,-55) |> scale 0.9 |> notifyTap ClickHairColour
      , group [ roundedRect 35 17 5 |> filled black
      , roundedRect 33 15 4 |> filled (rgb 56 173 180)
      , text "Highlight" |> filled black |> scale 0.5 |> move (-11,2)
      , text "Colour" |> filled black |> scale 0.5 |> move (-8,-5)
      ] |> move (20,-55) |> scale 0.9 |> notifyTap ClickHighlightColour
      , group [ roundedRect 22 17 5 |> filled black |> move (-8,0)
      , roundedRect 20 15 4 |> filled (rgb 56 173 180) |> move (-8,0)
      , text "EyeColor" |> filled black |> scale 0.5 |> move (-14,-2)
      ] |> move (60,-55) |> scale 0.9 |> notifyTap Click
      , group [ roundedRect 27 17 5 |> filled black |> move (-10,0)
      , roundedRect 25 15 4 |> filled (rgb 56 173 180) |> move (-10,0)
      , text "Head" |> filled black |> scale 0.5 |> move (-18,2)
      , text "Covering" |> filled black |> scale 0.5 |> move (-20,-5)
      ] |> move (-45,-55) |> scale 0.9 |> notifyTap ClickExtra
    ]

eyes1 model = group [ eyebrows model
                    , curve (10,18) [Pull (35,((0+60)/3)+10)(60, 18)] |> outlined  (solid 6) black |> scale 0.4 |> move (15,10) --(55,18)
                    , curve (-60,18) [Pull (-35,((0+60)/3)+10)(-10, 18)] |> outlined  (solid 6) black |> scale 0.4 |> move (-15,10)  --(-55,18)
                    ,filled black (circle 20)|> move (-27,0) --Left eye
                    ,filled white (circle 18) |> move (-27,0)
                    ,circle 15 |> filled (drawRGB model.eyeColour) |> move (-24,0)
                    ,filled black (circle 12) |> move (-21,2)
                    ,filled white (circle 6) |> move (-18,3)
                    ,filled black (circle 20)|> move (27,0) --Right eye
                    ,filled white (circle 18) |> move (27,0)
                    ,circle 15 |> filled (drawRGB model.eyeColour) |> move (30,0)
                    ,filled black (circle 12) |> move (32,2)
                    ,filled white (circle 6) |> move (35,3)
                    ] |> notifyTap Click

eyes2 model = group [   eyebrows model |> move (0,-10)
                        , rect 15 1 |> filled black |> rotate (degrees 225) |> move (10,5)
                        , rect 15 1 |> filled black |> rotate (degrees 135) |> move (-10,5)
                        ,wedge 21 0.5 |> filled black |> rotate (degrees -90) |> move(-27,1)
                        , wedge 18 0.5 |> filled white |> rotate (degrees -90)|> move(-27,0)
                        , wedge 15 0.5 |> filled (drawRGB model.eyeColour) |> rotate (degrees -90)|> move(-24,0)
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
                       , wedge 15 0.5 |> filled (drawRGB model.eyeColour) |> rotate (degrees 90) |> move(30,0)
                       , wedge 12 0.5 |> filled black |> rotate (degrees 90)|> move(31,-1)
                       , wedge 4 0.5|> filled white |> rotate (degrees 90)|> move (22,0)
                    ] |> move (0,-15) |> notifyTap Click


almond colour = group[ curve (15,-15) [Pull (-17,-13) (-15,15)] |> filled colour
                     , curve (15,-15) [Pull (15,20) (-15,15)] |> filled colour]

hollowAlmond thickness colour = group [ curve (15,-15) [Pull (-17,-13) (-15,15)] |> outlined (solid thickness) colour
                                       , curve (15,-15) [Pull (15,20) (-15,15)] |> outlined (solid thickness) colour  ]

eyes4 model = group [ almond white |> rotate (degrees 40) |> move (-28,-4) --|> rotate (degrees 20) ----modified x value (-30 to -28), y value (-5 to 4)
                     , eyebrows model |> move (0,-5)
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

ears model = group [ group [ oval 24 44 |> filled black
                   , oval 20 40 |> filled (drawRGB model.skinColour) ] |> move (-70,0) |> notifyTap ClickSkin
                   , group[ oval 24 44 |> filled black
                   , oval 20 40 |> filled (drawRGB model.skinColour) ] |> move (70,0) |> notifyTap ClickSkin
                    ]

eyebrows model = group [ curve (0,0) [Pull (20,10) (40,0)] |> filled black |> move (-47,23)
                    ,curve (0,0) [Pull (20,10) (40,0)] |> filled black |> move (7,23)
                    ,curve (4,0) [Pull (20,5) (36,0)] |> filled (drawRGB model.hairColour) |> move (-47,24)
                    ,curve (4,0) [Pull (20,5) (36,0)] |> filled (drawRGB model.hairColour) |> move (7,24)
                       ]

hipsterGlasses = group  [ roundedRect 40 33 4 |> outlined (solid 4) black |> move(-29,-10)
                             , roundedRect 40 33 4 |> outlined (solid 4) black |> move(29,-10)
                             , curve (-2,0) [Pull (6,5) (14,0)] |> outlined (solid 3) black |> move (-6,-3)
                             , curve (-2,0) [Pull (10,-5) (22,0)] |> outlined (solid 3) black |> move (-10,7)
                             , rect 15 6 |> filled black |> move(0,2)
                             , rect 6 5 |> filled black |> move (48,6)
                             , rect 6 5 |> filled black |> move (-48,6)
                             , oval 3 2 |> filled lightGrey |> move (-48.5,6)
                             , oval 3 2 |> filled lightGrey |> move (48.5,6) ] |> move (0,8)

--Basic Curly hair
hair1f model = group [ oval 63 43 |> filled black |> move(0,10) --(0,5)
              ,oval 63 43 |> filled black |> move (-35,0) --|> rotate (degrees 20) (-30,0)
              ,oval 63 43 |> filled black |> move (35,0) --|> rotate (degrees 160) --(30,0)
              ,oval 58 38 |> filled black |> move (60,-20) --|> rotate (degrees 130) --(55,15)
              ,oval 58 38 |> filled black |> move (-60,-20) --|> rotate (degrees 50) --(-55,-15)
              ,oval 60 40 |> filled (drawRGB model.hairColour) |> move(0,10) --(0,5)
              ,oval 60 40 |> filled (drawRGB model.hairColour) |> move (-35,0) --|> rotate (degrees 20) --(-30,0)
              ,oval 60 40 |> filled (drawRGB model.hairColour) |> move (35,0) -- |> rotate (degrees 160) --(30,0)
              ,oval 55 35 |> filled (drawRGB model.hairColour) |> move (60,-20) --|> rotate (degrees 130) --(55,15)
              ,oval 55 35 |> filled (drawRGB model.hairColour) |> move (-60,-20) -- |> rotate (degrees 50) --(-55,-15)
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
hair2b model = group [   --Long hair
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
          ,rect 0.8 60 |> filled (drawRGB model.highlightColour) |> move (50,-50) --(-74.5,-50)
          ,rect 0.8 60 |> filled (drawRGB model.highlightColour) |> move (-70,-55)
          ,rect 0.8 60 |> filled (drawRGB model.highlightColour) |> move (-59,-65)
          ,rect 0.8 60 |> filled (drawRGB model.highlightColour) |> move (-54,-69)
          ,rect 0.8 60 |> filled (drawRGB model.highlightColour) |> move (-42,-75) |> rotate (degrees -5)
          ,rect 0.8 60 |> filled (drawRGB model.highlightColour) |> move (-37,-79) |> rotate (degrees -5)
          ,rect 0.8 60 |> filled (drawRGB model.highlightColour) |> move (74.5,-50) 
          ,rect 0.8 60 |> filled (drawRGB model.highlightColour) |> move (70,-55)
          ,rect 0.8 60 |> filled (drawRGB model.highlightColour) |> move (59,-65)
          ,rect 0.8 60 |> filled (drawRGB model.highlightColour) |> move (54,-69)
          ,rect 0.8 60 |> filled (drawRGB model.highlightColour) |> move (42,-75) |> rotate (degrees 5)
          ,rect 0.8 60 |> filled (drawRGB model.highlightColour) |> move (37,-79) |> rotate (degrees 5)
          ]

beard model = group [ circle 19 |> filled black |> move (55,-20)
                ,circle 14 |> filled black |> move (62,-33)
                ,circle 18 |> filled black |> move (42,-10)
                ,circle 20 |> filled black |> move (30,-3)
                ,circle 18 |> filled black |> move (15,5)
                ,circle 20 |> filled black |> move (0,5)
                ,circle 19 |> filled black |> move (-55,-20)
                ,circle 14 |> filled black |> move (-62,-33)
                ,circle 18 |> filled black |> move (-42,-10)
                ,circle 20 |> filled black |> move (-30,-3)
                ,circle 18 |> filled black |> move (-15,5)
                ,circle 17 |> filled (drawRGB model.hairColour) |> move (55,-20)
                ,circle 12 |> filled (drawRGB model.hairColour) |> move (62,-33)
                ,circle 16 |> filled (drawRGB model.hairColour) |> move (42,-10)
                ,circle 18 |> filled (drawRGB model.hairColour) |> move (30,-3)
                ,circle 16 |> filled (drawRGB model.hairColour) |> move (15,5)
                ,circle 18 |> filled (drawRGB model.hairColour) |> move (0,5)
                ,circle 17 |> filled (drawRGB model.hairColour) |> move (-55,-20)
                ,circle 12 |> filled (drawRGB model.hairColour) |> move (-62,-33)
                ,circle 16 |> filled (drawRGB model.hairColour) |> move (-42,-10)
                ,circle 18 |> filled (drawRGB model.hairColour) |> move (-30,-3)
                ,circle 16 |> filled (drawRGB model.hairColour) |> move (-15,5)
                    ] |> rotate (degrees 180) |> scaleY 1.5 |> move (0,-135)

freckles = group [
            circle 1.3 |> filled brown
            ,circle 1.3 |> filled brown |> move (-4,-4)
            ,circle 1.3 |> filled brown |> move (4,-4)]

nothing = group[]

--HAIR CHAINGING FUNCTION

type HairBack = HairB1 | HairB2 

changeHairBack old = case old of
                  HairB1 -> HairB2
                  HairB2 -> HairB1

myHairBack hair = case hair of
                  HairB1 -> hair1b
                  HairB2 -> hair2b

type HairFront = HairF1 | HairF2 | Hijab | Turban | TurbanWithBeard

changeHairFront old = case old of
                  HairF1 -> HairF2
                  HairF2 -> HairF1
                  Hijab -> Hijab --(cycleCC clr)
                  Turban -> Turban --(cycleCC clr)
                  TurbanWithBeard -> TurbanWithBeard --(cycleCC clr)

myHairFront hair = case hair of
                  HairF1 -> hair1f
                  HairF2 -> hair2f
                  Hijab -> hijab
                  Turban -> turban False
                  TurbanWithBeard  -> turban True

--hijab
hijab model = group [
                       wedge 75 0.65 |> filled (drawRGB model.clothcolour) |> rotate (degrees 90) |> move (0,-15) |> scaleY 0.8
                      , curve (-50,0) [Pull (0,-87)(60,0), Pull (0,-26) (-50,0) ] |> filled (drawRGB model.clothcolour) |> rotate (degrees 90) |> move (50,-38) |>scaleY 1.5
                      , curve (-50,0) [Pull (0,-87)(60,0), Pull (0,-26) (-50,0) ] |> filled (drawRGB model.clothcolour) |> rotate (degrees 90)|> mirrorX  |> move (-50,-38) |>scaleY 1.5 
                      , curve (-56,0) [Pull (0,-60) (72,9), Pull (0,-20) (-45,19) ] |> filled (drawRGB model.clothcolour) |> rotate (degrees -30) |> move (-34,-100) |> scaleY 1  
                      , curve (-56,0) [Pull (0,-60) (72,9), Pull (0,-20) (-45,19) ] |> filled (drawRGB model.clothcolour) |> rotate (degrees -30) |> mirrorX |>  move (34,-100) |> scaleY 1
                      , curve (-56,0) [Pull (0,-60) (72,9), Pull (0,-20) (-45,19) ] |> filled (drawRGB model.clothcolour) |> mirrorX |> move (35,-140)
                      , curve (-56,0) [Pull (0,-60) (72,9), Pull (0,-20) (-45,19) ] |> filled (drawRGB model.clothcolour) |> move (-35,-140)
                      , curve (-56,0) [Pull (0,-60) (72,9), Pull (0,-20) (-45,19) ] |> filled black |> makeTransparent 0.25 |> rotate(degrees 2) |> move (-25,-122)
                      , curve (-56,0) [Pull (0,-60) (72,9), Pull (0,-20) (-45,19) ] |> filled (drawRGB model.clothcolour) |> move (-25,-120)
                      , curve (-56,0) [Pull (0,-60) (72,9), Pull (0,-20) (-45,19) ] |> filled (drawRGB model.clothcolour) |> mirrorX |> move (25,-122)
                      , curve (-27,0) [Pull (0,-25) (70,-5), Pull (0,-20) (-27,0) ] |> filled black |> makeTransparent 0.25 |> rotate (degrees 6) |> move(6,-115) 
                      , curve (-27,0) [Pull (0,-3) (72,13) ] |> filled black |> makeTransparent 0.25 |>  rotate (degrees 20)|> move (12,-155)
                       ]

--turban
turban withBeard model = group
  [ if withBeard then beard model else group []
  , wedge 90 0.65 |> filled (drawRGB model.clothcolour)
    |> rotate (degrees 90)
    |> move (0,-10)
  , polygon [(0,2),(90,0),(0,-2),(0,2)]
    |> filled (drawRGB model.clothcolour)
    |> rotate (degrees 30)
    |> move (0,-10)
  ]

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
                    Extra2 -> Extra1

myExtra c = case c of
            Extra1 -> nothing
            Extra2 -> hipsterGlasses

{-myHeadCover c = case c of
                 Hijab -> hijab
                 Turban -> turban true
                 TurbanWithBeard -> turban false
-}
changeCover hf =
  case hf of
    Hijab -> Turban 
    Turban -> TurbanWithBeard 
    TurbanWithBeard -> HairF1
    _ -> Hijab

type alias Model =
       { time : Float, hairFront : HairFront, hairBack : HairBack, eyeShape : EyeShapes, extra : Extra, selected : Selected--, eyeColour: EyeColor
        }


main = gameApp Tick { model = init, view = view, update = update, title = "MyAvatar" }
