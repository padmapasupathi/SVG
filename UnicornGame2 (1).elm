module Main exposing (main)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (GetKeyState,gameApp)

init = { time = 0 , myTractor = (50,0) , selected = SelectNone , pos = Unload , item = Pumpkin , items = "Pumpkin" , board = 4
         , shp = 0 , x = 0 , clouds = clouds1 , score = 0 , bgPumpkin = bgPumpkin1 , bgDog = bgDog1 , bgHouse = bgHouse1
         , remain = 6, startTime = 0 }

navSpeed : Float
navSpeed = 5

type Selection
  = SelectNone
  | SelectPumpkin

type alias Model =
       { time : Float,
       selected : Selection,
       pos : Position,
       item : Veg,
       items : String,
       board : Int,
       shp : Int,
       score : Int,
       bgHouse : ( Int , Int )
       }

type Msg = Tick Float GetKeyState | ClickLoad | ClickPumpkin | ClickBoard | ClickItem | ClickWagon

type Position = Load | Unload

type Veg = Pumpkin | None

update msg model =
    case msg of
        Tick t (_,(nx,ny),_) ->
                       let
                         (oldPosX,oldPosY) = model.myTractor
                         newPosX = if oldPosX+navSpeed*nx > 50 then --if you do nx + int, cart will reverse automatically
                                          50
                                       else if oldPosX+navSpeed*nx < -200 then
                                          -200
                                       else oldPosX + navSpeed*nx
                       in
                         { model | time = t
                         , myTractor = (newPosX,oldPosY)
                         --, bgHouse = (nPos1X,oldPos1Y)
                         , pos = if newPosX < oldPosX then
                                     Unload
                                 else if newPosX > oldPosX then
                                     Load
                                 else model.pos
                         , x = model.x + navSpeed*nx
                         , clouds = List.map (\(x,y) -> if x > 115 then (-115,15 * sin (100*model.time)+30) else if x < -115 then (115,15 * sin (30*model.time)+30) else (x - navSpeed*nx,y)) model.clouds
                         , bgHouse = List.map (\(x,y) -> if x > 400 then (400,y) else if x < -25 then (-25,y) else (x - navSpeed*nx,y)) model.bgHouse
                         , bgPumpkin = List.map (\(x,y) -> if x > -200 then (-200,y) else if x < -815 then (-815,y) else (x - navSpeed*nx,y)) model.bgPumpkin
                         , bgDog = List.map (\(x,y) -> if x > -200 then (-200,y) else if x < -515 then (-515,y) else (x - navSpeed*nx,y)) model.bgDog
                         , shp = if model.pos == Unload then
                                     0
                                 else
                                     model.shp

                         }
        ClickBoard -> { model | board = round (abs(9*cos(model.time*100)-1))
                           , shp = 0 , remain = 10 - model.board, startTime = model.time
                                   }

        ClickPumpkin -> { model | selected = SelectPumpkin }
        ClickLoad -> { model | item = case model.selected of
                                          SelectNone -> None
                                          SelectPumpkin -> Pumpkin
                               , shp = model.shp + 1
                               }
        ClickItem -> { model | shp = if model.shp >=1 then
                                        model.shp - 1
                                    else 0
                                    }
        ClickWagon -> { model | remain = model.remain + model.shp, shp = 0
                       }

view model =
    collage 1250 900
        [ background model |> scale 1 |> move (0,50)
        , tractor model |> scale 1 |> changeMirror model.pos |> move (50,20) |> move model.myTractor
      --  , dog |> scale 2|> mirrorX |> move (0, happyDog model ) |> move (300,-100)
        , reqBoard model |> move (200, 100)
        , if model.remain == 10
          then group [unicorn |> scale 2 |> rotate -model.time |> move (-navSpeed*(model.time - model.startTime), -navSpeed*(model.time - model.startTime) + 200 ),
               text "Hooray!" |> size 30 |> bold |> filled white |> addOutline (solid 1) black |> scale (abs(sin(model.time))) {-- |> rotate -model.time --} |> move (0,250)|> move (-navSpeed*(model.time - model.startTime), -navSpeed*(model.time - model.startTime) + 200)]
          else unicorn |> move (0,300)

      ]


showBg1 bgHouse model = group (List.map (\(x,y) -> group [ group [mushroomHouse model]  |> move (x,y)]) bgHouse )
showBg2 bgPumpkin = group (List.map (\(x,y) -> group [ field |> move (x,y)]) bgPumpkin)
showBg3 bgDog = group (List.map (\(x,y) -> group [ dog |> move (x,y)]) bgDog)

background model = group [
   square 2000
   |> filled lightBlue ,
   rect 2000 700
   |> filled darkGreen |> move (0,-400)
   , showClouds model.clouds |> scale 4 |> move (0,150)
            , showBg1 model.bgHouse model |> scale 1.5 |> move (500,0)
            , showBg2 model.bgPumpkin |> move (-150,0) |> notifyTap ClickPumpkin |> notifyTap ClickLoad
            , showBg3 model.bgDog |> move (-150,-50)
            ]

clouds1 = [(-60,40),(-20,20),(-5,30),(50,60),(30,20),(-80,17),(75,30)]
bgHouse1 = [(-10,0)]
bgPumpkin1 = [(-800,-150)]
bgDog1 = [(-500,-200)]


showClouds clouds =
 group (List.map (\(x,y) -> group [circle 6 |> filled white |> move (x+10,y-1)
                                 , circle 6 |> filled white |> move (x-10,y-1)
                                 , circle 6 |> filled white |> move (x,y-2)
                                 , circle 6 |> filled white |> move (x-8,y+3)
                                 , circle 6 |> filled white |> move (x+8,y+3)
                                 , circle 6 |> filled white |> move (x,y+6)
                                 ])
                                 clouds)


dog = group [
   leg |> addOutline (solid 2) black |> move (3,1)
 , leg |> addOutline (solid 2) black |> move (-1,0)
 , leg |> addOutline (solid 2) black |> move (17,0)
 , leg |> addOutline (solid 2) black |> move (13,-1)
 , oval 25 15 |> filled white |> addOutline (solid 1) black |> move (-10,-9)
 , circle 7 |> filled white |> addOutline (solid 1) black
 , roundedRect 10 4 3 |> filled brown |> addOutline (solid 1) black |> rotate (degrees -30) |> move (6,4)
 , roundedRect 10 4 3 |> filled brown |> addOutline (solid 1) black |> rotate (degrees 30) |> move (-6,4)
 , circle 1.5 |> filled black |> move (-2,1)
 , circle 1.5 |> filled black |> move (2,1)
 , circle 0.3 |> filled white |> move (-2.5,1.5)
 , circle 0.3 |> filled white |> move (1.5,1.5)
 , triangle 1 |> filled black |> rotate (degrees 30) |> move (0,-1)
 , wedge 3 0.5 |> filled black |> rotate (degrees -90) |> move (0,-3)
 , wedge 2 0.5 |> filled white |> rotate (degrees -90) |> move (0,-3.5)
 ]

leg = group [
    oval 6 3 |> filled white |> move (-18,-20)
  , roundedRect 4 12 2 |> filled white |> move (-18,-14)
 ]



changeMirror pos = case pos of
                        Load -> mirrorX
                        Unload -> identity

loadUnload item = case item of
                        Pumpkin -> pumpkin
                        _ -> empty

drawShape: Int -> (Float,Float)
drawShape shp = case shp of
                    0 -> (0,20)
                    1 -> (-80,20)
                    2 -> (-40,20)
                    3 -> (0,20)
                    4 -> (40,20)
                    5 -> (80,20)
                    6 -> (-80,-20)
                    7 -> (-40,-20)
                    8 -> (0, -20)
                    9 -> (40,-20)
                    _ -> (80,-20)

reqBoard model = group [ rect 170 30 |> filled white |> addOutline (solid 1) black |> move (100,0)
              --   , text (Debug.toString model.board ++ " "++ Debug.toString model.items ++ " required!") |> size 12 |> filled black |> notifyTap ClickBoard
                   , text "Click here to reset!" |> size 20 |> filled black |> move (23,-5)
    ] |> notifyTap ClickBoard

tractor model = group [ group [ roundedRect 150 50 5 |> filled red |> addOutline (solid 1) black |> move (40,0)
        , roundedRect 62 40 5 |> filled black |> move (60,36)
        , roundedRect 60 80 5 |> filled red |> move(60,15)
        , rectangle 40 20 |> filled gray |> addOutline (solid 1) black |> move (55,35)
        , group [ rectangle 10 30 |> filled black |> move (-5,40)
        , curve (10,0) [Pull (-20,-5) (-17,33), Pull (0,73) (-34,76), Pull (17,78) (10,0) ]|> filled darkGray |> addOutline (solid 1) black |> rotate (degrees -40) |> scale 0.25 |> move (-5,55) |> makeTransparent (cos model.time)
        , curve (10,0) [Pull (-20,-5) (-17,33), Pull (0,73) (-34,76), Pull (17,78) (10,0) ]|> filled darkGray |> addOutline (solid 1) black |> rotate (degrees -40) |> scale 0.45 |> move (5,75)  |> makeTransparent (sin model.time) ]
        , group [ circle 20 |> filled white
        , circle 15 |> filled black |> addOutline (dotted 3) black
        , circle 10 |> filled white  ]|> move (-10,-25)
        , group [ circle 30 |> filled white
        , circle 25 |> filled black |> addOutline (dotted 3) black
        , circle 20 |> filled white ] |> move (80,-15)
        , line (110,-10)(140,-10) |> outlined(solid 3) darkGray ] |> move (-250,-20)
        , group [  wagon
        , group [ circle 15 |> filled white
        , circle 10 |> filled black |> addOutline (dotted 3) black
        , circle 6 |> filled white ] |> move (-70,-50)
        , group [ circle 15 |> filled white
        , circle 10 |> filled black |> addOutline (dotted 3) black
        , circle 6 |> filled white ] |> move (70,-50)]
        , ( group <| List.map (\id -> loadUnload model.item |> scale 0.75 |> move (drawShape id)) (List.range 1 model.shp) )  |> notifyTap ClickItem
        ]

wagon = group [ rect 220 100 |> filled red |> addOutline (solid 1) black |> makeTransparent 0.5
        , square 30 |> filled white |> addOutline (solid 1) black |> move (-80,20)
        , text  ("1") |> filled gray |> move (-80,20)
        , square 30 |> filled white |> addOutline (solid 1) black |> move (-80,-20)
        , text  ("6") |> filled gray |> move (-80,-20)
        , square 30 |> filled white |> addOutline (solid 1) black |> move (-40,20)
        , text  ("2") |> filled gray |> move (-40,20)
        , square 30 |> filled white |> addOutline (solid 1) black |> move (-40,-20)
        , text  ("7") |> filled gray |> move (-40,-20)
        , square 30 |> filled white |> addOutline (solid 1) black |> move (0,20)
        , text  ("3") |> filled gray |> move (0,20)
        , square 30 |> filled white |> addOutline (solid 1) black |> move (0,-20)
        , text  ("8") |> filled gray |> move (0,-20)
        , square 30 |> filled white |> addOutline (solid 1) black |> move (40,20)
        , text  ("4") |> filled gray |> move (40,20)
        , square 30 |> filled white |> addOutline (solid 1) black |> move (40,-20)
        , text  ("9") |> filled gray |> move (40,-20)
        , square 30 |> filled white |> addOutline (solid 1) black |> move (80,20)
        , text  ("5") |> filled gray |> move (80,20)
        , square 30 |> filled white |> addOutline (solid 1) black |> move (80,-20)
        , text  ("10") |> filled gray |> move (80,-20)
        ]

pumpkin = group [ oval 25 40 |> filled lightOrange |> addOutline (solid 1) darkOrange
                , oval 25 40 |> filled lightOrange |> addOutline (solid 1) darkOrange |> move (10,-2)
                , oval 25 40 |> filled lightOrange |> addOutline (solid 1) darkOrange |> move (-10,-2)
                , oval 25 40 |> filled lightOrange |> addOutline (solid 1) darkOrange |> move (20,-4)
                , oval 25 40 |> filled lightOrange |> addOutline (solid 1) darkOrange |> move (-20,-4)
                , oval 25 40 |> filled lightOrange |> addOutline (solid 1) darkOrange |> move (10,-6)
                , oval 25 40 |> filled lightOrange |> addOutline (solid 1) darkOrange |> move (-10,-6)
                , oval 25 40 |> filled lightOrange |> addOutline (solid 1) darkOrange |> move (0,-8)
                , curve (10,10) [Pull (8,2) (4,0) ]  |> outlined (solid 3) darkBrown |> scaleY 1.5 |> move (-5,12)

                ]

unicorn = group [ group [roundedRect 20 15 5 |> filled lightGray |> addOutline (solid 1) black |> rotate (degrees 45) |> move (5,-35)
                      , roundedRect 31 16 5 |> filled black |> addOutline (solid 1) black |> rotate (degrees 45) |> move (10,-40)
                      , roundedRect 20 15 5 |> filled lightGray |> addOutline (solid 1) black |> rotate (degrees -45) |> move (10,-50)
                      , roundedRect 30 15 5 |> filled lightGray |> rotate (degrees 45) |> move (10,-40) ] -- front legs
                      , group [ roundedRect 30 15 5 |> filled lightGray |> addOutline (solid 1) black |> rotate (degrees -45) |> move (45,-45)
                      , roundedRect 30 15 5 |> filled lightGray |> addOutline (solid 1) black |> rotate (degrees -45) |> move (55,-45) ] -- back legs
                      , oval 60 40 |> filled lightGray |> addOutline (solid 1) black |> move (30,-20)
                      , group [ oval 40 30 |> filled lightGray |> addOutline (solid 1) black |> rotate (degrees 45) -- face
                      , curve (0,0) [Pull (-5,5) (0,10) ] |> outlined (solid 1) black |> rotate (degrees -90) |> move (-5,5)
                      , curve (0,0) [Pull (-5,5) (0,10) ] |> outlined (solid 1.5) black |> rotate (degrees 90) |> move (-8,-5)
                      , circle 3 |> filled pink |> move (2,-4) ]
                      , group [ curve (0,0) [Pull (-5,5) (0,10), Pull (0,0) (5,5), Pull (22,20) (30,0), Pull (15,-15) (0,0) ] |> filled lightPurple |> addOutline (solid 1) black |> rotate (degrees 25) |> move (-15,17) --bump curve2
                      , curve (0,0) [Pull (-5,5) (0,10), Pull (0,0) (5,5), Pull (22,20) (30,0), Pull (15,-15) (0,0) ] |> filled pink |> addOutline (solid 1) black |> rotate (degrees 25) |> move (-15,12) --bump curve1
                      , curve (0,15) [Pull (-3,3) (-2,0), Pull (1,-2) (4,0), Pull (4,2) (0,15) ]  |> filled yellow |> addOutline (solid 0.5) black |> scale 1.5 |> move (0,22) ]--horn
                      , group [ curve (-2,20) [Pull (3,18) (0,10), Pull (-10,-25) (20,-15), Pull (-2,-15) (10,20), Pull (0,30) (-2,20) ] |> filled lightPurple |> addOutline (solid 1) black |> rotate (degrees 25) |> move (22,10) --hair3
                      , curve (-2,20) [Pull (3,18) (0,10), Pull (-10,-25) (20,-15), Pull (-2,-15) (10,20), Pull (0,30) (-2,20) ] |> filled lightGreen |> addOutline (solid 1) black |> rotate (degrees 15) |> move (20,5) --hair2
                      , curve (-2,20) [Pull (3,18) (0,10), Pull (-10,-25) (20,-15), Pull (-2,-15) (10,20), Pull (0,30) (-2,20) ] |> filled pink |> addOutline (solid 1) black |> move (15,0) --hair1
                      , curve (0,15) [Pull (-6,6) (0,0), Pull (6,5) (0,15) ] |> filled lightGray |> addOutline (solid 0.5) black |> rotate (degrees -35) |> scale 1.5 |> move (7,10) ]-- ears
                      , group [ curve (0,0) [Pull (10,0) (0,-10), Pull (-15,-30) (15,-30), Pull (0,-20) (5,-15), Pull (20,7) (0,0) ] |> filled lightPurple |>  addOutline (solid 1) black |> rotate (degrees 35) |> scale 1.3|> move (57,-13) --tail2
                      , curve (0,0) [Pull (10,0) (0,-10), Pull (-15,-30) (15,-30), Pull (0,-20) (5,-15), Pull (20,7) (0,0) ] |> filled pink |>  addOutline (solid 1) black |> rotate (degrees 25) |> move (60,-15) ]--tail1
                      ]

empty = group [ circle 1 |> filled blank
        , circle 1 |> filled blank ]

mushroomHouse model = group [ mushroom1
        , mushroom2   |> rotate (degrees -15)  |> move (10,-5)
        , mushroom3 |> move (-5,-25)
        , wagon |> move (-15,-150) |> notifyTap ClickWagon
        , text "Click here to deposit your items!" |> size 15 |> filled white |> move (-120,-220)
        , ( group <| List.map (\id -> loadUnload model.item |> scale 0.4 |> move (drawShape id)) (List.range 1 (model.remain)) ) |> notifyTap ClickItem |> move (-15,-150)
        ]

mushroom1 = group [ oval 100 95 |> filled white |> addOutline (solid 2) black |> move (35,-40)
            , curve (-10,-15) [Pull (-9,10) (10,30), Pull (24,50) (40,30), Pull (50,10) (80,10), Pull (101,-5) (46,-19), Pull (10,-30) (-10,-15) ] |> filled red |> addOutline (solid 1.5) black |> scale 1.25 |> move (-15,0)
            , curve (0,-15) [Pull (-9,10) (10,30), Pull (35,50) (50,34), Pull (72,13) (65,-15) ] |> filled brown |> addOutline (solid 2) black |> scale 0.8 |> move (9,-70)
            , circle 5 |> filled yellow |> addOutline (solid 1) black |> move (20,-60)
            , circle 8 |> filled white |> addOutline (solid 1) black |> move (5,5)
            , circle 8 |> filled white |> addOutline (solid 1) black |> move (-20,-15)
            , circle 8 |> filled white |> addOutline (solid 1) black |> move (15,40)
            , circle 8 |> filled white |> addOutline (solid 1) black |> move (35,20)
            , circle 8 |> filled white |> addOutline (solid 1) black |> move (30,-15)
            , circle 8 |> filled white |> addOutline (solid 1) black |> move (60,5)

            ]

mushroom2 = group [ oval 50 45 |> filled white |> addOutline (solid 1) black |> move (90,-40)
                  , curve (0,-15) [Pull (-9,10) (10,30), Pull (35,50) (50,30), Pull (64,7) (80,18), Pull (101,-5) (46,-21), Pull (10,-30) (0,-15) ] |> filled red |> addOutline (solid 2) black |> scale 0.7 |> move (60,-20)
                  , roundedRect 20 15 7 |> filled brown |> addOutline (solid 1) black |> move (90,-50)
                  , circle 6 |> filled white |> addOutline (solid 1) black |> move (100,-15)
                  , circle 6 |> filled white |> addOutline (solid 1) black |> move (80,-5)
                  , circle 6 |> filled white |> addOutline (solid 1) black |> move (70,-25)
            ]

mushroom3 = group [ oval 25 50 |> filled white |> addOutline (solid 1.5) black  |> move (-10,-40)
            , curve (0,-15) [Pull (-9,10) (10,30), Pull (35,50) (50,34), Pull (52,34) (65,20), Pull (80,-5) (46,-21), Pull (10,-30) (0,-15) ] |> filled red |> addOutline (solid 2.5) black |> scale 0.5  |> move (-30,-25)
            ]

field = group [rect 500 200 |> filled lightGreen  |> move (0, -100)
        ,rect 500 10  |> filled brown |> move (0, 20)
        ,stilt  |> move (-240, 10)
        ,stilt   |> move (-200, 10)
        ,stilt  |> move (-160, 10)
        ,stilt |> move (-120, 10)
        ,stilt  |> move (-80, 10)
        ,stilt |> move (-40, 10)
        ,stilt |> move (0, 10)
        ,stilt |> move (0, 10)
        ,stilt  |> move (40, 10)
        ,stilt  |> move (80, 10)
        ,stilt  |> move (120, 10)
        ,stilt   |> move (160, 10)
        ,stilt |> move (200, 10)
        ,stilt  |> move (240, 10)
        ,curve (-91.83,-15) [Pull (-89,-16.66) (-86.16,-18.33),Pull (-82.33,-22.16) (-78.5,-26),Pull (-73.33,-26.83) (-68.16,-27.66),Pull (-63.16,-27.16) (-58.16,-26.66),Pull (-53.33,-25.83) (-48.5,-25),Pull (-47,-22.33) (-45.5,-19.66),Pull (-44.66,-16.33) (-43.83,-13),Pull (-43.16,-10) (-42.5,-7),Pull (-41.33,-4.333) (-40.16,-1.666),Pull (-36.66,0.1666) (-33.16,2),Pull (-30.5,2) (-27.83,2),Pull (-22,0.8333) (-16.16,-0.333),Pull (-8.833,-1.166) (-1.5,-2),Pull (-0.833,-2.666) (-0.166,-3.333),Pull (4.6666,-3.833) (9.5,-4.333),Pull (11.666,-3.5) (13.833,-2.666),Pull (15.5,-1.333) (17.166,0),Pull (18.833,2.8333) (20.5,5.6666),Pull (22.5,8) (24.5,10.333),Pull (26.166,11.333) (27.833,12.333),Pull (30.333,12.666) (32.833,13),Pull (34.666,13.666) (36.5,14.333),Pull (38.666,15.333) (40.833,16.333),Pull (44,17.333) (47.166,18.333),Pull (48,20.5) (48.833,22.666),Pull (49.5,25.5) (50.166,28.333)] |> outlined (solid 3) darkGreen |> scaleX 3 |> scaleY 0.9 |> move (-90, -90)
        ,curve (-91.83,-15) [Pull (-89,-16.66) (-86.16,-18.33),Pull (-82.33,-22.16) (-78.5,-26),Pull (-73.33,-26.83) (-68.16,-27.66),Pull (-63.16,-27.16) (-58.16,-26.66),Pull (-53.33,-25.83) (-48.5,-25),Pull (-47,-22.33) (-45.5,-19.66),Pull (-44.66,-16.33) (-43.83,-13),Pull (-43.16,-10) (-42.5,-7),Pull (-41.33,-4.333) (-40.16,-1.666),Pull (-36.66,0.1666) (-33.16,2),Pull (-30.5,2) (-27.83,2),Pull (-22,0.8333) (-16.16,-0.333),Pull (-8.833,-1.166) (-1.5,-2),Pull (-0.833,-2.666) (-0.166,-3.333),Pull (4.6666,-3.833) (9.5,-4.333),Pull (11.666,-3.5) (13.833,-2.666),Pull (15.5,-1.333) (17.166,0),Pull (18.833,2.8333) (20.5,5.6666),Pull (22.5,8) (24.5,10.333),Pull (26.166,11.333) (27.833,12.333),Pull (30.333,12.666) (32.833,13),Pull (34.666,13.666) (36.5,14.333),Pull (38.666,15.333) (40.833,16.333),Pull (44,17.333) (47.166,18.333),Pull (48,20.5) (48.833,22.666),Pull (49.5,25.5) (50.166,28.333)] |> outlined (solid 3) darkGreen |> scaleX 3 |> scaleY 0.9 |> mirrorX |> move (-70, -50)
        ,curve (-91.83,-15) [Pull (-89,-16.66) (-86.16,-18.33),Pull (-82.33,-22.16) (-78.5,-26),Pull (-73.33,-26.83) (-68.16,-27.66),Pull (-63.16,-27.16) (-58.16,-26.66),Pull (-53.33,-25.83) (-48.5,-25),Pull (-47,-22.33) (-45.5,-19.66),Pull (-44.66,-16.33) (-43.83,-13),Pull (-43.16,-10) (-42.5,-7),Pull (-41.33,-4.333) (-40.16,-1.666),Pull (-36.66,0.1666) (-33.16,2),Pull (-30.5,2) (-27.83,2),Pull (-22,0.8333) (-16.16,-0.333),Pull (-8.833,-1.166) (-1.5,-2),Pull (-0.833,-2.666) (-0.166,-3.333),Pull (4.6666,-3.833) (9.5,-4.333),Pull (11.666,-3.5) (13.833,-2.666),Pull (15.5,-1.333) (17.166,0),Pull (18.833,2.8333) (20.5,5.6666),Pull (22.5,8) (24.5,10.333),Pull (26.166,11.333) (27.833,12.333),Pull (30.333,12.666) (32.833,13),Pull (34.666,13.666) (36.5,14.333),Pull (38.666,15.333) (40.833,16.333),Pull (44,17.333) (47.166,18.333),Pull (48,20.5) (48.833,22.666),Pull (49.5,25.5) (50.166,28.333)] |> outlined (solid 3) darkGreen |> scaleX 4 |> scaleY 1.2 |> move (-100, -170)
        ,curve (-91.83,-15) [Pull (-89,-16.66) (-86.16,-18.33),Pull (-82.33,-22.16) (-78.5,-26),Pull (-73.33,-26.83) (-68.16,-27.66),Pull (-63.16,-27.16) (-58.16,-26.66),Pull (-53.33,-25.83) (-48.5,-25),Pull (-47,-22.33) (-45.5,-19.66),Pull (-44.66,-16.33) (-43.83,-13),Pull (-43.16,-10) (-42.5,-7),Pull (-41.33,-4.333) (-40.16,-1.666),Pull (-36.66,0.1666) (-33.16,2),Pull (-30.5,2) (-27.83,2),Pull (-22,0.8333) (-16.16,-0.333),Pull (-8.833,-1.166) (-1.5,-2),Pull (-0.833,-2.666) (-0.166,-3.333),Pull (4.6666,-3.833) (9.5,-4.333),Pull (11.666,-3.5) (13.833,-2.666),Pull (15.5,-1.333) (17.166,0),Pull (18.833,2.8333) (20.5,5.6666),Pull (22.5,8) (24.5,10.333),Pull (26.166,11.333) (27.833,12.333),Pull (30.333,12.666) (32.833,13),Pull (34.666,13.666) (36.5,14.333),Pull (38.666,15.333) (40.833,16.333),Pull (44,17.333) (47.166,18.333),Pull (48,20.5) (48.833,22.666),Pull (49.5,25.5) (50.166,28.333)] |> outlined (solid 3) darkGreen |> scaleX 4 |> scaleY 1.2 |> mirrorY |> move (100, -170)
        ,curve (41.166,38.333) [Pull (36.833,38.666) (32.5,39),Pull (30,38.666) (27.5,38.333),Pull (21.833,37.166) (16.166,36),Pull (13.333,35) (10.5,34),Pull (8.5,33.166) (6.5,32.333),Pull (4,31.666) (1.5,31),Pull (-2.166,31.833) (-5.833,32.666),Pull (-8.833,34) (-11.83,35.333),Pull (-15.66,36.333) (-19.5,37.333),Pull (-23,37.5) (-26.5,37.666),Pull (-28.66,37.333) (-30.83,37),Pull (-34.5,35.333) (-38.16,33.666),Pull (-38.16,33.666) (-38.16,33.666),Pull (-40.16,32.5) (-42.16,31.333),Pull (-42.83,30.833) (-43.5,30.333),Pull (-46,31) (-48.5,31.666),Pull (-50,32.666) (-51.5,33.666),Pull (-52.83,35) (-54.16,36.333),Pull (-54.5,36.666) (-54.83,37)] |> outlined (solid 2.5) darkGreen |> scaleX 4.5 |> scaleY 1.1 |> move (140, -70)
        ,curve (41.166,38.333) [Pull (36.833,38.666) (32.5,39),Pull (30,38.666) (27.5,38.333),Pull (21.833,37.166) (16.166,36),Pull (13.333,35) (10.5,34),Pull (8.5,33.166) (6.5,32.333),Pull (4,31.666) (1.5,31),Pull (-2.166,31.833) (-5.833,32.666),Pull (-8.833,34) (-11.83,35.333),Pull (-15.66,36.333) (-19.5,37.333),Pull (-23,37.5) (-26.5,37.666),Pull (-28.66,37.333) (-30.83,37),Pull (-34.5,35.333) (-38.16,33.666),Pull (-38.16,33.666) (-38.16,33.666),Pull (-40.16,32.5) (-42.16,31.333),Pull (-42.83,30.833) (-43.5,30.333),Pull (-46,31) (-48.5,31.666),Pull (-50,32.666) (-51.5,33.666),Pull (-52.83,35) (-54.16,36.333),Pull (-54.5,36.666) (-54.83,37)] |> outlined (solid 2.5) darkGreen |> scaleX 4.5 |> scaleY 1.1 |> move (140, -170)
        ,pumpkin |> move (-220, -20)
         ,pumpkin |> move (-160, -50)
         ,pumpkin |> move (-120, -120)
         ,pumpkin |> move (-220, -160)
         ,pumpkin |> move (-70, -20)
        ,pumpkin |> move (-20, -120)
        ,pumpkin |> move (30, -150)
        ,pumpkin |> move (70, -100)
        ,pumpkin |> move (150, -170)
        ,pumpkin |> move (-70, -70)
         ,pumpkin |> move (70, -20)
         ,pumpkin |> move (170, -80)
         ,pumpkin |> move (220, -140)
    ]

stilt= group [rect 10 80 |> filled brown]

main =
    gameApp
        Tick
        {
            model = init
        ,   view = view
        ,   update = update
        ,   title = "Unicorn Game Example" -- This is the title of the browser window / tab
        }
