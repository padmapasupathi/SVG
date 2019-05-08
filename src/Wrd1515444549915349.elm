module Wrd1515444549915349 exposing(words)
import GraphicSVG exposing(..)
words = [
      let
        myWord = "seagull"-- put your work here (in quotes) --
        myCode = 480-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                      ,group[ oval 20 15
          |> filled lightGrey
          |> rotate (degrees 30)
          |> move (30,23)


                        ,polygon [(0,0),(0,-10),(0,30)]
          |> filled blue
          |> rotate (degrees 30)
          |> move (30,35)

         ,oval 60 32
          |> filled lightGrey
          |> rotate (degrees 30)

         ,polygon [(0,0),(0,-50),(20,0)]
          |> filled lightGrey
          |> rotate (degrees 30)


          ,polygon [(0,30),(45,-15),(30,20)]
          |> filled lightGrey
          |> rotate (degrees 180)
          |> move (25,30)

          ,curve (0,41) [Pull (-27,19) (-12,0) ]
          |> filled lightGrey
          |> move (-20,10)
          |> rotate (degrees 90)

           ,curve (0,41) [Pull (-27,19) (-12,0) ]
          |> filled lightGrey
          |> move (-20,10)
          |> rotate (degrees 100)

            ,curve (0,41) [Pull (-27,19) (-12,0) ]
          |> filled lightGrey
          |> move (-20,10)
          |> rotate (degrees 110)

           ,curve (0,41) [Pull (-27,19) (-12,0) ]
          |> filled lightGrey
          |> move (-20,10)
          |> rotate (degrees 120)

           ,curve (0,41) [Pull (-27,19) (-12,0) ]
          |> filled lightGrey
          |> move (-20,10)
          |> rotate (degrees 130)

           ,curve (0,41) [Pull (-27,19) (-12,0) ]
          |> filled lightGrey
          |> move (-20,10)
          |> rotate (degrees 140)

           ,curve (0,41) [Pull (-27,19) (-12,0) ]
          |> filled lightGrey
          |> move (-20,10)
          |> rotate (degrees 150)

             ,curve (0,41) [Pull (-27,19) (-12,0) ]
          |> filled lightGrey
          |> move (-20,10)
          |> rotate (degrees 160)


         ,openPolygon [(0,0),(0,-5),(10,0)]
          |> filled darkOrange
          |> move (40,25)
          |> makeTransparent 0.6
          |> rotate (degrees 330)

          ,polygon [(-70,8),(-77,20),(-106,25)]
          |> filled lightGrey
          |> move (75,0)

            ,polygon [(-70,8),(-77,20),(-106,25)]
          |> filled lightGrey
          |> move (70,10)

            ,polygon [(-70,8),(-77,20),(-106,25)]
          |> filled lightGrey
          |> move (65,15)

            ,polygon [(-70,8),(-77,20),(-106,25)]
          |> filled lightGrey
          |> move (60,20)

            ,polygon [(-70,8),(-77,20),(-106,25)]
          |> filled lightGrey
          |> move (90,-40)

            ,polygon [(-70,8),(-77,20),(-106,25)]
          |> filled lightGrey
          |> move (95,-45)

            ,polygon [(-70,8),(-77,20),(-106,25)]
          |> filled lightGrey
          |> move (95,-50)

            ,polygon [(-70,8),(-77,20),(-106,25)]
          |> filled lightGrey
          |> move (99,-55)

            ,polygon [(-70,8),(-77,20),(-106,25)]
          |> filled lightGrey
          |> move (95,-45)

            ,polygon [(-70,8),(-77,20),(-106,25)]
          |> filled lightGrey
          |> move (95,-35)
          ,polygon [(-71,31),(-59,25),(-87,9)]
          |> filled lightGrey
          |> move (70,80)

          ,circle 0.8
            |> filled black
              |> move (30,25)

          ]
          |> scale 0.85
          |> move (5, 20*sin model.time)









                         --, graphPaper 10 |> makeTransparent 0.4
                       ]

        myBackground = square 200 |> filled lightGreen
    in ("SmartCaper",myWord,"8","Seagull","Saginaw"

       ,myShapes)

  ,    let
        myWord = "minibus"-- put your work here (in quotes) --
        myCode = 400-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , rectangle 80 53
                             |> filled hotPink
                             |> move (0, 10)
                         , rectangle 100 100
                             |> filled darkGrey
                             |> move (0, -90)
                         , square 22
                             |> filled black
                             |> move (-30, -28)
                         , square 22
                             |> filled black
                             |> move (30, -28)
                         , rectangle 30 20
                             |> filled lightCharcoal
                             |> rotate (degrees 90)
                             |> move (30, 14)
                         , rectangle 20 20
                             |> filled charcoal
                             |> rotate (degrees 180)
                             |> move (0, 10)
                         , rectangle 20 20
                             |> filled charcoal
                             |> rotate (degrees 180)
                             |> move (-30, 10)
                         --, graphPaper 10 |> makeTransparent 0.4

                         ]

        myBackground = square 200 |> filled lightBlue
    in ("RemarkableWren",myWord,"8","Horrible Minibus","Kaufman"

       ,myShapes)

  ,    let
        myWord = "eggplant" -- put your work here (in quotes) --
        myCode = 310 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [
                           oval 40 85
                           |> filled darkPurple
                           ,oval 10 25
                           |> filled (rgb 0 102 0)
                           |> move (0,35)
                         ]

        myBackground = square 200 |> filled pink
    in ("OutrageousTapir",myWord,"8","Eggplant by Peter Doan","Kaufman"

       ,myShapes)

  ,    let
        myWord ="thumb"-- put your work here (in quotes) --
        myCode = 525 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , oval 25 6

                             |> filled lightOrange
                             |> move (0,4)
                         , oval 25 6

                             |> filled lightOrange
                             |> move (0,13)
                         , oval 25 6

                             |> filled lightOrange
                             |> move (0,10)
                         , oval 25 6

                             |> filled lightOrange
                             |> move (0,7)
                         , oval 10 30

                             |> filled lightOrange
                             |> move (10,16)
                        , oval 5 12
                             |> filled pink
                             |> move (12, 25)


                         --, graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled blue


    in ("DescriptiveLemur",myWord,"8","The Square","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "dress"
        myCode = 303
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , square 20
                             |> filled pink
                             |> move (0,20)
                         , roundedRect 30 40 10
                             |> filled pink
                             |> move (0,-4)
                         , rect 4 10
                             |> filled pink
                             |> move (-8,34)
                         , rect 4 10
                             |> filled pink
                             |> move (8,34)
                         ,group [ wedge 6 4
                             |> filled pink
                             |> move (10,-19)
                             |> rotate (degrees 270)
                         , wedge 6 4
                             |> filled pink
                             |> move (3,-20)
                             |> rotate (degrees 270)
                         , wedge 6 4
                             |> filled pink
                             |> move (-3,-20)
                         , wedge 6 4
                             |> filled pink
                             |> move (-10,-19)
                             |> rotate (degrees 270)
                             |> rotate (degrees 270)

                             ]
                             |> rotate (0 + 0.1 * sin model.time)
                             ]



        myBackground = square 200 |> filled white


    in ("DisciplinedLime",myWord,"8","square","Northlake Woods"

       ,myShapes)

  ,    let
        myWord =  "cyan"
        myCode =  293
        score = 10  -- number out of 10

        myShapes model = [ myBackground
                         , square 50
                             |> filled (rgb 0 255 255)
                             |> rotate model.time
                             ,
                             square 50
                             |> filled (rgb 0 255 255)
                             |> rotate (model.time* -1)
                             ,
                             square 50
                             |> filled (rgb 0 255 255)
                             |> move (0,0)



                        -- , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled pink
    in ("SafeBasil",myWord,"8","cyan","Saginaw"

       ,myShapes)

  ,    let
        myWord = "hexagon" --
        myCode = 111 --
        score = 10 -- number out of ten

        myShapes model = [myBackground
                         ,ngon 6 50
                             |> filled orange
                             |> move (11 * sin model.time,0)
                             |> scale 0.8


                         ]

        myBackground = square 700 |> filled red
    in ("OutstandingWatermelon",myWord,"8","ORANGE HEXAGON","Saginaw"

       ,myShapes)

  ,    let
        myWord = "wolf"-- put your work here (in quotes) --
        myCode = 567-- put your code number here, which came with your word (not in quotes) --
        score = 10  -- number out of 10

        myShapes model = [ myBackground, myShape |> move (0, 15)

                         ]

        myShape = group [circle 25
                             |> filled charcoal
                         , triangle 10
                             |> filled charcoal
                             |> rotate (degrees 45)
                             |> move (20, 20)
                         , triangle 10
                             |> filled charcoal
                             |> rotate (degrees 135)
                             |> move (-20, 20)
                         , circle 3
                             |> filled lightYellow
                             |> move (-10, 5)
                         , circle 3
                             |> filled lightYellow
                             |> move (10, 5)
                         , circle 2
                             |> filled black
                             |> move (10, 5)
                         , circle 2
                             |> filled black
                             |> move (-10, 5)
                         , oval 8 5
                             |> filled lightCharcoal
                             |> move (0, -2)
                         , oval 50 80
                             |> filled charcoal
                             |> move (0, -55)
                        -- , graphPaper 10 |> makeTransparent 0.4
                        ]

        myBackground = square 200 |> filled lightGrey
    in ("RemarkableWren",myWord,"8","Wolfie Wolf","Kaufman"

       ,myShapes)

  ,    let
        myWord = "dolphin"-- put your work here (in quotes) --
        myCode = 468-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , triangle 10
                             |> filled grey
                             |> rotate model.time
                             |> move (0,-10)
                         , oval 25 20
                             |> filled gray
                             |> scaleX 3
                         , triangle 10
                             |> filled grey
                             |> rotate model.time
                             |> move (0,10)
                         , text "Hello"
                             |> filled (rgb 45 255 198)
                             |> move (-10,-40)
                         , circle 1.5
                             |> filled black
                             |> move (30,0)
                         , wedge 10 0.625
                             |> filled darkGray
                             |> move (-45,0)
                         ,oval 5 1
                             |> filled darkCharcoal
                             |> move (15,8.5)

                         ]

        myBackground = square 200 |> filled lightBlue
    in ("SmilingCapsicum",myWord,"8","The Dolphin Dance*****************************","Saginaw"

       ,myShapes)

  ,    let
        myWord = "dolphin"-- put your work here (in quotes) --
        myCode = 468-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , triangle 10
                             |> filled grey
                             |> rotate model.time
                             |> move (0,-10)
                         , oval 25 20
                             |> filled gray
                             |> scaleX 3
                         , triangle 10
                             |> filled grey
                             |> rotate model.time
                             |> move (0,10)
                         , text "Hello"
                             |> filled (rgb 45 255 198)
                             |> move (-10,-40)
                         , circle 1.5
                             |> filled black
                             |> move (30,0)
                         , wedge 10 0.625
                             |> filled darkGray
                             |> move (-45,0)
                         ,oval 5 1
                             |> filled darkCharcoal
                             |> move (15,8.5)

                         ]

        myBackground = square 200 |> filled lightBlue
    in ("SmilingCapsicum",myWord,"8","Dolphin","Saginaw"

       ,myShapes)

  ,    let
        myWord = "dump truck"
        myCode = 306
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                       ,
                       circle 2

                            |> filled (if sin (model.time * 2 ) < 0 then blank else brown)
                            |> scale 2
                            |> move(50 * (sin model.time),-20 * (sin model.time))
                            |> move (0,0)
                         ,circle 2
                          |> filled (if sin (model.time * 2 ) < 0 then blank else brown)
                            |> scale 2
                           |> move (0,-3)
                           |> move(50 * (sin model.time),-20 * (sin model.time))

                       , rect 66 41
                            |> filled darkRed
                            |> rotate (degrees 12 * sin(-1 * model.time) + 3)
                            |> move(10,0)
                       , rect 20 40
                            |> filled red
                            |> rotate(degrees 180)
                            |> move(-23,0)

                        , rect 20 90
                            |> filled red
                            |> rotate (degrees 90)
                            |> move (-5,-30)
                        , rect 10 20
                            |> filled red
                            |> scale 2
                            |> move (-40,0)
                        , circle 10
                            |> filled black
                            |> scale 1
                            |> move (-27, -35)
                        , circle 10
                            |> filled black
                            |> scale 1
                            |> move (20, -35)
                        , circle 10
                            |> filled gray
                            |> scale 0.5
                            |> move (-27, -35)
                        , circle 10
                            |> filled gray
                            |> scale 0.5
                            |> move (20, -35)
                        ,group
                        [triangle 10
                            |> filled black
                            |> scale 0.5
                            |> rotate (degrees 30)
                            |>rotate(degrees (model.time * -500))
                            |> move (-27,-35)
                        , triangle 10
                            |> filled black
                            |> scale 0.5
                            |> rotate (degrees 90)
                            |>rotate(degrees (model.time * -500))
                            |> move (-27,-35)
                         , triangle 10
                            |> filled black
                            |> scale 0.5
                            |> rotate (degrees 30)
                            |>rotate (degrees (model.time * -500))
                            |> move (20,-35)
                        , triangle 10
                            |> filled black
                            |> scale 0.5
                            |> rotate (degrees 90)
                            |> rotate(degrees (model.time * -500))
                            |> move (20,-35)
                            ]

                        ,rect 30 20
                            |> filled lightBlue
                            |>move (-40,30)
                        , square 10
                            |> filled black
                            |> scale 2
                            |> move (-40,10)
                        , circle 10
                            |> filled ((if sin (model.time * 5 ) < 0 then red else yellow))
                            |> move (-39,-15)
                        , square 20
                            |> filled red
                            |> move (-30,-15)
                        ]



        myBackground = square 200 |> filled lightBlue
    in ("ShinyBeetle",myWord,"8","Dumping Dirt","Saginaw"

       ,myShapes)

  ,    let
        myWord = "ambulance" -- put your work here (in quotes) --
        myCode = 208--  put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , square 10
                             |> filled red
                             |> rotate model.time
                       --  , graphPaper 10 |> makeTransparent 0.4
                         ,roundedRect 70 90 15
                             |> filled white
                             |> scaleY -0.5
                             |> move (-10,0)
                             ,triangle 30
                             |> filled white
                             |> scaleY -0.5
                             |> move (37,-7)
                             ,square 35
                             |> filled pink
                             |> scaleY -1
                             |> move (50,-10)
                             ,square 15
                             |> filled lightBlue
                             |> move (10,5)
                             ,roundedRect 10 26 5
                             |> filled red
                             |> scaleY -3
                             |> rotate (degrees -270)
                             |> move (-7,-10)
                             ,text "AMBULANCE"
                             |> filled white
                             |> scale -0.5
                             |> rotate (degrees -540)
                             |> move (-28,-12)
                             ,rect 10 30
                             |> filled red
                             |> scale -0.5
                             |> rotate (degrees -540)
                             |> move (-30,10)
                             ,rect 10 30
                             |> filled red
                             |> scale -0.5
                             |> rotate (degrees -630)
                             |> move (-30,10)
                             ,circle 10
                             |> filled black
                             |> move (10,-27)
                             ,circle 10
                             |> filled black
                             |> move (-30,-27)
                             ,group [rect 10 30
                             |> filled charcoal
                             |> scale -0.5
                             |> rotate (degrees -540)

                             ,rect 10 30
                             |> filled charcoal
                             |> scale -0.5
                             |> rotate (degrees -630)

                             ]
                             |> rotate model.time
                               |> move (-30,-27)
                             ,group [rect 10 30
                             |> filled charcoal
                             |> scale -0.5
                             |> rotate (degrees -540)

                             ,rect 10 30
                             |> filled charcoal
                             |> scale -0.5
                             |> rotate (degrees -630)
                              ]
                               |> rotate model.time
                               |> move (10,-27)
                         ]

        myBackground = square 200 |> filled pink
    in ("QuaintWasabi",myWord,"8","Awesome Ambulance by Faiz","Kaufman"

       ,myShapes)

  ,    let
        myWord = "coat"
        myCode = 277
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                          , circle 15
                             |> filled black
                             |> move (0,30)
                         , rect 15 45
                             |> filled black
                             |> move (-18,0)
                         , rect 15 45
                             |> filled black
                             |> move (18,0)
                          , rect 20 40
                             |> filled white
                             |> move (0,0)
                          , rect 10 30
                             |> filled black
                             |> move (-30,0)
                             |> rotate (degrees 315)
                          , rect 10 30
                             |> filled black
                             |> move (30,0)
                             |> rotate (degrees 45)
                          , circle 10
                             |> filled white
                             |> move (0,28)

                         ]

        myBackground = square 200 |> filled orange
    in ("ResonantZebra",myWord,"8","Coat","Kaufman"

       ,myShapes)

  ,    let
        myWord = "fish" -- put your work here (in quotes) --
        myCode = 323 -- put your code number here, which came with your word
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , triangle 18
          |> filled (rgb 255 150 0)
          |> scaleX 3
          |> scaleY 1.50
          |> move (-18,9)
          |> rotate (degrees -40)
                         , oval 10 15
                            |> filled lightOrange
                            |> scale 3

                            |> scaleX 2.25
                            |> rotate (degrees 330)
                           , triangle 5
          |> filled (rgb 255 150 0)
          |> scaleX 4
          |> scaleY 3
          |> move (-23,-10)
          |> rotate (degrees 30)

                      , curve (0,0) [Pull (-98,48) (-97,-18), Pull (-93,1) (-37,5) ]
          |> filled (rgb 255 96 0)
          |> rotate (degrees 330)
          |> scale 0.60
          |> move (30,0)
          , circle 3
          |> filled black
          |> move (8,-6)
           , circle 3
          |> filled black
          |> move (26,-6)

          , curve (0,0) [Pull (-53,30) (-77,-10), Pull (-75,27) (-17,14) ]
          |> filled (rgb 0 0 0)
          |> rotate (degrees 540)
          |> scale 0.07
          |> move (13,-14)



                 , curve (0,0) [Pull (-53,30) (-77,-10), Pull (-75,27) (-17,14) ]
          |> filled (rgb 0 0 0)
          |> rotate (degrees 540)
          |> scale 0.07
          |> move (18,-14)


                      , circle 5
                      |> filled white
                      |> scale 0.30
                      |> move (27,-5)

         , circle 5
         |> filled white
         |> scale 0.30
         |> move (7,-5)

         , circle 20
          |> filled (rgb 255 179 159)
          |> scale 0.2
          |> scaleY 0.5
          |> move (5, -11)

              , circle 20
          |> filled (rgb 255 179 159)
          |> scale 0.2
          |> scaleY 0.5
          |> move (30, -11)









                        -- , graphPaper 10 |> makeTransparent 0.4
                         , let
                            u = 12*sin(2*model.time)
                            v = 5*sin(1*model.time)

                           in
                            circle 10
                              |> outlined (solid 1) (rgb 196 221 255)
                              |> scale 0.3
                              |> move(u,9)
                              |> move (42,9)
                            , let
                            u = 12*sin(2*model.time)
                            v = 5*sin(1*model.time)

                           in
                            circle 10
                              |> outlined (solid 1) (rgb 196 221 255)
                              |> scale 0.3
                              |> move(u,9)
                              |> move (50,5)  ]





        myBackground = square 200 |> filled lightBlue

    in ("SafeAlfalfa",myWord,"8","Kish the Fish","Kaufman"

       ,myShapes)

  ,    let
        myWord = "green" -- put your work here (in quotes) --
        myCode = 345-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10
        myShapes model = [ myBackground
                         , square 100
                             |> filled (rgb 0 51 0)
                             |> rotate model.time
                             |> scale 0.7
                         --, graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled green

    in ("RaspyWolverine",myWord,"8","Green","Kaufman"

       ,myShapes)

  ,    let
        myWord = "kumquat" -- put your work here (in quotes) --
        myCode = 382 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                        , group
                        [ oval 40 25
          |> filled (rgb 255 135 0)

                        , oval 2.5 5
          |> filled (rgb 17 108 0)
          |> move (20, 0)
                        ]
          |> rotate model.time
                       --  , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled pink
    in ("ElatedMango",myWord,"8","spinning kumquat","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "pyramid" -- put your work here (in quotes) --
        myCode = 457 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10
        myShapes model = [ myFrontSky
                         , myDog
                             |> move (0,-18)
                         , myabcdefghijklmnopqrstuvwxyz
                             |> move (0, 30)
                         , myMoon
                             |> move (38, 38)
                         , triangle 50
                             |> filled yellow
                             |> rotate (degrees 90)
                             |> move (0,-10)
                         , openPolygon [(43,-35),(0,40),(45,0)]
                             |> filled darkYellow
                         ]


        myFrontSky = square 200 |> filled pink
        myDog = rect 100 65 |> filled (rgb 204 102 0)
        myabcdefghijklmnopqrstuvwxyz = rect 100 40 |> filled (rgb 255 255 102)
        myMoon = circle 10 |> filled yellow
    in ("CuriousJackal",myWord,"8","Pyramid","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "pheasant" -- put your work here (in quotes) --
        myCode = 440 -- put your code number here, which came with your word (not in quotes)--
        score = 10 -- number out of 10
        myShapes model = [ myBackground
                         , square 10
                             |> filled red
                             |> rotate model.time
                         , oval 30 25
                             |> filled darkBrown
                        ,roundedRect 8 15 0
                             |> filled darkBrown
                             |> rotate (degrees -30)
                             |> move (15,10)
                        ,circle 7
                             |> filled darkBlue
                             |> rotate (degrees -30)
                             |> move (20,20)
                        ,triangle 3
                             |> filled lightBrown
                             |> move (28,20)
                        ,circle 1.5
                             |> filled black
                             |> move (21,20)
                        , feathers
                             |> rotate (degrees (25*(sin model.time)))
                         ,circle 2
                           |> filled (rgb 255 0 0)
                           |> move (20,20)
                         ,rect 5 20
                           |> filled charcoal
                           |> scale 0.5
                           |> move (-4,-15)
                         ,rect 5 20
                           |> filled charcoal
                           |> scale 0.5
                           |> move (0,-15)


                           ]


        feathers =
          group
            [  curve (0,0) [Pull (10,0) (20,-10)]
                           |> filled darkRed
                           |> scale 1.5
                           |> rotate (degrees 30)
                           |> move (-42,0)
                         ,curve (0,0) [Pull (10,0) (20,-10)]
                           |> filled darkRed
                           |> scale 1.5
                           |> rotate (degrees 30)
                           |> move (-42,5)
                         ,curve (0,0) [Pull (10,0) (20,-10)]
                           |> filled darkBrown
                           |> scale 1.5
                           |> rotate (degrees 30)
                           |> move (-42,3)]







        myBackground = square 200 |> filled lightGrey
    in ("SmilingCapsicum",myWord,"8","World's best pheasant in the wind!","Saginaw"

       ,myShapes)

  ,    let
        myWord = "jumper" -- put your work here (in quotes) --
        myCode = 374-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- score out of 10

        myShapes model = [ myBackground
                         , roundedRect 30 40 5
                           |> filled (rgb 10 110 80)
                           |> move (0 , 0)
                         , roundedRect 12 35 5
                           |> filled (rgb 10 110 80)
                           |> rotate (degrees 30)
                           |> move (18, 3)
                         , roundedRect 12 35 5
                           |> filled (rgb 10 110 80)
                           |> rotate (degrees -30)
                           |> move (-18, 3)
                         , circle 8
                           |> filled pink
                           |> rotate (degrees 30)
                           |> move (0, 25)
                         , triangle 8
                           |> filled darkPurple
                           |> rotate (degrees 30)
                           |> move (0,-3)
                         , circle 4
                           |> filled darkPurple
                           |> rotate (degrees 30)
                           |> move (4,3)
                         , circle 4
                           |> filled darkPurple
                           |> rotate (degrees 30)
                           |> move (-4,3)
                         , circle 3
                           |> filled darkPurple
                           |> rotate (degrees 30)
                           |> move (0,0)
                         ]

        myBackground = square 200 |> filled pink
    in ("ExcellentMint",myWord,"8","Jumper","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "toe" -- put your work in quotes here (in quotes) --
        myCode = 527 -- put your code number here, which came with your word --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                          , oval 35 15
                             |> filled footColor
                             |> move (0,15)
                         , oval 15 50
                             |> filled footColor
                             |> move (9,-5)
                             |> rotate (degrees -10)
                         , curve (14,-4) [Pull (-37,-11) (11,-32) ]
                             |> filled footColor
                             |> rotate (degrees 220)
                             |> move (15,0)
                         , oval 16 22
                             |> filled footColor
                             |> move (5,-25)
                         , oval 12 15
                             |> filled footColor
                             |> move (-14,30)
                         , oval 6 10
                             |> filled footColor
                             |> move (-4,28)
                         , oval 6 10
                             |> filled footColor
                             |> move (3,28)
                         , oval 6 10
                             |> filled footColor
                             |> move (9.5,27)
                         , oval 6 10
                             |> filled footColor
                             |> move (16,25.5)
                         , rect 15 7
                             |> filled blue
                             |> move (-37,28)
                         , triangle 7
                             |> filled blue
                             |> move (-30,28)

                             ]
        footColor = rgb 255 255 153
        myBackground = square 200 |> filled pink
    in ("DecisiveKelp",myWord,"8","toe","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "ocelot"-- put your work here (in quotes) --
        myCode = 414 --put your code number here, which came with your word
        score = 10 -- number out of 10


        myShapes model = [ group [myBackground
                         , circle 10
                             |> filled darkBrown
                             |> rotate model.time
                             |> move (-14,17)
                         , oval 50 35
                             |> filled brown
                             |> move (14, 6)
                         , rect 49 20
                              |> filled brown
                              |> move (14,2)
                       , rect 4 32
                              |> filled brown
                              |> move (5, -16)
                        , rect 4 32
                              |> filled brown
                              |> move (-5, -20)
                         , rect 4 32
                              |> filled brown
                              |> move (20, -20)
                           , rect 4 32
                               |> filled brown
                               |> move (26, -16)
                           , triangle 5
                             |> filled brown
                             |> move (-22, 25)
                           , triangle 5
                              |> filled brown
                               |> rotate (degrees -60)
                               |> move (-10, 26)
                            , triangle 3
                                 |> filled pink
                                 |> rotate (degrees 30)
                                 |> move (-15, 16)
                             , curve (5,0) [Pull (8,0) (9,-8)]
                                 |> filled (rgb 230 125 50)
                                 |> rotate (degrees 270)
                                 |> move (-14.8, 18)
                            ,  curve (5,0) [Pull (8,0) (9,-8)]
                                 |> filled (rgb 230 125 50)
                                 |> rotate (degrees -330)
                                 |> move (-19, 11.2)
                             , circle 2.5
                                  |> filled white
                                  |> move (-18, 21)
                               , circle 2.5
                                  |> filled white
                                  |> move (-12.3, 21)
                             , circle 1
                                |> filled black
                                |> move (-18, 21)
                           , circle 1
                                |> filled black
                                |> move (-12.3, 21)
                           , rect 20  5
                                |> filled brown
                                |> move (45, 6)
                          , oval 15 10
                            |> filled brown
                            |> move (45, 6)
                         , circle 6
                             |> filled darkBrown
                             |> move (55, 6)
                         , oval 3 2
                             |> filled pink
                             |> move (-14.5, 11)
                        -- , graphPaper 10 |> makeTransparent 0.4
                           ]
                           |> move (-15, 0)
                         ]

        myBackground = square 200 |> filled green
    in ("EncouragingMarigold",myWord,"8","ocelot(it's a type of cat)","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "grapes"
        myCode = 342
        score = 10 -- number out of 10
        myShapes model =
                        [ myBackground
                          , group [oval 10 15
                            |> filled darkPurple
                            |> move (30,22)
                          , oval 10 15
                            |> filled darkPurple
                            |> move (-15,22)
                          , oval 10 15
                            |> filled darkPurple
                            |> move (-30,22)
                          , oval 10 15
                            |> filled darkPurple
                            |> move (0,22)
                          , oval 10 15
                            |> filled darkPurple
                            |> move (15,22)
                          , rect 61 5
                            |> filled darkBrown
                            |> move (33,60)
                            |> rotate (degrees 80)
                          , rect 65 5
                            |> filled darkBrown
                            |> move (-1,32)
                          , rect 30 5
                            |> filled darkBrown
                            |> move (-41,23)
                            |> rotate (degrees 45)
                          , rect 100 5
                            |> filled darkBrown
                            |> move (0,13)
                          , oval 15 20
                           |> filled darkPurple
                           |> move (0,0)
                          , oval 15 20
                           |> filled darkPurple
                           |> move (20,0)
                          , oval 15 20
                           |> filled darkPurple
                           |> move (40,0)
                          , oval 15 20
                           |> filled darkPurple
                           |> move (-20,0)
                          , oval 15 20
                           |> filled darkPurple
                           |> move (-40,0)
                          ] |> scale 0.8 |> move (0, -15)
                          ]

        myBackground = square 200 |> filled lightBlue
    in ("ResonantZebra",myWord,"8","Grapes","Kaufman"

       ,myShapes)

  ,    let
        myWord = "quiver" -- put your work here (in quotes) --
        myCode = 462 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
           ,rect 60 3
            |> filled brown
            |> rotate (degrees 190)
            |> move (9,5)
           ,rect 60 3
            |> filled brown
            |> rotate (degrees 190)
            |> move (7,10)
           ,rect 60 3
            |> filled brown
            |> rotate (degrees 190)
            |> move (9,0)
           , roundedRect 5 40 5
            |> filled darkBrown
            |> scale 2
            |> scaleX 2
            |> rotate (degrees 280)
            |> move (-5,0)
           , curve (-37,1) [Pull (-13,42) (34,14) ]
            |> outlined (solid 1) (rgb 210 105 30)
            |> move (-5,0)
           , curve (0,0) [Pull (5,0) (10,-3)]
            |> filled lightRed
            |> move (34,3)
           , curve (0,0) [Pull (5,0) (10,-3)]
          |> filled lightRed
          |> move (35,4)
          , curve (0,0) [Pull (5,0) (10,-3)]
          |> filled lightRed
          |> move (34,8)
           , curve (0,0) [Pull (5,0) (10,-3)]
          |> filled lightRed
          |> move (34,9)
           , curve (0,0) [Pull (5,0) (10,-3)]
          |> filled lightRed
          |> move (34,14)
           , curve (0,0) [Pull (5,0) (10,-3)]
          |> filled lightRed
          |> move (33,13)
           , curve (0,0) [Pull (5,0) (10,-3)]
          |> filled lightRed
          |> rotate (degrees 40)
          |> move (33,16)
           , curve (0,0) [Pull (5,0) (10,-3)]
          |> filled lightRed
          |> rotate (degrees 40)
          |> move (31,16)
           , curve (0,0) [Pull (5,0) (10,-3)]
          |> filled lightRed
          |> rotate (degrees 40)
          |> move (33,10)
           , curve (0,0) [Pull (5,0) (10,-3)]
          |> filled lightRed
          |> rotate (degrees 40)
          |> move (31,10)
           , curve (0,0) [Pull (5,0) (10,-3)]
          |> filled lightRed
          |> rotate (degrees 40)
          |> move (34,6)
           , curve (0,0) [Pull (5,0) (10,-3)]
          |> filled lightRed
          |> rotate (degrees 30)
          |> move (36,6)
           , rect 5 20
          |> filled darkCharcoal
          |> rotate (degrees 280)
          |> move (0,1)

         -- , graphPaper 10 |> makeTransparent 0.4
          ]
        myBackground = square 200 |> filled darkGreen
    in ("ShaggyAloe",myWord,"8","Quiver","Kaufman"

       ,myShapes)

  ,    let
        myWord = "shirt"-- put your work here (in quotes) --
        myCode = 485-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10
        myShapes model = [ myBackground
                         ,shirt
                         --, graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled grey

        shirt  = group [
                             rect 50 65
          |> filled (rgb 0 0 0)
          ,oval 45 30
          |> filled grey
          |>move (0,37)
          ,rect 15 35
          |> filled black
          |>rotate (degrees 45)
          |>move(30,5)
          ,rect 15 35
          |> filled black
          |>rotate (degrees -45)
          |>move(-30,5)
           ]


    in ("RaspyWolverine",myWord,"8","T-shirt","Kaufman"

       ,myShapes)

  ,    let
        myWord = "waterfall"-- put your work here (in quotes) --
        myCode = 559-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10
        myShapes model = [ myBackground
                         , group [rectangle 60 50
                             |> filled darkGrey
                             |> move (0, 60)
                         , oval 10 100
                             |> filled lightBlue
                             |> move (0, -12)
                         , oval 10 102
                             |> filled lightBlue
                             |> move (8, -14)
                         , oval 10 106
                             |> filled lightBlue
                             |> move (16, -16)
                         , oval 10 110
                             |> filled lightBlue
                             |> move (24, -18)
                         , oval 10 98
                             |> filled lightBlue
                             |> move (-8, -12)
                         , oval 10 100
                             |> filled lightBlue
                             |> move (-16, -14)
                         ,  oval 10 107
                             |> filled lightBlue
                             |> move (-24, -18)

                          ] |> scale 0.58 |> move (0, -10)

                         ]

        myBackground = square 200 |> filled lightCharcoal
    in ("RemarkableWren",myWord,"8","Waterfall","Kaufman"

       ,myShapes)

  ,    let
        myWord = "lamb"
        myCode = 383
        score = 10 -- number out of 10

        myShapes model = ([ myBackground
                        -- , graphPaper 10 |> makeTransparent 0.4
                         ] ++ sheepBody ++ sheepLegs ++ sheepHead ++ [polygon [(30 + (sin(model.time)*4), 20 + (sin(model.time)*4)), (40,20)]
                    |> outlined (solid 1) black
                    |> move (0,-8) ,
                    roundedRect 20 5 5
                    |> filled white
                    |> move (-33,0)
                    |> rotate ((sin model.time) /2)
                    ])

        sheepLegs = [group [
                    openPolygon [(10,-10),(20,-40)]
                         |> outlined (solid 6) (rgb 255 255 255)
                    , openPolygon [(5,-10),(10,-40)]
                         |> outlined (solid 6) (rgb 255 255 255)
                    , openPolygon [(-5,-10),(-10,-40)]
                         |> outlined (solid 6) (rgb 255 255 255)
                    , openPolygon [(-15,-10),(-20,-40)]
                         |> outlined (solid 6) (rgb 255 255 255)
                             ]
                             |> move (0 , 0)
                    ]

        sheepHead = [group [
                   curve (40,0) [Pull (20,20) (0,35), Pull (-3,20) (21,0) ]
                    |> filled (rgb 255 255 255)
                    |> scale 0.4
                    |> move (-13, 9)
                    , curve (40,0) [Pull (20,20) (0,35), Pull (-3,20) (21,0) ]
                    |> filled black
                    |> scale 0.2
                    |> move (-7, 9)
                    , oval 30 20
                    |> filled white
                    , circle 1
                    |> filled black
                    |> move (5,6)

                    ]
                             |> move (25 , 15)
                    ]



        sheepBody = [group [circle 10
                             |> filled white
                             |> move (-28 , 14)
                         , circle 10
                             |> filled white
                             |> move (-20 , 23)
                         , circle 10
                             |> filled white
                             |> move (-10 , 26)
                         , circle 10
                             |> filled white
                             |> move (-0 , 27)
                         , circle 10
                             |> filled white
                             |> move (10 , 24)
                         , circle 10
                             |> filled white
                             |> move (-29 , 8)
                         , circle 10
                             |> filled white
                             |> move (20 , 17)
                         , circle 10
                             |> filled white
                             |> move (25 , 8)
                         , circle 10
                             |> filled white
                             |> move (24 , 0)
                         , circle 10
                             |> filled white
                             |> move (20 , -10)
                         , circle 10
                             |> filled white
                             |> move (10 , -17)
                         , circle 10
                             |> filled white
                             |> move (0 , -22)
                         , circle 10
                             |> filled white
                             |> move (-10 , -21)
                         , circle 10
                             |> filled white
                             |> move (-18 , -16)
                         , circle 10
                             |> filled white
                             |> move (-26 , -6)
                         , circle 25
                             |> filled white
                             ] |> scale 0.75
                             |> move (0 , -10)
                             ]



        myBackground = square 200 |> filled pink










    in ("RareWolf",myWord,"8","Turnips","Kaufman"

       ,myShapes)

  ,    let
        myWord = "black" -- put your work here (in quotes) --
        myCode = 234 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10
        myShapes model = [ myBackground
                        , wedge 15 0.75
          |> filled black
          |> move (35,0)
                             |> rotate model.time


                       , circle 4
          |> filled black
          |> move (10,0)

          , circle 4
          |> filled black
          |> move (-10,0)

          , circle 4
          |> filled black
          |> move (-30,0)]

        myBackground = square 200 |> filled white
    in ("QuietWhale",myWord,"8","Griffon's Black Pacman","Kaufman"

       ,myShapes)

  ,    let
        myWord = "celery"
        myCode = 551
        score = 10 -- number out of 10

        myShapes model = [ myBackground

                         -- celery stick
                         , rect 10 50
                             |>filled lightGreen

                         -- green lines
                         , rect 1 50
                            |> filled green
                            |> move (-2.5, 0)

                         , rect 1 50
                            |> filled green
                            |> move (0, 0)

                         , rect 1 50
                            |> filled green
                            |> move (2.5, 0)


                         -- eating part
                         , square (20 * (bites model.time))
                             |> filled lightBrown
                             |> move (0, 30)
                         ]


        bites t =
          let
            intPart = floor t
            cycle = floor ( 0.2 * t )
          in
            toFloat <| intPart - 5 * cycle

        myBackground = square 200 |> filled lightBrown
    in ("ShockingBoar",myWord,"8","The title is \"om nom celery\"","Saginaw"

       ,myShapes)

  ,    let
        myWord = "eyes" -- put your work here (in quotes) --
        myCode = 315 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10
        myShapes model = [ myBackground
                        , group [ curve (1,0) [Pull (23,24) (48,0), Pull (23,-24) (0,0) ]
                                  |> filled (rgb 255 255 255)
                                  |> move (2,-10)
                        , curve (1,0) [Pull (23,24) (48,0), Pull (23,-24) (0,0) ]
                                  |> filled (rgb 255 255 255)
                                  |> move (-50,-10)
                        , circle 10
                                  |> filled lightBlue
                                  |> scale 1.25
                                  |> move (26,-10)
                        , circle 10
                                  |> filled lightBlue
                                  |> scale 1.25
                                  |> move (-26,-10)
                        , circle 10
                                  |> filled black
                                  |> scale 0.5
                                  |> move (26, -10)
                        , circle 10
                                  |> filled black
                                  |> scale 0.5
                                  |> move (-26, -10)
                       , curve (0,4) [Pull (33,7) (48,-3), Pull (32,2) (0,0) ]
                                  |> filled (rgb 0 0 0)
                                  |> move (-4, 5)
                                  |> mirrorX
                      ,curve (0,4) [Pull (33,7) (48,-3), Pull (32,2) (0,0) ]
                                  |> filled (rgb 0 0 0)
                                  |> move (4, 5)
                      , curve (1,0) [Pull (23,24) (48,0) ]
                                  |> filled (rgb 255 197 132)
                                 |> move (2, -10)
                                 , curve (1,0) [Pull (23,24) (48,0) ]
                                  |> filled (rgb 255 197 132)
                                 |> move (-50, -10)
                                , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (-40, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (-45, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (-43, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (-47, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (-38, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (-35, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (-32, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (-29, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (-26, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (-23, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (-20, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (-17, -15)
           , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (-14, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (-11, -15)
           , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (-8, -15)
           , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (-5, -15)
           , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (10, -15)
           , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (7, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (4, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (13, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (16, -15)
                , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (19, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (22, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (25, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (28, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (31, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (34, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (37, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (40, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (43, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (46, -15)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 120)
          |> move (49, -15)

                -- , graphPaper 10
                         |> makeTransparent 0.4
                           ] |> scale 0.8

                           ]
        myBackground = square 200 |> filled purple

    in ("SecretiveAlmond",myWord,"8","eyes","Kaufman"

       ,myShapes)

  ,    let
        myWord = "bus"-- put your work here (in quotes) --
        myCode = 248 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10
        myShapes model = [ myBackground
                         ,rect 80 40
          |> filled yellow
          ,square 20
          |> filled black
           |> move (20,-20)
          |> rotate model.time
           ,square 20
          |> filled black
           |> move (-20,-20)
          |> rotate model.time
          ,rect 10 20
          |> filled lightBlue
          |> move (-35,10)

         ,rect 10 10
          |> filled lightBlue
          |> move (-15,5)

          ,rect 10 10
          |> filled lightBlue
          |> move (5,5)

          ,rect 10 10
          |> filled lightBlue
          |> move (25,5)

          ,rect 5 3
           |> filled black
           |> move (42,-19)

           ,curve (0,20) [Pull (12,0) (0,-1) ]
           |> filled gray
           |> move (42,-18)




                         ]

        myBackground = square 200 |> filled darkGray
    in ("QuietWhale",myWord,"8","Griffon's School Bus","Kaufman"

       ,myShapes)

  ,    let
        myWord ="goldfish" -- put your work here (in quotes) --
        myCode = 336-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , goldfish model.time
                        -- , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled blue

        goldfish time = group [
                             oval 30 65
                             |> filled (rgb 255 128 0)
                             ,circle 2
                             |> filled (rgb 0 0 0)
                             |> move (6,23)
                            ,curve (25,17) [Pull (56,31) (31,0), Pull (20,0) (-11,0) ]
                             |> filled (rgb 255 128 0)
                             |>rotate (degrees -80)
                             |> move(7,11.2)
                            ,curve (0,47) [Pull (68,127) (62,14), Pull (28,-47) (0,16) ]
                             |> filled (rgb 255 128 0)
                             |>scale 0.4
                             |>rotate (degrees -90)
                             |>move (-12,-26)
                             ,curve (-85,0) [Pull (329,-67) (117,0), Pull (162,0) (0,0) ]
                             |> filled (rgb 255 128 0)
                             |>scale 0.2
                             |>rotate (degrees 270)
                             |>move (-11,7)
           ]
           |> rotate (degrees 90)
           |> move (sin(1*time),(5*sin(1*time)))
           |> scale 0.9



    in ("RaspyWolverine",myWord,"8","Goldfish","Kaufman"

       ,myShapes)

  ,    let
        myWord = "tomato" -- put your work here (in quotes) --
        myCode = 529 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , circle 25
                             |> filled red

                         , isosceles 7.5 30
          |> filled (rgb 100 190 100)
          |> rotate 90
          |> move (-10, 20)

                         , isosceles 7.5 30
          |> filled (rgb 100 190 100)
          |> rotate 180
          |> move (10, 20)

                         , isosceles 7.5 30
          |> filled (rgb 100 190 100)
          |> rotate 700
          |> move (-10, 20)

                           , isosceles 7.5 30
          |> filled (rgb 100 190 100)
          |> rotate 600
          |> move (-10, 20)

                           , isosceles 7.5 30
          |> filled (rgb 100 190 100)
          |> rotate 10
          |> move (10, 20)

                           , isosceles 7.5 30
          |> filled (rgb 100 190 100)
          |> rotate 60
          |> move (10, 20)

                           , isosceles 7.5 30
          |> filled (rgb 100 190 100)
          |> rotate 600
          |> move (10, 20)

                           , isosceles 7.5 30
          |> filled (rgb 100 190 100)
          |> rotate 500
          |> move (-10, 20)

                             , isosceles 7.5 30
          |> filled (rgb 100 190 100)
          |> rotate 700
          |> move (10, 20)

                              , oval 30 15
          |> filled (rgb 100 190 100)
          |> move (0, 18)

                        -- , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled pink
    in ("ElatedMango",myWord,"8","tomato","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "xylophone" -- put your work here (in quotes) --
        myCode = 572 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , rect 10 15
                              |> filled red
                              |> scale 1.15
                              |> move (-30,-10)
                         , rect 10 20
                              |> filled orange
                              |> scale 1.20
                              |> move (-20,-10)
                         , rect 10 25
                              |> filled yellow
                              |> scale 1.25
                              |> move (-10,-10)
                         , rect 10 30
                              |> filled lightGreen
                              |> scale 1.30
                              |> move (0,-10)
                         , rect 10 35
                              |> filled lightBlue
                              |> scale 1.35
                              |> move (10,-10)
                         , rect 10 40
                              |> filled darkBlue
                              |> scale 1.40
                              |> move (20,-10)
                         , rect 10 45
                              |> filled purple
                              |> scale 1.45
                              |> move (30,-10)
                         , rect 10 15
                              |> outlined (solid 1) white
                              |> scale 1.15
                              |> move (-30,-10)
                         , rect 10 20
                              |> outlined (solid 1) white
                              |> scale 1.20
                              |> move (-20,-10)
                         , rect 10 25
                              |> outlined (solid 1) white
                              |> scale 1.25
                              |> move (-10,-10)
                         , rect 10 30
                              |> outlined (solid 1) white
                              |> scale 1.30
                              |> move (0,-10)
                         , rect 10 35
                              |> outlined (solid 1) white
                              |> scale 1.35
                              |> move (10,-10)
                         , rect 10 40
                              |> outlined (solid 1) white
                              |> scale 1.40
                              |> move (20,-10)
                         , rect 10 45
                              |> outlined (solid 1) white
                              |> scale 1.45
                              |> move (30,-10)
                         , circle 10
                              |> filled lightGray
                              |> scale 0.5
                              |> move (0,20+10*sin(model.time))
                         , rect 10 75
                              |> filled lightBlue
                              |> scale 0.5
                              |> rotate (degrees 300)
                              |> move (20,30+10*sin(model.time))
                         , circle 10
                              |> filled lightGray
                              |> scale 0.5
                              |> move (-20,20+10*sin(5*model.time))
                         , rect 10 75
                              |> filled lightBlue
                              |> scale 0.4
                              |> rotate (degrees 420)
                              |> move (-35,30+10*sin(5*model.time))

                       -- , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled lightBrown


    in ("ScreechingAlligator",myWord,"8","xylophone","Kaufman"

       ,myShapes)

  ,    let
        myWord = "door"-- put your work here (in quotes) --
        myCode = 299-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , rect 50 90
                           |> filled (rgb 110 60 10)
                         , circle 3
                           |> filled black
                           |> move (15,-1)
                         , square 15
                           |> filled lightCharcoal
                           |> move (-10,33)
                           , square 15
                           |> filled lightCharcoal
                           |> move (10,33)
                           , square 15
                           |> filled lightCharcoal
                           |> move (-10,13)
                           , square 15
                           |> filled lightCharcoal
                           |> move (10,13)
                         ]

        myBackground = square 200 |> filled lightCharcoal
    in ("ExcellentMint",myWord,"8","Door","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "violet"-- put your work here (in quotes) --
        myCode = 549-- put your code number here, which came with your word (not in quotes) --
        score = 10

        violet = group [
                          curve (12,0) [Pull (7,26) (-1,0) ]
                             |> filled (rgb 187 0 228)
                             |> rotate ( degrees -390)
                             |> move (-3,5)
                         , curve (12,0) [Pull (7,26) (-1,0) ]
                             |> filled (rgb 187 0 228)
                             |> rotate ( degrees -325)
                             |> move (-10,-3)
                         , curve (12,0) [Pull (7,26) (-1,0) ]
                             |> filled (rgb 187 0 228)
                             |> rotate ( degrees -250)
                             |> move (-3,-5)
                         ,curve (12,0) [Pull (7,26) (-1,0) ]
                             |> filled (rgb 187 0 228)
                             |> rotate ( degrees -190)
                             |> move (3,-4)
                         , curve (12,0) [Pull (7,26) (-1,0) ]
                             |> filled (rgb 187 0 228)
                             |> rotate ( degrees -125)
                             |> move (3,3)
                         ,  curve (12,0) [Pull (5,21) (5,-2) ]
                             |> filled yellow
                             |> move (-8, 7)
                             |> rotate (degrees -65) ]

        violet2 = group [
                     curve (60,0) [Pull (10,53) (0,0), Pull (7,-34) (76,-24) ]
          |> filled (rgb 137 83 143)
          |> move (-20,10)
          |> scale 0.50
          ,curve (72,11) [Pull (13,55) (0,0), Pull (7,-45) (82,-4) ]
          |> filled (rgb 110 90 142)
          |> rotate (degrees 290)
          |> scale 0.50
          |> move (4,38)
          , curve (72,11) [Pull (13,55) (0,0), Pull (7,-45) (82,-4) ]
           |> filled (rgb 133 83 142)
           |> scale 0.50
           |> rotate (degrees -150)
           |> move (47,20)
           , curve (54,26) [Pull (3,58) (0,0), Pull (20,-65) (69,-2) ]
          |> filled (rgb 133 83 183)
          |> scale 0.50
          |> move (10,-25)
          |> rotate (degrees 90)
           ,curve (58,-5) [Pull (35,19) (0,0), Pull (1,-22) (62,-2) ]
          |> filled (rgb 255 184 255)
          |> scale 0.30
          |> move (5,6)
          |> rotate (degrees 360)
           ,curve (67,-3) [Pull (10,13) (0,0), Pull (-10,-32) (59,-2) ]
          |> filled (rgb 255 165 35)
          |> scale 0.40
          |> rotate (degrees 246)
          |> move (20,27)
          , circle 2
          |> filled (rgb 226 186 77)
          |> move (20,24)
          ]






        myShapes model = [ myBackground

                         -- , graphPaper 10 |> makeTransparent 0.4
                         , violet
                             |> rotate ( degrees 50*model.time)
                             |> move (0, if sin (model.time) > 0
                                           then 60* cos (model.time)
                                           else -200 )
                         , violet
                             |> rotate ( degrees 40 *model.time)
                             |> move (25, if sin (2 + model.time) > 0
                                           then 60* cos (2 + model.time)
                                           else -200 )

                         , violet
                             |> rotate ( degrees 55 *model.time)
                             |> move (-25, if sin ( model.time - 4) > 0
                                           then 60* cos (model.time - 4)
                                           else -200 )
                         , violet2
                             |> rotate (degrees 50 *model.time)
                             |> move (10, if sin (4 + model.time) > 0
                                           then 60* cos (4 + model.time)
                                           else -200)

                         ]


        myBackground = square 200 |> filled lightBlue
    in ("SparklingCardamom",myWord,"8","Falling Violets","Saginaw"

       ,myShapes)

  ,    let
        myWord = "car" -- put your work here (in quotes) --
        myCode = 256-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- numberoutof 10

        myShapes model = [ myBackground

                         , group [ rect 100 30
                          |> filled yellow
                          |> move (0 , -15)
                         , rect 70 45
                          |> filled yellow
                         , square 20
                          |> filled (rgb 197 204 225)
                          |> move (-14 , 10)
                         , square 20
                          |> filled (rgb 197 204 225)
                          |> move (14 , 10)
                         , square 27
                          |> outlined (solid 0.5) black
                          |> move (-15, -14)
                         ,  square 27
                          |> outlined (solid 0.5) black
                         |> move (15, -14)
                          , rect 4 2
                          |> filled black
                          |> move (-5 , -3)
                         , rect 4 2
                          |> filled black
                          |> move (25 , -3)
                         , rect 4 2
                          |> filled black
                          |> move (-5 , -3)
                         , circle 12
                          |> filled black
                          |> move (-16,-40)
                         , circle 12
                          |> filled black
                          |> move (16,-40)
                         , rect 8 8
                          |> filled (if sin(1*model.time)>0 then rgb 255 0 0 else blank)
                          |> move (47,-3)
                         , rect 8 8
                          |> filled (if sin(1*model.time)>0 then rgb 255 0 0 else blank)
                          |> move (-47,-3)
                         , curve (0,0) [Pull (38,20) (70,0) ]
                          |> filled yellow
                          |> move ( -35,22)




                       --  , graphPaper 10 |> makeTransparent 0.4
                         ] |> scale 0.8
                         ]

        myBackground = square 200 |> filled lightCharcoal
    in ("ExcellentMint",myWord,"8","car","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "moustache"-- put your work here (in quotes) --
        myCode = 405 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , oval 60 55
                         |> filled (rgb 255 187 106)
                         |> scaleY -1.25
                         , circle 2
                         |> filled black
                         |> move (-10,10)
                          , circle 2
                         |> filled black
                         |> move (10,10)
                         --, graphPaper 10
                        -- |> makeTransparent 0.4
                         ,circle 10
                         |> filled lightRed
                         |> scaleY -0.5
                         |> move (0,-15)
                         ,group [ group [oval 21 7.5
                         |> filled black
                         |>move (-10,0)
                         ]

                         |> rotate (degrees (10*(sin (model.time+pi))))
                         ]
                         |> move(0,-10)

                         ,group [ group [oval 21 7.5
                         |> filled black
                         |>move (10,0)
                         ]

                         |> rotate (degrees (10*(sin model.time)))
                         ]
                         |> move(0,-10)
                      ]



        myBackground = square 200 |> filled pink
    in ("QuaintWasabi",myWord,"8","Moving Mustache By Faiz","Kaufman"

       ,myShapes)

  ,    let
        myWord = "semicircle" -- put your work here (in quotes) --
        myCode = 482 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , circle 10
                             |> filled red
                             |> rotate model.time
                         , rect 20 35
                             |> filled pink
                             |> rotate (degrees 90)
                        -- , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled pink
    in ("EnchantingMaple",myWord,"8","square","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "yacht"
        myCode = 573
        scores = 10 -- number out of 10

        myShapes model = [ myBackground
                   , rect 80 30
                       |> filled white
                       |> move (0,10)
                   , rect 60 10
                       |> filled blue
                       |>  move (0,10)
                   , triangle 20
                       |> filled black
                       |> rotate ( degrees 270)
                       |> move (-10,-10)
                   , triangle 20
                       |> filled black
                       |> rotate ( degrees 270)
                       |> move (-30,-10)
                  , triangle 20
                       |> filled black
                       |> rotate ( degrees 270)
                       |> move (30,-10)
                   , triangle 20
                       |> filled black
                       |> rotate ( degrees 270)
                       |> move (10,-10)
                   , triangle 13
                       |> filled black
                       |> move (20,-23)
                       |> rotate ( degrees 90)
                   , triangle 13
                       |> filled black
                       |> move (-20,-23)
                       |> rotate ( degrees 90)
                   , triangle 13
                       |> filled black
                       |> move (0,-23)
                       |> rotate ( degrees 90)
                   , rect 200 40
                       |> filled blue
                       |> move (0,-50)
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (90,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (80,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (70,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (60,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (50,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (40,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (30,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (20,-40)
                       |> move (1,(sin(model.time) *10 ) )
                  , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (10,-40)
                       |> move (1,(sin(model.time) *10 ) )
                  , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (0,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (-10,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (-20,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (-30,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (-40,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (-50,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (-60,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (-70,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (-80,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (-90,-40)
                       |> move (1,(sin(model.time) *10 ) )
                    ]


        myBackground = square 200 |> filled lightBlue

    in ("ResonantZebra",myWord,"8","Yacht","Kaufman"

       ,myShapes)

  ,    let
        myWord = "lamb"
        myCode = 383
        score = 10 -- number out of 10

        myShapes model = ([ myBackground
                        -- , graphPaper 10 |> makeTransparent 0.4
                         ] ++ sheepBody ++ sheepLegs ++ sheepHead ++ [polygon [(30 + (sin(model.time)*4), 20 + (sin(model.time)*4)), (40,20)]
                    |> outlined (solid 1) black
                    |> move (0,-8) ,
                    roundedRect 20 5 5
                    |> filled white
                    |> move (-33,0)
                    |> rotate ((sin model.time) /2)
                    ])

        sheepLegs = [group [
                    openPolygon [(10,-10),(20,-40)]
                         |> outlined (solid 6) (rgb 255 255 255)
                    , openPolygon [(5,-10),(10,-40)]
                         |> outlined (solid 6) (rgb 255 255 255)
                    , openPolygon [(-5,-10),(-10,-40)]
                         |> outlined (solid 6) (rgb 255 255 255)
                    , openPolygon [(-15,-10),(-20,-40)]
                         |> outlined (solid 6) (rgb 255 255 255)
                             ]
                             |> move (0 , 0)
                    ]

        sheepHead = [group [
                   curve (40,0) [Pull (20,20) (0,35), Pull (-3,20) (21,0) ]
                    |> filled (rgb 255 255 255)
                    |> scale 0.4
                    |> move (-13, 9)
                    , curve (40,0) [Pull (20,20) (0,35), Pull (-3,20) (21,0) ]
                    |> filled black
                    |> scale 0.2
                    |> move (-7, 9)
                    , oval 30 20
                    |> filled white
                    , circle 1
                    |> filled black
                    |> move (5,6)

                    ]
                             |> move (25 , 15)
                    ]



        sheepBody = [group [circle 10
                             |> filled white
                             |> move (-28 , 14)
                         , circle 10
                             |> filled white
                             |> move (-20 , 23)
                         , circle 10
                             |> filled white
                             |> move (-10 , 26)
                         , circle 10
                             |> filled white
                             |> move (-0 , 27)
                         , circle 10
                             |> filled white
                             |> move (10 , 24)
                         , circle 10
                             |> filled white
                             |> move (-29 , 8)
                         , circle 10
                             |> filled white
                             |> move (20 , 17)
                         , circle 10
                             |> filled white
                             |> move (25 , 8)
                         , circle 10
                             |> filled white
                             |> move (24 , 0)
                         , circle 10
                             |> filled white
                             |> move (20 , -10)
                         , circle 10
                             |> filled white
                             |> move (10 , -17)
                         , circle 10
                             |> filled white
                             |> move (0 , -22)
                         , circle 10
                             |> filled white
                             |> move (-10 , -21)
                         , circle 10
                             |> filled white
                             |> move (-18 , -16)
                         , circle 10
                             |> filled white
                             |> move (-26 , -6)
                         , circle 25
                             |> filled white
                             ] |> scale 0.75
                             |> move (0 , -10)
                             ]



        myBackground = square 200 |> filled pink
    in ("RareWolf",myWord,"8","Lamb","Kaufman"

       ,myShapes)

  ,    let
        myWord = "yacht"
        myCode = 573
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                   , rect 80 30
                       |> filled white
                       |> move (0,10)
                   , rect 60 10
                       |> filled blue
                       |>  move (0,10)
                   , triangle 20
                       |> filled black
                       |> rotate ( degrees 270)
                       |> move (-10,-10)
                   , triangle 20
                       |> filled black
                       |> rotate ( degrees 270)
                       |> move (-30,-10)
                  , triangle 20
                       |> filled black
                       |> rotate ( degrees 270)
                       |> move (30,-10)
                   , triangle 20
                       |> filled black
                       |> rotate ( degrees 270)
                       |> move (10,-10)
                   , triangle 13
                       |> filled black
                       |> move (20,-23)
                       |> rotate ( degrees 90)
                   , triangle 13
                       |> filled black
                       |> move (-20,-23)
                       |> rotate ( degrees 90)
                   , triangle 13
                       |> filled black
                       |> move (0,-23)
                       |> rotate ( degrees 90)
                   , rect 200 40
                       |> filled blue
                       |> move (0,-50)
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (90,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (80,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (70,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (60,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (50,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (40,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (30,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (20,-40)
                       |> move (1,(sin(model.time) *10 ) )
                  , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (10,-40)
                       |> move (1,(sin(model.time) *10 ) )
                  , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (0,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (-10,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (-20,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (-30,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (-40,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (-50,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (-60,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (-70,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (-80,-40)
                       |> move (1,(sin(model.time) *10 ) )
                   , triangle 10
                       |> filled blue
                       |> rotate ( degrees 330)
                       |> move (-90,-40)
                       |> move (1,(sin(model.time) *10 ) )
                    ]


        myBackground = square 200 |> filled lightBlue

    in ("ResonantZebra",myWord,"8","Wrist","Kaufman"

       ,myShapes)

  ,    let
        myWord = "sheep" -- put your work here (in quotes) --
        myCode = 484 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , oval 40 60
                             |> filled white
                         --, graphPaper 10 |> makeTransparent 0.4
                         , curve (20,0) [Pull (19,12) (0,0), Pull (-25,0) (0,0) ]
                             |> filled white
                             |> move (36, 9)
                             |> rotate (degrees 180)
                         , curve (0,20) [Pull (12,19) (0,0), Pull (-25,0) (0,0) ]
                             |> filled white
                             |> move (36, 9)
                             |> rotate (degrees 90)
                         , curve (0,20) [Pull (12,19) (0,0), Pull (0,25) (0,0) ]
                             |> filled white
                             |> move (-36, 9)
                             |> rotate (degrees 270)
                         , curve (20,0) [Pull (19,12) (0,0), Pull (25,0) (0,0) ]
                             |> filled white
                             |> move (-36, 9)
                             |> rotate (degrees 360)
                         , circle 2
                             |> filled black
                             |> move (-8, 3)
                         , circle 2
                             |> filled black
                             |> move (8, 3)
                         , oval 6 5
                             |> filled charcoal
                             |> move (0, -2)
                         , circle 28
                             |> filled white
                             |> move (0, -50)
                         , circle 10
                             |> filled white
                             |> move (-20, -60)
                         , circle 9
                             |> filled white
                             |> move (-21, -50)
                         , circle 8
                             |> filled white
                             |> move (-23, -43)
                         , circle 8
                             |> filled white
                             |> move (-20, -40)
                         , circle 9
                             |> filled white
                             |> move (-19, -36)
                         , circle 6
                             |> filled white
                             |> move (-21, -31)
                         , circle 7
                             |> filled white
                             |> move (-14, -26)
                         , circle 8
                             |> filled white
                             |> move (14, -31)
                         , circle 8
                             |> filled white
                             |> move (19, -34)
                         , circle 8
                             |> filled white
                             |> move (22, -42)
                         , circle 8
                             |> filled white
                             |> move (24, -49)
                             ]




        myBackground = square 200 |> filled lightBrown
    in ("RemarkableWren",myWord,"8","Sheep","Kaufman"

       ,myShapes)


  ,    let
        myWord = "gray"
        myCode = 344
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , square 100
                             |> filled gray
                             |> rotate model.time
                             |> scale 0.7
                             ]

        myBackground = square 200 |> filled white

    in ("DarkJasmine",myWord,"8","GRAY","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "nose" -- put your work here (in quotes) --
        myCode = 412 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , rect 10 50
                             |> filled yellow
                         , rect 20 20
                             |> filled yellow
                             |> move (0,-20)


                         ]

        myBackground = square 200 |> filled pink
    in ("CuriousJackal",myWord,"8","nose","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "ant mound"
        myCode = 210
        score = 10 -- number out of 10


        myShapes model = [ myBackground
          , curve (25,0) [Pull (0,36) (-25,0) ]
          |> filled (rgb 250 150 0)
          , circle 1
          |> filled red
          |> move ( 2, 2 )
          , circle 1
          |> filled red
          |> move ( -1, 4 )
          , circle 1
          |> filled red
          |> move ( 2, 6 )
          , circle 1
          |> filled red
          |> move ( -1, 8 )
          , circle 1
          |> filled red
          |> move ( 2, 10 )
          , circle 1
          |> filled red
          |> move ( -1, 12 )
          , circle 1
          |> filled red
          |> move ( 2, 14 )
          , circle 1
          |> filled red
          |> move ( -1, 16 )
          , circle 1
          |> filled red
          |> move ( 2, 18 )




                          ]


        myBackground = square 200 |> filled (rgb 34 139 34)

    in ("MistySheep",myWord,"8","Ant Mound","Kaufman"

       ,myShapes)

  ,    let
        myWord = "hip" -- put your work here (in quotes) --
        myCode = 361 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                    --, circle 20
                    --         |> filled blue
                    --         |> rotate model.time
                             , group [ rect 15 40
                             |> filled blue
                             |> move (-10, -30)
                         , rect 15 40
                             |> filled blue
                             |> move (10, -30)
                      , triangle 20
          |> filled red
          |> scaleX 2
          |> rotate (degrees 270)
          |> move (0, 30)
                        , triangle 20
          |> filled red
          |> scaleX 2
          |> rotate (degrees -270)
          |> move (0, 10)
                      , rect 40 10
                      |> filled pink
                      |> move (0, 45)
                      , oval 20 30
                      |> filled gray
                      |> move (0, 50)
                      , rect 10 40
                      |> filled red
                      |> move (20, 23)
                      |> rotate (degrees 45)
                       , rect 10 40
                      |> filled red
                      |> move (-20, 23)
                      |> rotate (degrees -45)
                      , rectangle 20 10
                      |> filled black
                      |> move (-40,-10)
                      , triangle 10
                      |> filled black
                      |> move (-30, -10)


                       --  , graphPaper 10 |> makeTransparent 0.4
                         ] |> scale 0.75
                      ]

        myBackground = square 200 |> filled pink
    in ("ResponsibleAardvark",myWord,"8","Hip","Kaufman"

       ,myShapes)

  ,    let
        myWord = "circle"-- put your work here (in quotes) --
        myCode = 276-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , group [kuiperBelt
                             |> move (0,0)
                             |> rotate model.time
                         , asteroidBelt
                             |> move (0,0)
                             |> rotate model.time
                         , sun
                             |> move (0,0)
                             |> rotate model.time
                         , mercury
                             |> move (0,0)
                             |> rotate (1*model.time)
                         , venus
                             |> move (0,0)
                             |> rotate (-0.7*model.time)
                         , earth
                             |> move (0,0)
                             |> rotate (1.05*model.time+1)
                         , mars
                             |> move (0,0)
                             |> rotate (0.8*model.time+3)
                         , jupiter
                             |> move (0,0)
                             |> rotate (0.4*model.time)
                         , saturn
                             |> move (0,0)
                             |> rotate (0.5*model.time-10)
                         , uranus
                             |> move (0,0)
                             |> rotate (0.2*model.time+2)
                         , neptune
                             |> move (0,0)
                             |> rotate (0.28*model.time)
                             ]
                             |> scale 0.5
                        ]
        mercury = group [ circle 0.9
                       |> filled grey
                       |> move (9.1,0)
                        ]
        sun = group [ circle 4.5
                       |> filled yellow
                        ]
        asteroidBelt = group [ circle 26
                       |> filled brown
                       |> move (0,0)
                   , circle 25.35
                       |> filled black
                       |> move (0,0)
                        ]
        earth = group [ circle 1.56
                       |> filled blue
                       |> move (-5.46,16.9)
                   , circle 0.65
                       |> filled green
                       |> move (-5.46,16.59)
                   , circle 0.65
                       |> filled green
                       |> move (-4.55,17.16)
                        ]
        mars = group [ circle 1.17
                       |> filled red
                       |> move (-15.86,13)
                        ]
        jupiter = group [ circle 3.9
                       |> filled lightBrown
                       |> move (-35.11,1.3)
                   , oval 1.43 1.04
                       |> filled red
                       |> move (-32.5,2.86)
                        ]
        saturn = group [ circle 3.9
                       |> filled lightYellow
                       |> move (-45.5,-18.2)
                   , oval 14.3 0.9
                       |> filled darkYellow
                       |> move (-45.5,-18.2)
                        ]
        uranus = group [ circle 2.6
                       |> filled lightBlue
                       |> move (-50.71,-36.4)
                   , oval 0.39 9.1
                       |> filled lightGrey
                       |> move (-50.7,-36.41)
                        ]
        neptune = group [ circle 2
                       |> filled darkBlue
                       |> move (-55,-40)
                        ]
        venus = group [ circle 1.56
                       |> filled darkYellow
                       |> move (3.9,12.5)
                       , circle 1
                       |> filled yellow
                       |> move (0,0)
                       ]
        kuiperBelt = group [ circle 90
                       |> filled white
                       , circle 89
                       |> filled black
                       , circle 88
                       |> filled white
                       , circle 87
                       |> filled black
                       , circle 86
                       |> filled white
                       , circle 85
                       |> filled black
                           ]
        myBackground = square 200 |> filled black
    in ("EntertainingMillet",myWord,"8","Solar System made of circles","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "football"
        myCode = 768

        myShapes model = [myBackground
                         , group [oval 30 55
                             |> filled brown
                          ,rect 2 10
                           |> filled white
                           |> move (-1 , -1)
                           |> rotate (degrees 90)
                          ,rect 2 10
                            |> filled white
                            |> move (-1 , 4)
                            |> rotate (degrees 90)
                            ,rect 2 10
                            |> filled white
                            |> move (-1 , 9)
                            |> rotate (degrees 90)
                            ,rect 2 10
                            |> filled white
                            |> move (-1 , 14)
                            |> rotate (degrees 90)
                            ,rect 2 10
                              |> filled white
                              |> move (-1, -6)
                              |> rotate (degrees 90)
                            ,rect 2 23
                            |> filled white
                            |> move(-1, 2)
                            ]
                            |> rotate (model.time)










                         ]

        myBackground = square 200 |> filled lightBlue

    in ("DapperJaguar",myWord,"8","Best football","Northlake Woods"

       ,myShapes)


  ,    let
        myWord = "apple"
        myCode = 359
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , group [circle 10
                             |> filled red
                             |> rotate model.time
                         , rectangle 5 10
                             |> filled brown
                             |> move (0,10)
                         , curve (0,0) [Pull (3,4) (10,0), Pull (7.5,-3) (0,0)]
                             |> filled green
                             |> move (0,10)
                             |> rotate (degrees 25)
                             |> rotate (degrees <| 12.5 * sin (2 * model.time) )
                         , circle 5
                             |> filled (if sin model.time > 0 then darkGreen else blank)
                             |> move (10,0)
                             ]
                             |> rotate model.time
                             ]

        myBackground = square 200 |> filled darkGreen
    in ("PuzzledWalrus",myWord,"8","Under","Kaufman"

       ,myShapes)

  ,    let
        myWord = "yak" -- put your work here(in quotes) --
        myCode = 574 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [
         myBackground
         , rect 50 25
          |> filled (rgb 200 125 50)
          |> move (-10,-10)
          , group [
          circle 15
          |> filled(rgb 200 125 50)
          |> move (10,10)
          ,rect 30 10
          |> filled (rgb 200 125 50)
          |> rotate (degrees 14)
          |> move (-45,-6.5)
          |> move (0, 3*sin (3*model.time))
         ,rect 20 10
          |> filled (rgb 200 125 50)
          |> move (-25,-30)
          |> rotate (degrees 90)
          ,rect 20 10
          |> filled (rgb 200 125 50)
         |> move (5,-30)
          |>rotate (degrees 90)
          ,rect 20 10
          |> filled lightGray
          |> rotate (degrees -60)
          |> move (-5,30)
          ,rect 20 10
          |>filled lightGray
          |> rotate (degrees 60)
          |> move (24,30)

                    ]        |> scale 0.85

           ]

        myBackground = square 200 |> filled green

    in ("QuietWhale",myWord,"8","Griffon's Yak","Kaufman"

       ,myShapes)

  ,    let
        myWord = "yurt" -- put your work here (in quotes) --
        myCode = 579 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , rect 40 40
                             |> filled green
                             |> move (-29,-30)
                         , rect 40 40
                             |> filled green
                             |> move (29,-30)
                         ,  triangle 29
                             |> filled yurtColor
                             |> scaleY 2
                             |> rotate (degrees 90)
                             |> move (0,5)
                         ,  rect 20 (20 + 20 * sin model.time)
                             |>filled darkBrown
                             |>move (0,-20 - 10 * sin model.time)

                        -- , graphPaper 10 |> makeTransparent 2
                        ]

        myBackground = square 200 |> filled pink

        yurtColor = rgb 212 193 193
    in ("PurringWalnut",myWord,"8","Opening Yurt Awais","Kaufman"

       ,myShapes)

  ,    let
        myWord = "red" -- put your work here (in quotes) --
        myCode = 471 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10


        myShapes model = [ myBackground
                         , square 75
                             |> filled red
                             |> rotate model.time
                             |> scale 0.95
                        -- , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled (rgb 180 0 0)
    in ("ElatedMango",myWord,"8","Red","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "scorpion"-- put your work here (in quotes) --
        myCode = 479 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10
        myShapes model = [ myBackground
                         , tail
                         , body
                         |> move (0,-15)
                         |> rotate (90)
                         , leg
                         , leg
                         |> move (10,5)
                         , leg
                         |> move (20,10)
                         , leg
                         |> move (30,15)
                         , oval 3 8
          |> filled lightCharcoal
          |> scale 2
          |> rotate (degrees -30)
          |> move (-15,-30)
          , oval 5 3
          |> filled charcoal
          |> scale 2
          |> rotate (degrees 30)
          |> move (-20,-40)
          , isosceles 7.5 10
          |> filled (if sin (2*model.time) > 0 then specialYellow else blank)
          |> rotate (30)
          |> move (-29,-41)
                         , head
                         |> move (-20,-25)
                         |> rotate (90)
                         , stinger
                         ]

        specialYellow = rgb 183 137 0
        stinger = group [oval 9 6
          |> filled charcoal
          |> move (3,13)
          , oval 10 3
          |> filled charcoal
          |> move (0,13)
          ]
        tail = group [oval 30 7
          |> filled darkCharcoal
          |> rotate (degrees -120)
          |> move (24,5)
          , oval 30 7
          |> filled darkCharcoal
          |> rotate (degrees 10)
          |> move (17,15)
          ]
        leg = group [oval 2 7
          |> filled charcoal
          |> scale 2
          |> rotate (degrees -120)
          |> move (-5,-25)
          , oval 2 5
          |> filled charcoal
          |> scale 2
          |> move (0,-31)
          ]
        head = group [circle 7
          |> filled charcoal
          |> rotate (degrees -120)
          |> move (0,0)
          , oval 2 4
          |> filled red
          |> scale 1.5
          |> rotate (degrees 90)
          |> move (1,3)
          , oval 2 4
          |> filled red
          |> scale 1.5
          |> rotate (degrees 90)
          |> move (1,-3)
          ]
        body = group [oval 10 35
                             |> filled darkCharcoal
                             |> scale 1.5
                             |> move (0,0)
                         ,
                       oval 25 5
                             |> filled lightCharcoal
                             |> scale 0.6
                             |> move (0,0)
                         ,
                       oval 25 5
                             |> filled lightCharcoal
                             |> scale 0.6
                             |> move (0,10)
                         ,
                       oval 18 5
                             |> filled lightCharcoal
                             |> scale 0.6
                             |> move (0,20)
                         ,
                       oval 25 5
                             |> filled lightCharcoal
                             |> scale 0.6
                             |> move (0,0)
                         ,
                       oval 25 5
                             |> filled lightCharcoal
                             |> scale 0.6
                             |> move (0,-10)
                         ,
                       oval 18 5
                             |> filled lightCharcoal
                             |> scale 0.6
                             |> move (0,-20)
                     ]
        myBackground = square 200 |> filled (rgb 183 137 0)
    in ("EntertainingMillet",myWord,"8","King Scorpion","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "lemon"
        myCode = 386
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , oval 80 60
          |> filled yellow

                         , oval 10 15
          |> filled yellow
          |> move (40, 0)

                          , oval 10 15
          |> filled yellow
          |> move (-40, 0)


                        -- , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled pink
    in ("DarkJasmine",myWord,"8","LLLLLLLLLLLLLLEEEEEEEEEEEEEEEEMMMMMMMMMMMMOOOOOOOOOOOOOOOOOOOONNNNNNNNNNNNNNNNNNNNNNNNNNNNNN","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "lime" -- put your work here (in quotes) --
        myCode =  389 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , oval 80 60
          |> filled (rgb 0 160 0)

                         , oval 10 15
          |> filled (rgb 0 160 0)
          |> move (40, 0)

                          , oval 10 15
          |> filled (rgb 0 160 0)
          |> move (-40, 0)


                        -- , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled pink

    in ("ElatedMango",myWord,"8","lime","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "vulture" -- put your work here (in quotes) --
        myCode = 553 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , group
                         [ oval 30 65
                             |> filled darkBrown
                         , curve (0,7) [Pull (-21,-20) (0,55) ]
                             |> filled darkBrown
                             |> move (-10,-30)
                         , curve (0,7) [Pull (21,-20) (0,55) ]
                             |> filled darkBrown
                             |> move (10,-30)
                         , oval 10 15
                             |> filled (rgb 233 80 80)
                             |> move (0,38)
                         , roundedRect 3 10 10
                             |> filled (rgb 233 80 80)
                             |> move (-5,-35)
                         , roundedRect 3 10 10
                             |> filled (rgb 233 80 80)
                             |> move (5,-35)
                         , triangle 3
                             |> filled (rgb 149 135 118)
                             |> move (6,38)
                         ]
                         , square 100
                             |> filled (if (sin model.time > 0) then white else blank)


                        -- , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled white
    in ("DazzlingJujube",myWord,"8","The Disappearing Vulture","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "lobster" -- put your work in quotes here (in quotes) --
        myCode = 393 -- put your code number here, which came with your word --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , oval 15 55
                             |> filled red

                         , oval 10 15
                             |> filled red
                             |> move (0,25)

                         , oval 1 20
                             |> filled red
                             |> move (3,40)

                         , oval 1 20
                             |> filled red
                             |> move (-3,40)

                         , roundedRect 20 7 5
                             |> filled red
                             |> move (14,13)

                         , roundedRect 20 7 5
                             |> filled red
                             |> move (-14,13)

                         , roundedRect 7 15 5
                             |> filled red
                             |> move (23,17)

                         , roundedRect 7 15 5
                             |> filled red
                             |> move (-23,17)

                         , roundedRect 23 2 5
                             |> filled red
                             |> move (12,8)
                             |> rotate (degrees 50)

                         , roundedRect 23 2 5
                             |> filled red
                             |> move (12,0)
                             |> rotate (degrees 50)

                         , roundedRect 23 2 5
                             |> filled red
                             |> move (-12,8)
                             |> rotate (degrees -50)

                         , roundedRect 23 2 5
                             |> filled red
                             |> move (-12,0)
                             |> rotate (degrees -50)

                         , oval 15 25
                             |> filled red
                             |> move (23,25)

                         , oval 15 25
                             |> filled red
                             |> move (-23,25)

                        , isosceles 7 20
                             |> filled lightBlue
                             |> move (23,38)
                             |> rotate (degrees 180)

                        , isosceles 7 20
                             |> filled lightBlue
                             |> move (-23,38)
                             |> rotate (degrees 180)

                        , circle 4
                             |> filled red
                             |> move (0,-27)

                        , circle 4
                             |> filled red
                             |> move (5,-27)
                             |> rotate model.time
                         , circle 4
                             |> filled red
                             |> move (-5,-27)

                         , circle 1
                             |> filled black
                             |> move (2,28)

                         , circle 1
                             |> filled black
                             |> move (-2,28)
                               ]




        myBackground = square 200 |> filled lightBlue
    in ("DecisiveKelp",myWord,"8","lobster","Northlake Woods"

       ,myShapes)

  ,    let
        myWord= "jeep"
        myCode= 373
        score = 10 -- number out of 10

        myShapes model =[myBackground,
                         rect 15 5
                        |> filled darkGreen
                        |> scale -2
                        |> scaleX -2
                        |> scaleY -2
                        |> rotate (degrees -180)
                                ,
                                rightTriangle 12 12
                                |> outlined (solid 3.5) darkGreen

          |> rotate (degrees 90)
          |> move (-14.5,10)
                                  ,
                                  rightTriangle 10 17
          |> filled (rgb 255 255 255)
          |> rotate (degrees 0)
          |> makeTransparent 0.5
          |> move (4.5,10)
                                    ,
                                    circle 10
          |> filled black
          |> rotate (degrees -270)
          |> move (-17,-10)
          |> makeTransparent 1
                                      ,
                                                         circle 10
          |> filled black
          |> rotate (degrees -270)
          |> move (17,-10)
          |> makeTransparent 1
                                 ,
                                 circle 5
          |> filled white
          |> rotate (degrees -270)
          |> move (17,-10)
          |> makeTransparent 1
                                  ,
                                                         circle 5
          |> filled white
          |> rotate (degrees -270)
          |> move (-17,-10)
          |> makeTransparent 1
                       -- ,graphPaper 10 |>makeTransparent 0.4
                        ]
        myBackground = square 200 |> filled lightBrown


    in ("ExcitedMole",myWord,"8","derpy jeep","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "fall"
        myCode = 317
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , group [circle 50
                             |> filled orange
                             |> rotate model.time
                         --, graphPaper 10 |> makeTransparent 0.4
                         , curve (-30,0) [Pull (-21,30) (-13,1) ]
          |> filled (rgb 0 0 0)

                         ,curve (2,0) [Pull (12,30) (21,0) ]
          |> filled (rgb 0 0 0)
                         ,square 10
          |> filled darkGreen
          |> scaleY 1
          |> move (0,47)
                         , curve (-31,-4) [Pull (0,-46) (30,-4) ]
          |> filled (rgb 0 0 0)
                         ] |> scale 0.90
                         ]

        myBackground = square 200 |> filled red
    in ("DarkJasmine",myWord,"8","The thing","Northlake Woods"

       ,myShapes)

  ,    let
        myWord =  "vulture"-- put your work here (in quotes) --
        myCode =  533 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , oval 70 15
          |> filled darkBrown
                        , curve (0,0) [Pull (1,15) (38,-1) ]
          |> filled darkBrown
          |> move (-10, 7)
          |> rotate (degrees (30*(sin model.time)+15))
                       , curve (0,0) [Pull (1,15) (-38,-2) ]
          |> filled darkBrown
          |> move (-10,-6)
          |> rotate (degrees (30*(sin model.time)+180))

                        , oval 10 15
          |> filled (rgb 255 153 153)
          |> rotate (degrees 30)
          |> move (-34, 4)

                      , oval 20 3
          |> filled (rgb 255 153 153)
          |> move (35, 5)


                         , rightTriangle 4 6
          |> filled (rgb 255 239 100)
          |> rotate 90
          |> move (-38, 1)

                   , oval 20 3
          |> filled (rgb 255 153 153)
          |> move (35, -5)


                      -- , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled pink
    in ("ElatedMango",myWord,"8","Vulture","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "wolf" -- put your work here (in quotes) --
        myCode = 567 --  put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , circle 25
                             |> filled charcoal
                       --  , graphPaper 10 |> makeTransparent 0.4
                         ,isosceles 20 23
                             |> filled charcoal
                             |> move (-17,-23)
                             , circle 25
                             |> filled charcoal
                              ,isosceles 20 23
                             |> filled charcoal
                             |> move (17,-23)
                             ,isosceles 15 23
                             |> filled charcoal
                             |> rotate (degrees 29)
                             |> move (-17,12)
                             ,isosceles 15 23
                             |> filled charcoal
                             |> rotate (degrees -29)
                             |> move (17,12)
                             ,circle 3
                             |> filled black
                             |> move (10,10)
                             ,circle 3
                             |> filled black
                             |> move (-10,10)
                             ,circle 10
                             |> filled white
                             |> move (0,-14)
                             , oval 10 35
                             |> filled white
                             |> rotate (degrees -90)
                             |> move (0,-19)
                             ,ngon 3 3
                             |> filled black
                             |> rotate (degrees -90)
                             |> move (0,-8)
                             , group [ curve (0,0) [Pull (10,0) (10,-10), Pull (0,0) (0,0) ]
                             |> filled black
                             |> scaleY (toFloat (round (sin(2*model.time)))) ]
                             |>rotate (degrees -135)
                             |>move (7,-17)



                         ]

        myBackground = square 200 |> filled red
    in ("QuaintWasabi",myWord,"8","Faiz's Moody Wolf","Kaufman"

       ,myShapes)

  ,    let
        myWord = "kitten" -- put your work here (in quotes) --
        myCode = 378 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , circle 30
                             |> filled charcoal
                             |> rotate model.time
                         -- , graphPaper 10 |> makeTransparent 0.4
                         , triangle 9
                             |> filled charcoal
                             |> rotate (degrees 53)
                             |> move (20, 27)
                         , triangle 9
                             |> filled charcoal
                             |> rotate (degrees 127)
                             |> move (-20, 27)
                         , circle 5
                             |> filled lightYellow
                             |> move (13, 6)
                         , circle 5
                             |> filled lightYellow
                             |> move (-13, 6)
                         , oval 10 5
                             |> filled black
                             |> rotate (degrees 90)
                             |> move (13, 6)
                         , oval 10 5
                             |> filled black
                             |> rotate (degrees 90)
                             |> move (-13, 6)
                         , roundedRect 6 5 5
                             |> filled lightCharcoal
                             |> move (0, -3)
                         ]

        myBackground = square 200 |> filled lightGrey
    in ("RemarkableWren",myWord,"8","Kitten","Kaufman"

       ,myShapes)

  ,    let
        myWord = "mosquito"
        myCode = 402
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         ,group [oval 30 15
                             |> filled brown
                         ,circle 7
                             |> filled darkBrown
                             |> move (20,0)
                         ,rect 1 7
                             |> filled black
                             |> move (-10,-10)
                         ,rect 1 7
                             |> filled black
                             |> move (-5,-10)
                         ,rect 1 7
                             |> filled black
                             |> move (0,-10)
                         ,rect 1 7
                             |> filled black
                             |> move (5,-10)
                         ,rect 1 7
                             |> filled black
                             |> move (10,-10)
                         ,rect 1 7
                             |> filled black
                             |> move (15,-10)
                         ,circle 1
                             |> filled black
                             |> move (20,0)
                         ,circle 1
                             |> filled black
                             |> move (25,0)
                         ,rect 1 10
                             |> filled black
                             |> rotate 315
                             |> move (28,-8)
                         ,oval 10 15
                             |> filled lightBlue
                             |> rotate 75
                             |> move (3,13)
                         ,oval 10 15
                             |> filled lightBlue
                             |> rotate 107
                             |> move (-10,13)

                              ]
                              |> move (0, -5)
                         --, graphPaper 10 |> makeTransparent 0
                         ]


        myBackground = square 200 |> filled blue
    in ("EnchantingMaple",myWord,"8","mosquito","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "quarter"-- put your work here (in quotes) --
        myCode = 459 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , group
                             [ circle 40
                                 |> filled gray
                                 |> rotate model.time
                             , text "25¢"
                                 |> size 50
                                 |> bold
                                 |> filled (rgb 0 0 0)
                                 |> move(-37,-15)
                             ]
                                 |>  rotate (degrees model.time * 20)

                        --, graphPaper 10                        |> makeTransparent 0
                         ]

        myBackground = square 200 |> filled white
    in ("RadiantWheat",myWord,"8","The greatest spinning QUARTER!!!","Kaufman"

       ,myShapes)

  ,    let
        myWord = "hexagon"-- put your work here (in quotes) --
        myCode = 359 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , ngon 6 10
                         |> filled green
                         |> rotate (1*sin(1*model.time))
                         ]

        myBackground = square 200 |> filled brown

    in ("PuzzledWalrus",myWord,"8","Hexagon","Kaufman"

       ,myShapes)

  ,    let
        myWord = "peas" -- put your work here (in quotes) --
        myCode = 435 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , group [circle 10
                             |> filled green
                             |> rotate model.time
                             |> move (30,-30)
                         , circle 10
                             |> outlined (solid 1) black
                             |> move (30,-30)
                         , circle 10
                             |> filled green
                             |> rotate model.time
                             |> move (20,-30)
                         , circle 10
                             |> outlined (solid 1) black
                             |> move (20,-30)
                         , circle 10
                             |> filled green
                             |> rotate model.time
                             |> move (10,-30)
                         , circle 10
                             |> outlined (solid 1) black
                             |> move (10,-30)
                         , circle 10
                             |> filled green
                             |> rotate model.time
                             |> move (0,-30)
                         , circle 10
                             |> outlined (solid 1) black
                             |> move (0,-30)
                         , circle 10
                             |> filled green
                             |> rotate model.time
                             |> move (-10,-30)
                         , circle 10
                             |> outlined (solid 1) black
                             |> move (-10,-30)
                         , circle 10
                             |> filled green
                             |> rotate model.time
                             |> move (-20,-30)
                         , circle 10
                             |> outlined (solid 1) black
                             |> move (-20,-30)
                         , circle 10
                             |> filled green
                             |> rotate model.time
                             |> move (-10,-30)
                         , circle 10
                             |> outlined (solid 1) black
                             |> move (-10,-30)
                         , circle 10
                             |> filled green
                             |> move (-5,-15)
                         , circle 10
                             |> outlined (solid 1) black
                             |> move (-5,-15)
                             ]
                             |> move (-10,10)
                         ]

        myBackground = square 200 |> filled blue
    in ("DashingJellyfish",myWord,"8","peas","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "octagon" -- (in quotes) --
        myCode = "416" -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , ngon 8 40
                             |> filled white
                             |> rotate model.time
                             |> rotate (degrees -247)
                       --  , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled lightRed
    in ("DeafeningKangaroo",myWord,"8","Octagon","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "swallow"-- put your work here (in quotes) --
        myCode = 513-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , curve (60,0) [Pull (0,-30) (0,0) ]
                         |> filled darkBlue
                           |> rotate (degrees (30 * sin model.time) )
                         |> move (-5,10)
                         , curve (-60,0) [Pull (0,-30) (0,0) ]
                         |> filled darkBlue
                         |> move (5,10)
                         |> rotate (degrees (-30 * sin model.time) )
                         , isosceles 7 13
                         |> filled black
                         |> move (0, 20)
                         , oval 20 50
                         |> filled darkBlue
                         , rect 20 50
                         |> filled darkBlue
                         |> move (0,-22)
                         , isosceles 20 30
                         |> filled lightBlue
                         |> move (0,-50)
                         , oval 15 35
                         |> filled white
                         , oval 10 10
                         |> filled (rgb 255 64 0)
                         |> move (0,19)
                         , oval 4 10
                         |> filled darkCharcoal
                         |> move (7,-10)
                         , oval 4 10
                         |> filled darkCharcoal
                         |> move (-7,-10)



                         ]

        myBackground = square 200 |> filled lightBlue
    in ("EntertainingMillet",myWord,"8","Flying Swallow","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "deer" -- put your work here (in quotes) --
        myCode = 295 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                        , group
                        [ oval 15 20
                             |> filled (rgb 162 97 23)
                             |> move (15,5)
                         , oval 5  8
                             |> filled (rgb 162 97 23)
                             |> move (10,15)
                         , oval 5 8
                             |> filled (rgb 162 97 23)
                             |> move (20,15)
                         , oval 2 5
                             |> filled white
                             |> move (20,15)
                         , oval 2 5
                             |> filled white
                             |> move (10,15)
                         , circle 1
                             |> filled black
                             |> move (12,8)
                         , circle 1
                             |> filled black
                             |> move (18,8)
                         , circle 1.5
                             |> filled black
                             |> move (15,3)
                         , curve (-13,-10) [Pull (-8,-13) (-4,-10) ]
                             |> filled black
                             |> move (23.5,8)
                         , oval 10 25
                             |> filled (rgb 162 97 23)
                             |> rotate (degrees 90)
                             |> move (0,-5)
                         , circle 0.25
                             |> filled (if (sin model.time > 0) then red else white)
                             |> move (4,-4.8)
                         , circle 0.25
                             |> filled (if (sin model.time > 0) then orange else white)
                             |> move (0.5,-1.85)
                         , circle 0.25
                             |> filled (if (sin model.time > 0) then yellow else white)
                             |> move (-2,-5.3)
                         , circle 0.25
                             |> filled (if (sin model.time > 0) then green else white)
                             |> move (5,-8)
                         , circle 0.25
                             |> filled (if (sin model.time > 0) then blue else white)
                             |> move (0,-8)
                         , circle 0.25
                             |> filled (if (sin model.time > 0) then (rgb 67 43 134) else white)
                             |> move (-7,-6.75)
                         , circle 0.25
                             |> filled (if (sin model.time > 0) then purple else white)
                             |> move (-5,-3)
                         , circle 0.25
                             |> filled (if (sin model.time > 0) then pink else white)
                             |> move (7,-2)
                         , roundedRect 5 8 10
                             |> filled (rgb 162 97 23)
                             |> move (-5,-10)
                         , roundedRect 5 8 10
                             |> filled (rgb 162 97 23)
                             |> move (5,-10)
                         ]
                        -- , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled white
    in ("DazzlingJujube",myWord,"8","Colour-Changing Deer","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "knees" -- put your work here (in quotes) --
        myCode = 318-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , group [circle 15
                             |> filled red
                             |> rotate model.time
                             |> move (-25,-5)
                         , circle 15
                             |> filled red
                             |> rotate model.time
                             |> move (25,-5)
                         ,rect 25 55
                             |> filled red
                             |> move (-25,20)
                         ,rect 25 50
                             |> filled red
                             |> move (25,-25)
                             ,rect 25 50
                             |> filled red
                             |> move (-25,-25)
                          ,rect 25 55
                             |> filled red
                             |> move (25,20)
                          ,oval 35 20
                             |> filled black
                             |> move (-35,-40)
                             ,oval 35 20
                             |> filled black
                             |> move (35,-40)
                             ,square 20
                             |> filled black
                             |> move (23,-40)
                              ,square 20
                             |> filled black
                             |> move (-23,-40)
                             ,rect 75 20
                             |> filled red
                             |> move(0,40)
                            ,triangle 10
                             |> filled (if sin model.time > -0.5 then black else blank)
                             |> rotate (degrees 65)
                             |> move (0,-5)
                           ,rect 10 40
                             |> filled (if sin model.time > -0.5 then black else blank)
                             |> rotate (degrees 100)
                             |> move (22,-1)
                                          -- , graphPaper 10 |> makeTransparent 0.4
                         ] |> scale 0.85
                         ]

        myBackground = square 200 |> filled pink

        arrow = group [

                        ]
    in ("RaspyWolverine",myWord,"8","Knees","Kaufman"

       ,myShapes)

  ,    let
        myWord ="pickle" -- put your work here (in quotes) --
        myCode = 111 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group [ oval 10 25
                             |> filled green
                             |> rotate model.time
                      --   , graphPaper 10 |> makeTransparent 0.4
                         ,roundedRect 20 25 5
          |> filled (rgb 145 255 96)
          |> scale 2
          |> scaleX 2
          |> scaleY 2
          |> makeTransparent 0.5
                         ] |> scale 0.95
                         ]

        myBackground = square 200 |> filled white
    in ("PricklyAcacia",myWord,"8","Pickle","Saginaw"

       ,myShapes)

  ,    let
        myWord = "cranberry" -- put your work here (in quotes) --
        myCode = 286 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ circle 5
                             |> filled red
                             |> rotate model.time
                             |> move (-5, 7)
                             , circle 5
                             |> filled red
                             |>move (5, -7)
                             , circle 5
                             |> filled red
                             |>move (5, 7)
                             , circle 5
                             |> filled red
                             |>move (-5, -7)
                             , circle 5
                             |> filled red
                             |>move (0,0)
                             , circle 5
                             |> filled red
                             |>move (12,0)
                             , circle 5
                             |> filled red
                             |>move (-12,0)
                             , circle 5
                             |> filled red
                             |>move (0,16)
                             , circle 5
                             |> filled red
                             |>move (0,-16)

                        -- , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled pink
    in ("ObservantSumac",myWord,"8","Cranberry","Kaufman"

       ,myShapes)

  ,    let
        myWord = "sphere"
        myCode = 503
        score = 10 -- number out of 10

        myShapes model = [  oval 50 17
                             |> filled darkCharcoal
                             |> move (18, -23)

                            ,circle 30
                             |> filled (rgb 221 119 255)
                             |> rotate model.time



                        ]

        myBackground = square 200 |> filled white

    in ("ResponsibleBanana",myWord,"8","Sphere","Saginaw"

       ,myShapes)

  ,    let
        myWord = "pig" -- put your work here (in quotes) --
        myCode = 442-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , group [circle 50
                             |> filled pink
                             |> rotate model.time
                         -- , graphPaper 10 |> makeTransparent 0.0,
                         ,
                         roundbody,
                         leftear,
                         rightear,
                         lefteye,
                         righteye,
                         leftpupil,
                         rightpupil,
                         smile] |> scale 0.9
                         ]

        roundbody = oval 30 20
         |> filled red

        leftear = triangle 15
                     |> filled pink
                     |> move (-33, 40)

        rightear = triangle 15
                |> filled pink
                |> rotate (degrees 420)
                |> move (33,40)

        lefteye = circle 12
                 |> filled white
                 |> move (-20, 25)

        righteye = circle 12
                   |> filled white
                   |> move (20, 25)

        leftpupil = circle 7
                    |> filled black
                    |> move (-20, 25)

        rightpupil = circle 7
                   |> filled black
                   |> move (20, 25)

        smile = curve (0,0) [Pull (10,0) (20, -10)]
                     |> filled black
                     |>scale 2
                     |> rotate (degrees -150)
                     |> move (20,-20)



        myBackground = square 100 |> filled blank
    in ("EducatedMallow",myWord,"8","Pig","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "tangerine" -- put your work here (in quotes) --
        myCode = 519 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10
        myShapes model = [ myBackground
                         ,group [ circle 30
                               |> filled (rgb 254 125 50)
                               |> rotate (degrees 30)
                         , curve (0,0) [Pull (10,0) (20,-4)]
                               |> filled darkGreen
                               |> scale 2
                               |> scaleY 2
                               |> move (0,30)
                         , rect 10 5
                               |> filled darkBrown
                               |> move (0,30)
                               |> rotate (360)

                         ]
                         |> move (0,(sin(model.time)*20))
                         ]

        myBackground = square 200 |> filled lightBlue
    in ("DutifulLotus",myWord,"8","Semicircle","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "zipper"-- put your work here (in quotes) --
        myCode = 583 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ rect 10 20

                             |> filled black
                             |> move (0,25)
                          , rect 15 10
                             |> filled black
                             |> move (-10,0)
                              , rect 15 10
                             |> filled black
                             |> move (10,0)
                              , rect 15 10
                             |> filled black
                             |> move (10,11)
                              , rect 15 10
                             |> filled black
                             |> move (-10,11)
                              , rect 15 10
                             |> filled black
                             |> move (10,-11)
                             , rect 15 10
                             |> filled black
                             |> move (-10,-11)

                         --, graphPaper 10 |> makeTransparent 0.4
                         ]





        myBackground = square 200 |> filled pink
    in ("ObservantSumac",myWord,"8","Zipper","Kaufman"

       ,myShapes)

  ,    let
        myWord = "yacht" -- put your work here (in quotes) --
        myCode = 573 -- put your code number here, which came with your word (not in quotes)--
        score = 10 -- number of out 10

        myShapes model = [ myBackground
                         , ngon 3 20
                             |> filled white
                             |> move (5,-11)
                          |> makeTransparent 1
                         |>  move (5,9)
                         |>  move (2,7)
                          , curve (49,0) [Pull (0,-49) (-49,0) ]
          |> filled white
          |> move (0,5)
          , ngon 3 20
          |> filled white
          |> rotate 89
          |> move (-8,5)
          , circle 5
          |> filled black
          , circle 5
          |> filled black
          |> move (20,0)
          , circle 5
          |> filled black
          |> move (-20,0)




          ]


        myBackground = square 200 |> filled lightBlue
    in ("ComfortableHorse",myWord,"8","yacht","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "scooter" -- put your word here (in quotes) --
        myCode = "478" -- put your code number here, which came with your word (not in quotes) --478
        score = 10 -- number out of 10
        myShapes model = [ square 1000
                           |> filled lightBlue
                         , rect 10 15
                             |> filled red
                             |> rotate (degrees 90)
                             |> scaleY 3
                      --   , graphPaper 10 |> makeTransparent 0.4

                           ,circle 5
                             |> filled black
                             |> scale 1
                             |> rotate (degrees 30)
                             |> move (20, -10)
                           ,circle 5
                             |> filled black
                             |> scale 1
                             |> rotate (degrees 30)
                             |> move (-20, -10)
                           ,rect 7 15
                             |> filled red
                             |> scaleY 2
                             |> move (19, 20)

                           ,rect 5 15
                             |> filled red
                             |> scaleY 2
                             |> rotate (degrees 90)
                             |> move (18, 33)

                           ,circle 2
                             |> filled white
                             |> move (-20, -10)
                           ,circle 2
                             |> filled white
                             |> move (20, -10)
                             ]



    in ("MerrySesame",myWord,"8","Scooter by Akshansh","Kaufman"

       ,myShapes)

  ,    let
        myWord = "iris" -- put your work here (in quotes) --
        myCode = 369 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10
        myShapes model = [ myBackground
                         , roundedRect 95 45 10000
                             |> outlined (solid 1) black


                         , circle 20
                             |> filled lightBlue


                         , circle 8
                             |> filled black


                         , rectangle 2 17
                             |> filled black
                             |> move (0,31)



                        , rectangle 2 17
                             |> filled black
                             |> move (20,30)
                             |> rotate (degrees -7)



                        , rectangle 2 17
                             |> filled black
                             |> move (-20,30)
                             |> rotate (degrees 7)



                        , rectangle 2 17
                             |> filled black
                             |> move (-39,22)
                             |> rotate (degrees 9)



                        , rectangle 2 17
                             |> filled black
                             |> move (39,22)
                             |> rotate (degrees -9)


                         ]

        myBackground = square 200 |> filled white
    in ("QuickAnteater",myWord,"8","Iris","Saginaw"

       ,myShapes)

  ,    let
        myWord = "bear" -- put your word here (in quotes) --
        myCode = 226 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ roundedRect 40 20 4
                           |> filled darkBrown
                           |> move (0,0)
                           ,circle 12
                            |> filled darkBrown
                            |> move (28,0)
                           ,roundedRect 10 25 5
                            |> filled darkBrown
                            |> move (-10,-15)
                            ,roundedRect 10 25 5
                            |> filled darkBrown
                            |> move (10,-15)
                            ,roundedRect 4 25 3
                            |> filled darkBrown
                            |> move (-2.5,-15)
                            ,roundedRect 4 25 3
                            |> filled darkBrown
                            |> move (17.5,-15)
                            ,curve (0,0) [Pull (-5,18) (-9,0) ]
                            |> filled darkBrown
                            |> move (30,8)
                            ,circle 3.5
                            |> filled darkBrown
                            |>move (-21,-2)
                            ,curve (0,0) [Pull (-5,18) (-9,0) ]
                            |> filled darkBrown
                            |> move (36.5,8)
                            , circle 2.5
                            |> filled white
                            |> move (24.5,4.5)
                            ,circle 2.5
                            |> filled white
                            |> move (33,4.5)
                            ,circle 1
                            |> filled black
                            |> move (24.5,4.5)
                            ,circle 1
                            |> filled black
                            |> move (33,4.5)
                            ,curve (0,0) [Pull (-3,10) (-5,0) ]
                            |> filled lightBrown
                            |> move (28,8.5)
                            ,curve (0,0) [Pull (-3,10) (-5,0) ]
                            |> filled lightBrown
                            |> move (35,8.5)




                         ]



        myBackground = square 200 |> filled pink
    in ("OutrageousTapir",myWord,"8","Bear by Peter Doan","Kaufman"

       ,myShapes)

  ,    let
        myWord = "yacht" -- put your work here (in quotes) --
        myCode = 573 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , curve (30,-5) [Pull (0,-60) (-30,-5) ]
          |> filled (rgb 250 150 0)
             ,rect 10 15
          |> filled black
          |> scaleY 2
          |> move (5,10)
          ,rect 10 15
          |> filled lightBlue
          |> scaleY 2
          |> move(3,10)
          ,triangle 10
          |> filled (rgb 130 30 130)
          |> scale 1
          |> move(5,23)
          |> rotate 267
                              ]

        myBackground = square 200 |> filled lightBlue
    in ("ContentHummingbird",myWord,"8","Yacht","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "mouth" -- put your work here (in quotes) --
        myCode = 406 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ oval 10 15
                          |> filled darkRed
                          |> scale 3
                          |> scaleY 1
                          |> scaleX 3
                        ,oval 10 15
                          |> filled white
                          |> scaleX 4.5
                          |> scaleY 1.5
                        , circle 9
                          |> filled darkRed
                          |> move (8,19.5)
                        , circle 9
                          |> filled darkRed
                          |> move (-8,19.5)
                        , triangle 7
                          |> filled darkRed
                          |> scaleY 3
                          |> rotate (degrees -120)
                          |> move (22.5,17)
                        , triangle 7
                          |> filled darkRed
                          |> scaleY 3
                          |> rotate (degrees -60)
                          |> move (-22.5,17)
                        , rect 2 15
                          |> filled black
                          |> scaleY 3
                          |> rotate (degrees -90)

                         ]



    in ("CooperativeHyssop",myWord,"8","mouth","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "tooth" -- put your work here (in quotes) --
        myCode = 531 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10
        myShapes model = [ myBackground
                         , square 25
                                         |> filled (rgb 255 255 255)
                                         ,triangle 7
          |> filled (rgb 255 255 255)
          |> rotate (degrees 30)
          |> move (-6.5,-15)
          ,triangle 7
          |> filled (rgb 255 255 255)
          |> rotate (degrees 30)
          |> move (6.5,-15)
                        -- , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled black
    in ("OutgoingTamarind",myWord,"8","tooth","Kaufman"

       ,myShapes)

  ,    let
        myWord = "tangerine" -- put your work here (in quotes) --
        myCode = 519 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         ,group [ circle 30
                               |> filled (rgb 254 125 50)
                               |> rotate (degrees 30)
                         , curve (0,0) [Pull (10,0) (20,-4)]
                               |> filled darkGreen
                               |> scale 2
                               |> scaleY 2
                               |> move (0,30)
                         , rect 10 5
                               |> filled darkBrown
                               |> move (0,30)
                               |> rotate (360)

                         ]
                         |> move (0,(sin(model.time)*20))
                         ]

        myBackground = square 200 |> filled lightBlue
    in ("DistinctLion",myWord,"8","Tangerine 2.0","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "strawberry" -- put your work here (in quotes) --
        myCode = 511 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        seed = curve (0,25) [Pull (-15,0) (0,0), Pull (15,0) (0,25) ]
                             |> filled (rgb 0 0 0)
                             |> scale 0.15

        myShapes model = [ myBackground
                         , circle 10
                             |> filled red
                             |> rotate model.time
                             |> move (6,5)
                         , circle 10
                             |> filled red
                             |> move (-6,5)
                         , wedge 20 0.25
                             |> filled red
                             |> rotate (degrees 90)
                             |> move (0,-15)
                         , seed
                             |> move (0,-11)
                         , seed
                             |> move (5,-5)
                         , seed
                             |> move (5,3)
                         , seed
                             |> move (10,7)
                         , seed
                             |> move (-10,7)
                         , seed
                             |> move (-5,3)
                         , seed
                             |> move (-5,-5)
                         , seed
                             |> move (11,-3)
                         , seed
                             |> move (-11,-3)
                         , seed
                         , triangle 5
                             |> filled (rgb 28 115 25)
                             |> rotate (degrees 30)
                             |> move (0,12)
                         , triangle 5
                             |> filled (rgb 28 115 25)
                             |> rotate (degrees 50)
                             |> move (5,12)
                         ,triangle 5
                             |> filled (rgb 28 115 25)
                             |> rotate (degrees -110)
                             |> move (-5,12)
                         --, graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled pink
    in ("CuddlyIris",myWord,"8","Strawberry","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "boots"
        myCode = 242
        score = 10 -- number out of 10

        myShapes model = [curve (-12,1) [Pull (-38,-12) (-27,-14), Pull (25,-20) (15,0) ]
                          |> filled (lightBrown)
          ,curve (-12,-14) [Pull (-38,-27) (-27,-29), Pull (25,-35) (15,-14) ]
                          |> filled (lightBrown)
          , roundedRect 17 15 5
                          |> outlined (solid 1) black
                          |> scale 1.5
                          |> scaleY 2
                          |> move (1.7,10)
          , roundedRect 17 15 5
                          |> filled (lightBrown)
                          |> scale 1.5
                          |> scaleY 2
                          |> move (1.7,10)
                          ,curve (-12,1) [Pull (-38,-12) (-27,-14), Pull (25,-20) (15,0) ]
                          |> filled (lightBrown)
                          ,curve (-12,1) [Pull (-38,-12) (-27,-14), Pull (25,-20) (15,0) ]
                          |> outlined (solid 1) black
                            ,curve (-12,-14) [Pull (-38,-27) (-27,-29), Pull (25,-35) (15,-14) ]
                          |> outlined (solid 1) black
                            , roundedRect 17 15 5
                          |> outlined (solid 1) black
                          |> scale 1.5
                          |> scaleY 2
                          |> move (1.7,0)
                            , roundedRect 17 15 5
                          |> filled (lightBrown)
                          |> scale 1.5
                          |> scaleY 2
                          |> move (1.7,0)
                            ,curve (-12,-14) [Pull (-38,-27) (-27,-29), Pull (25,-35) (15,-14) ]
                          |> filled (lightBrown)]








        myBackground = square 200 |> filled pink
    in ("ResonantBadger",myWord,"8","boots","Saginaw"

       ,myShapes)

  ,    let
        myWord = "squirrel"-- put your work here (in quotes) --
        myCode = 508-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10
        myShapes model = [ myBackground
                         , group[ squirrel
                         , eyeone |> rotate (((-1 * model.time * 2)-1)) |> move (-7.5,0)
                         , eyetwo |> rotate (model.time*2) |> move (7.5,0)
                         , graphPaper 10 |> makeTransparent 0
                         ] |> scale 0.8
                         ]
        squirrel = group [ oval 15 30
                        |> filled darkBrown
                        |> rotate (degrees 150)
                        |> move (10,10)
                     , rect 10 300
                        |> filled (rgb 250 169 104)
                        |> rotate (degrees 30)
                        |> move (-10,0)
                     , oval 30 55
                        |> filled brown
                        |> rotate (degrees -30)
                        |> move (40,-10)
                     , oval 15 30
                        |> filled darkBrown
                        |> rotate (degrees -150)
                        |> move (-10,10)
                     , oval 10 22
                        |> filled lightBrown
                        |> rotate (degrees 150)
                        |> move (10,10)
                     , oval 10 22
                        |> filled lightBrown
                        |> rotate (degrees -150)
                        |> move (-10,10)
                     , oval 30 45
                        |> filled darkBrown
                        |> rotate (degrees 30)
                        |> move (20,-20)
                     , oval 20 35
                        |> filled lightBrown
                        |> rotate (degrees 30)
                        |> move (20,-20)
                     , circle 18|> filled darkBrown
                     , circle 7 |> filled lightBrown |> move(-7,0)
                     , circle 7 |> filled lightBrown |> move(7,0)
                     , rect 4 15
                        |> filled darkBrown
                        |> rotate (degrees -30)
                        |> move (3,-30)
                     , rect 4 20
                        |> filled darkBrown
                        |> rotate (degrees -30)
                        |> move (20,-47)
                     ]

        eyeone = group [ circle 5 |> filled white |> move (0,0)
                     , circle 3.5 |> filled black |> move(0,0)
                     , circle 1.5 |> filled white |> move(-1,2)
                     ]

        eyetwo = group [circle 5 |> filled white |> move (0,0)
                     , circle 3.5 |> filled black |> move(0,0)
                     , circle 1.5 |> filled white |> move(-1,2)
                     ]

        myBackground = square 200 |> filled lightBlue
    in ("EcstaticMallard",myWord,"8","Squirrel","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "thumb"
        myCode = 525
        score = 10 -- number out of 10

        myShapes model = [ myBackground

                         ,group [oval 25 6
                             |> filled lightOrange
                             |> move (0,4)
                         , oval 25 6

                             |> filled lightOrange
                             |> move (0,13)
                         , oval 25 6

                             |> filled lightOrange
                             |> move (0,10)
                         , oval 25 6

                             |> filled lightOrange
                             |> move (0,7)
                         , oval 10 30

                             |> filled lightOrange
                             |> move (10,16)
                        , oval 5 12
                             |> filled pink
                             |> move (12, 25)

                             ]
                             |> rotate model.time

                         ]

        myBackground = square 200 |> filled blue
    in ("DescriptiveLemur",myWord,"8","Thumbs","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "cicada"
        myCode =  275
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                        , rect 15 2
                         |> filled black
                         |> move (14,10)
                         |> rotate (degrees 8)
                         |> move (2* cos model.time,0)
                         ,
                         rect 15 2
                         |> filled black
                         |> move (15, 0)
                         |> move (-2* cos model.time,0)
                         ,
                         rect 15 2
                         |> filled black
                         |> move (14,-10)
                         |> rotate (degrees -8)
                         |> move (2* cos model.time,0)
                         ,
                         rect 15 2
                         |> filled black
                         |> move (-14,10)
                         |> rotate (degrees -8)
                         |> move (-2* cos model.time,0)
                         ,
                         rect 15 2
                         |> filled black
                         |> move (-15,0)
                         |> move (2* cos model.time,0)
                         ,
                         rect 16 2
                         |> filled black
                         |> move (-14,-10)
                         |> rotate (degrees 8)
                         |> move (-2* cos model.time,0)
                         , oval 30 50
                             |> filled green
                             ,
                              oval 20 50
                             |> filled (rgb 146 255 245)
                             |> move (-5, 0)
                             |> makeTransparent 0.375
                             |> rotate (degrees -15)
                             ,
                              oval 20 50
                             |> filled (rgb 146 255 245)
                             |> move (5, 0)
                             |> makeTransparent 0.375
                             |> rotate (degrees 15)
                             ,
                             oval 32 27
                             |> filled (rgb 7 202 0)
                             |> move (0, 20)
                             ,
                             circle 5
                             |> filled (rgb 249 41 41)
                             |> move (-14, 23)
                             ,
                             circle 5
                             |> filled (rgb 249 41 41)
                             |> move (14, 23)


                        -- , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled pink
    in ("SafeBasil",myWord,"8","cicada","Saginaw"

       ,myShapes)

  ,    let
        myWord = "paintbrush"
        myCode = 426
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , oval 75 10
                             |> filled (rgb 216 101 0)
                             |>rotate (degrees 60)
                          ,
                            triangle 5
                            |> filled lightBrown
                            |> move (-24,-38.5)
                          ,
                            oval 20 12
                             |> filled lightBrown
                             |> move (-19,-30)
                             |> rotate (degrees 60)


                         ]

        myBackground = square 200 |> filled blank
    in ("ProudAlfalfa",myWord,"8","Paintbrush","Saginaw"

       ,myShapes)

  ,    let
        myWord = "orange" -- put your work here (in quotes) --
        myCode = 420 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , circle 20
                             |> filled orange
                             |> rotate model.time
                           |> makeTransparent 0.4
                          , curve (0,0) [Pull (10,0) (20,-10)]
          |> filled darkGreen
          |> rotate (degrees 30)
          |> move ( 2,16)

                   ]


        myBackground = square 200 |> filled white
    in ("NuttyStarfish",myWord,"8","Orange","Kaufman"

       ,myShapes)

  ,    let
        myWord = "hands" -- put your work here (in quotes) --
        myCode = 351 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ circle 20
                           |> filled (rgb 255 204 153)
                           |> move (0,-10)
                           ,roundedRect 5 35 5
                           |> filled (rgb 255 204 153)
                           |> move (-13, 9)
                           ,roundedRect 5 35 5
                           |> filled (rgb 255 204 153)
                           |> move (-6, 11)
                           ,roundedRect 5 35 5
                           |> filled (rgb 255 204 153)
                           |> move (1, 13)
                           ,roundedRect 5 35 5
                           |> filled (rgb 255 204 153)
                           |> move (8,11)
                           ,roundedRect 8 27 5
                           |> filled (rgb 255 204 153)
                           |> move (16,7)


                         ]

        myBackground = square 200 |> filled pink
    in ("OutrageousTapir",myWord,"8","Hand by Peter Doan","Kaufman"

       ,myShapes)

  ,    let
        myWord =  "yam" -- put your word here (in quotes) --
        myCode = 575 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ oval 25 50
                             |> filled brown
                             |> rotate 90
                          ,triangle 11.75
                          |> filled brown
                          |> move (-19, -10)
                          |> rotate 12

                          ,rect 0.1 10
                          |> filled black

                          ,rect 0.1 9
                          |> filled black
                          |> move (10, 15)

                          ,rect 0.1 8
                          |> filled black
                          |> move (7, 12)
                          |> rotate (degrees -4)

                          ,rect 0.1 5
                          |> filled black
                          |> move (2, 4)
                          |> rotate (degrees 10)

                          ,rect 0.1 6
                          |> filled black
                          |> move (7, 4)
                          |> rotate (degrees 3)

                          ,rect 0.1 10
                          |> filled black
                          |> move (1, 14)
                          |> rotate (degrees 12)

                          ,rect 0.1 7
                          |> filled black
                          |> move (-3, -8)
                          |> rotate (degrees -7)

                          ,rect 0.1 8
                          |> filled black
                          |> move (-12, -8)
                          |> rotate (degrees 9)

                          ,rect 0.1 9
                          |> filled black
                          |> move (-12, -0)
                          |> rotate (degrees 7)

                          ,rect 0.1 10
                          |> filled black
                          |> move (-7, 7)
                          |> rotate (degrees 5)


          , myPolygon

                         ]

        myBackground = square 200 |> filled pink
        myPolygon =   polygon [(-5, 14), ( -8.25, -4.75 ), ( 8.25, -4.75), ( 5, 14)]
          |> filled brown
          |> move ( 16, 8)
          |> rotate ( degrees -49)

    in ("PurringAlligator",myWord,"8","Yam","Saginaw"

       ,myShapes)

  ,    let
        myWord = "blue"
        myCode = 237
        score = 10 -- number out of 10

        myShapes model = [ myBackground
           ]



        myBackground = square 200 |> filled blue
    in ("PleasantToad",myWord,"8","Puppy","Kaufman"

       ,myShapes)

  ,    let
        myWord = "lamb"
        myCode = 383
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , group [oval 32 55
                               |> filled white
                               |> rotate (degrees -90)
                               |> move (0,5)
                         , oval 20 45
                               |> filled white
                               |> rotate (degrees -240)
                               |> move (30,20)
                         , circle 2
                               |> filled black
                               |> rotate (degrees -270)
                               |> move (41,28)

                         , oval 10 35
                               |> filled white
                               |> rotate (degrees -540)
                               |> move (-18,-15)
                         ,  oval 10 35
                               |> filled white
                               |> rotate (degrees -540)
                               |> move (7,-15)
                          , oval 10 35
                               |> filled white
                               |> rotate (degrees -540)
                               |> move (-5,-15)


                         , oval 10 35
                               |> filled white
                               |> rotate (degrees -540)
                               |> move (19,-15)
                         , oval 10 20
                               |> filled white
                               |> rotate (degrees -510)
                               |> move (30,36)
                         ,  oval 5 15
                               |> filled pink
                               |> rotate (degrees -510)
                               |> move (30,36)
                         , roundedRect 5 25 5
                               |> filled white
                               |> rotate (degrees (-590+(sin(model.time)*20)))
                               |> move (-25,5)
                         ] |> scale 0.95
                         ]









        myBackground = square 100 |> filled green
    in ("NimbleSparrow",myWord,"8","Ethan's Lamb","Kaufman"

       ,myShapes)

  ,    let
        myWord = "red" -- put your work here (in quotes) --
        myCode = 471 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ square 55
                             |> filled red
                             |> rotate model.time
                       --  , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled pink
    in ("OutrageousTapir",myWord,"8","Red by Peter Doan","Kaufman"

       ,myShapes)

  ,    let
        myWord = "tractor"-- put your work here (in quotes) --
        myCode = 532-- put your code number here, which came with your word (not in quotes) --
        score = 100 -- number out of 10

        myShapes model = [ myBackground
                         ,  square  20
          |> filled red
          |> move (-9,5.25)
          , square 20
          |> filled red
          |> move (-9,25)
          , square 25
          |> filled red
          |> move (12,7)
          , roundedRect 10 15 5
          |> filled red
          |> scale 2
          |> scaleX 2
          |> move (11,7)
          , square 15
          |> filled grey
          |> move (-9,22)
          , circle 14
          |> filled black
          |> move (-5,-7)
          , circle 10
          |> filled black
          |> move (25,-9)




                         ]

        myBackground = square 200 |> filled green
    in ("ComfortableHorse",myWord,"8","tractor","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "jeep" -- put your work here (in quotes) --
        myCode = 373 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground


                         , rect 15 30
                           |> filled red
                           |> rotate (degrees 90)
                         , rect 10 10
                           |> filled pink
                           |> move (10.5, 5)
                         , rect 5 5
                           |> filled pink
                           |> move (0, 3)
                         , circle 3.5
                           |> filled black
                           |> move (11, -10.5)
                         , circle 3.5
                           |> filled black
                           |> move (-11, -10.5)

                         ]

        myBackground = square 200 |> filled pink
    in ("MerrySesame",myWord,"8","Jeep by Akshansh","Kaufman"

       ,myShapes)

  ,    let
        myWord = "potato"
        myCode = 499
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , oval 10 15
          |> filled (rgb 230 125 50)
          |> scale 2
          |> scaleX 2
          |> scaleY 2
          |> rotate (degrees 30)
          , circle 2
          |> filled (rgb 139 69 19)
          |> rotate (degrees -270)
          |> move (1,8)
          , circle 2
          |> filled (rgb 139 69 19)
          |> rotate (degrees -270)
          |> move (13,10)
          , circle 2
          |> filled (rgb 139 69 19)
          |> rotate (degrees -270)
          |> move (10,-4)
          , circle 2
          |> filled (rgb 139 69 19)
          |> rotate (degrees -270)
          |> move (-5,-5)
          , circle 2
          |> filled (rgb 139 69 19)
          |> rotate (degrees -270)
          |> move (-13,10)
          , circle 2
          |> filled (rgb 139 69 19)
          |> rotate (degrees -270)
          |> move (-16,20)
          , circle 2
          |> filled (rgb 139 69 19)
          |> rotate (degrees -270)
          |> move ( 0,20)
          , circle 2
          |> filled (rgb 139 69 19)
          |> rotate (degrees -270)
          |> move (-1,-20)
            , circle 2
          |> filled (rgb 139 69 19)
          |> rotate (degrees -270)
          |> move ( 11,-15)
          ]

        myBackground = square 200 |> filled grey
    in ("MistySheep",myWord,"8","Potato!","Kaufman"

       ,myShapes)

  ,    let
        myWord = "glove"-- put your work here (in quotes) --
        myCode = 333-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , rect 30 60
                             |> filled brown
                             |> move (0,20)
                         , oval 7 40
                             |> filled brown
                             |> move (-12,0)

                             , oval 7 40
                             |> filled brown
                             |> move (-6,0)
                              , oval 7 40
                             |> filled brown
                             |> move (0,0)
                              , oval 7 40
                             |> filled brown
                             |> move (7,0)
                              , oval 7 40
                             |> filled brown
                             |> move (13,0)
                             , circle 20
                             |> filled brown
                             |> move (0,10)


                         -- , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled white

    in ("ObservantSumac",myWord,"8","Glove","Kaufman"

       ,myShapes)

  ,    let
        myWord = "beard"-- put your work here (in quotes) --
        myCode = 227 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         --, graphPaper 10 |> makeTransparent 0.4
                         , group [curve (0,0) [Pull (-141,-11) (0,53), Pull (84,34) (72,0), Pull (82,-44) (0,-55), Pull (-138,19) (0,9) ]
          |> filled (rgb 253 184 71)
          , curve (0,0) [ Pull (-84,13) (0,-68), Pull (50,-1) (0,-60), Pull (82,7) (0,0) ]
          |> filled (rgb 42 20 0)
          , curve (0,0) [Pull (-10,-28) (27,-18) ]
          |> filled (rgb 255 0 0)
          |> move (-30,30)
          , curve (0,0) [Pull (-10,-28) (-34,-13) ]
          |> filled (rgb 255 0 0)
          |> move (40,30)
          , curve (0,0) [Pull (13,-65) (-32,0), Pull (-2,20) (31,0), Pull (35,-4) (3,-30) ]
          |> filled (rgb 255 0 0)
          |> move (0,-20)] |> scale 0.65
           ]



        myBackground = square 200 |> filled white

    in ("MightyShark",myWord,"8","mad guy with the beard","Kaufman"

       ,myShapes)

  ,    let
        myWord = "shark" -- put your work here (in quotes) --
        myCode = 483 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         ,curve (0,0) [Pull (-89,100) (-52,0) ]
          |> filled (rgb 0 102 102)
          |> move (35,-20)

                         ]

        myBackground = square 200 |> filled blue
    in ("OutrageousTapir",myWord,"8","Shark by Peter Doan","Kaufman"

       ,myShapes)

  ,    let
        myWord = "tractor" -- put your work here (in quotes) --
        myCode = 532 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
         , square 10
          |> filled darkGreen
          |> scale 2
          |> move(-20,2)
         , roundedRect 10 15 5
          |> filled darkGreen
          |> scale 2
          |> scaleX 2
          |> move(4,4)
          , rect 10 15
          |> filled darkGreen
          |> scaleX 2
          |> scaleY 2
          |> move (-24,17)
          , circle 10
          |> filled black
          |> scaleX 1.75
          |> scaleY 1.75
          |> move(-21,-9)
          , circle 10
          |> filled black
          |> scaleX 1.5
          |> scaleY 1.5
          |> move(14,-11)
          , rect 10 15
          |> filled white
          |> scaleX 1.25
          |> scaleY 1.25
          |> move(-24,20)
          , circle 10
          |> filled white
          |> scaleX 1.25
          |> scaleY 1.25
          |> move(-21,-9)
          , circle 10
          |> filled white
          |> scaleX 1
          |> scaleY 1
          |> move (14,-11)



                           ]

        myBackground = square 200 |> filled lightBlue
    in ("ContentHummingbird",myWord,"8","Cracker Tractor","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "vest" -- put your work here (in quotes) --
        myCode = 545 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         ,group [ roundedRect 40 15 5
                             |> filled darkBlue
                             |> rotate (55)
                             |> move (-10,0)
                         , roundedRect 40 15 5
                             |> filled darkBlue
                             |> rotate (55)
                             |> move (6,0)
                         , oval 20 10
                             |> filled darkBlue
                             |> move (-2,20)
                         , rect 34 2
                             |> filled black
                             |> rotate (55)
                             |> move (-2,-1)
                         , wedge 5 0.5
                             |> filled blue
                             |> rotate (55)
                             |> move (6,10)

                         ]
                         |> rotate model.time
                         ]

        myBackground = square 200 |> filled pink
    in ("DutifulLotus",myWord,"8","vest","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "cucumber"-- put your work here (in quotes) --
        myCode = 291-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- numer out of 10

        myShapes model = [ myBackground
                         , oval 80 15
                             |> filled darkGreen
                             |> scale (2* sin model.time + 5)
                             |> scaleX 0.12
                             |> scaleY 0.2

                         ]

        myBackground = square 200 |> filled white
    in ("DynamicLychee",myWord,"8","Exponential Growth Cucumber","Northlake Woods"

       ,myShapes)

  ,    let
        myWord ="indigo"-- put your work here (in quotes) --
        myCode = 367 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , square 65
                             |> filled black
                             |> rotate model.time
                     --    , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled white


    in ("EagerLynx",myWord,"8","indigo","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "plum"-- put your work here (in quotes) --
        myCode = 445 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                          ,  circle 20
                               |> filled purple
                          , rect 4 10
                               |> filled brown
                               |> scaleY 2
                               |> move (0,20)
                          , roundedRect 5 10 10
                               |> filled darkGreen
                               |> scaleY 2
                               |> rotate (degrees 90)
                               |> move (10,30)
                          , roundedRect 4 8 8
                               |> filled darkGreen
                               |> scaleY 2
                               |> rotate (degrees 90)
                               |> move (-8,23)

             ]


        myBackground = square 200 |> filled yellow



    in ("CourageousIncense",myWord,"8","Wedge","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "turquoise" -- put your work here (in quotes) --
        myCode = 539 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , square 30
                             |> filled (rgb 71 200 199)
                             |> rotate model.time
                         , graphPaper 10 |> makeTransparent 0.0
                         ]

        myBackground = square 200 |> filled blank
    in ("EducatedMallow",myWord,"8","turquoise","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "gorilla" -- put your work here (in quotes) --
        myCode = 338 --  put your code number here, which came with your word (not in quotes) --
        score = 19 -- number out of 10

        myShapes model = [circle 8
                         |> filled (rgb 128 128 128)
                         |> move (-5,9)
                          ,circle 8
                         |> filled (rgb 128 128 128)
                         |> move (5,9)
                         , circle 8
                         |> filled (rgb 128 128 128)
                         |> move (0,15)
                          ,oval 25 30
                         |> filled (rgb 98 98 98)
                         , circle 3
                         |> filled white
                         |> move (5,3.5)
                         , circle 3
                         |> filled white
                         |> move (-5,3.5)
                         , circle 1.5
                         |> filled black
                         |> move (5,3.5)
                         , circle 1.5
                         |> filled black
                         |> move (-5,3.5)
                         ,roundedRect 10 3 5
                          |> filled (rgb 128 128 128)
                          |> move (0,-8)




                         ]

        myBackground = square 200 |> filled pink
    in ("OutrageousTapir",myWord,"8","Grilla by Peter","Kaufman"

       ,myShapes)

  ,    let
        myWord = "puffin"-- put your work here (in quotes) --
        myCode = 452-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- numebr out of 10

        myShapes model = [  roundedRect 30 25 30
                             |> filled black
                             |> rotate (degrees 100)
                             |> move (23,-15)

                           , roundedRect 20 15 20
                             |> filled lightGray
                             |> rotate (degrees 100)
                             |> move (23,-15)

                           , circle 10
                             |> filled black
                             |> move (21,4.8)

                           , triangle 3
                             |> filled lightGray
                             |> rotate (degrees 90)
                             |> move (21,6)

                           , triangle 5
                             |> filled lightOrange
                             |> rotate (degrees 180)
                             |> move (10,5)

                           , circle 1
                             |> filled black
                             |> move (21,6)

                           , rectangle 2 8
                             |> filled lightOrange
                             |> move (20,-33)

                           , rectangle 2 8
                             |> filled lightOrange
                             |> move (28,-33)

                           , rectangle 1 4.5
                             |> filled lightOrange
                             |> move (28,-38)

                           , rectangle 1 4.5
                             |> filled lightOrange
                             |> move (31,-38)
                             |> rotate (degrees 60)

                           , rectangle 1 4.5
                             |> filled lightOrange
                             |> move (26,-38)
                             |> rotate (degrees 125)

                           , rectangle 1 4.5
                             |> filled lightOrange
                             |> move (20,-38)

                           , rectangle 1 4.5
                             |> filled lightOrange
                             |> move (23,-38)
                             |> rotate (degrees 60)

                           , rectangle 1 4.5
                             |> filled lightOrange
                             |> move (17,-38)
                             |> rotate (degrees 125)

                         --, circle 6 |> filled yellow
                          , group [group [roundedRect 10 20 5
                             |> filled black
                             |> move (0,-5)
                             ]
                            |> rotate (-0.5 + -0.6 * sin model.time) --(degrees 90)
                           ]
                       |> move (9,-9)

                          --, circle 6 |> filled yellow
                          , group [group [roundedRect 10 20 5
                                    |> filled black
                                    |> move (0,-5)
                                    ]
                                   |> rotate (0.5 + 0.6 * sin model.time) --(degrees 90)
                                  ]
                              |> move (36,-9)

                          , rect 20 100
                             |> filled lightBlue
                             |> move (0,40)
                             |> rotate (degrees 90)









                         ]

        myBackground = square 200 |> filled white
    in ("RoyalBarley",myWord,"8","The Puffin","Saginaw"

       ,myShapes)

  ,    let
        myWord ="black"-- put your work here (in quotes) --
        myCode = 234 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- numebr out of 10

        myShapes model = [ myBackground
                         , square 65
                             |> filled black

                         , graphPaper 10 |> makeTransparent 0.0
                         ]

        myBackground = square 200 |> filled white


    in ("EducatedMallow",myWord,"8","black","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "partridge"-- put your work here (in quotes) --
        myCode = 432 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- numebr out of 10

        myShapes model = [ myBackground
                         , group [rect 10 30
                             |> filled brown
                             |> move (0,-50)
                         , oval 100 75
                             |> filled darkGreen
                         , rect 3 20
                      |> filled (rgb 255 192 203)
                      |> rotate (degrees 150)
                      |> move (-6,-14)
                  , rect 3 20
                      |> filled (rgb 255 192 203)
                      |> rotate (degrees 150)
                      |> move (2,-16)
                  , oval 40 30
                      |> filled (rgb 160 82 45)
                      |> rotate (degrees 325)
                  , oval 35 15
                      |> filled (rgb 238 232 170)
                      |> rotate (degrees 325)
                      |> move (-3,-4)
                  , curve (0,0) [Pull (6,8) (0,16) ]
                      |> filled (rgb 139 69 19)
                      |> rotate (degrees 325)
                      |> move (0,-15)
                      |> scale 0.75
                  , curve (0,0) [Pull (6,8) (0,16) ]
                      |> filled (rgb 139 69 19)
                      |> rotate (degrees 310)
                      |> move (-4,-10)
                      |> scale 0.75
                  ,  curve (0,0) [Pull (6,8) (0,16) ]
                      |> filled (rgb 139 69 19)
                      |> rotate (degrees 355)
                      |> move (8,-16)
                      |> scale 0.75
                  ,  rightTriangle 10 20
                      |> filled (rgb 160 82 45)
                      |> move (18,0)
                      |> rotate (degrees 215)
                  , oval 15 20
                      |> filled (rgb 238 232 170)
                      |> rotate (degrees 90)
                      |> move (-15,17)
                  , oval 4 6
                      |> filled (rgb 255 140 0)
                      |> move (-17,18)
                      |> rotate (degrees 90)
                  , circle 1.5
                      |> filled black
                      |> move (-17,18)
                  , circle 0.5
                      |> filled white
                      |> move (-17.25,18.25)
                  , curve (0,0) [Pull (-77,-3) (0,37), Pull (-13,20) (-15,12) ]
                      |> filled (rgb 250 150 0)
                      |> scale 0.23
                      |> move (-22,13)
                  , rect 0.5 5
                      |> filled black
                      |> move (-28,15)
                      |> rotate (degrees 90)
                  , curve (4,0) [Pull (35,25) (66,0), Pull (35,11) (0,0) ]
                      |> filled (rgb 139 69 19)
                      |> scale 0.3
                      |> move (-25,21)
                  , curve (0,0) [Pull (13,23) (-20,24), Pull (8,24) (0,0) ]
                      |> filled black
                      |> scale 0.5
                      |> move (-12,12)
                      |> rotate (degrees 20)
                         , myStr
                             |> scale (1 + sin model.time)
                         , rect 2 8
                             |> filled brown
                             |> rotate (degrees 35)
                             |> move (28,17)
                         ,oval 10 12
                          |> filled lightGreen
                          |> move (30,10)
                         , rect 2 8
                             |> filled brown
                             |> rotate (degrees 35)
                             |> move (-32,-3)
                         ,oval 10 12
                          |> filled lightGreen
                          |> move (-30,-10)
                         ] |> scale 0.95
                         ]

        myBackground = square 200 |> filled green


        myStr = text "In a Pear Tree"
                  |> filled black
                  |> move (-50,-49)
                  |> scale 0.75


    in ("OutstandingTaro",myWord,"8","Partridge","Kaufman"

       ,myShapes)

  ,    let
        myWord ="chick" -- put your work here (in quotes) --
        myCode =271 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ circle 25
                         |> filled yellow


                         ,circle 15
                         |> filled yellow
                         |> move (-25,20)


                         ,circle 2
                         |> filled black
                         |> move (-31,23)


                         ,circle 2
                         |> filled black
                         |> move (-20,23)


                         ,rect 3 30
                         |> filled orange
                         |> move (-10,-35)


                         ,rect 3 30
                         |> filled orange
                         |> move (10,-35)


                         ,triangle 3
                         |> filled orange
                         |> move (-20,20)
                         ]

        myBackground = square 200 |> filled blue
    in ("MoaningSloth",myWord,"8","zoo","Kaufman"

       ,myShapes)

  ,    let
        myWord = "monkey"-- put your work here (in quotes) --
        myCode = 401-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- numebr out of 10

        myShapes model = [ myBackground
                         , circle 10
          |> filled darkBrown
          |> move (0,30)
          ,oval 40 75
          |> filled darkBrown
          |> move (0,-10)
          ,oval 25 60
          |> filled lightBrown
          |> move (0,-10)
          ,circle 1
          |> filled black
          |> move (-5,30)
          ,circle 1
          |> filled black
          |> move (5,30)
          ,circle 4
          |> filled darkBrown
          |> move (7,35)
         ,circle 4
          |> filled darkBrown
          |> move (-7,35)
          ,roundedRect 5 45 5
          |> filled darkBrown
          |> rotate (degrees -30)
          |> move (25,10)
          ,roundedRect 5 45 5
          |> filled darkBrown
          |> rotate (degrees 30)
          ,roundedRect 10 20 5
          |> filled yellow
          |> move (30,20)]
        myBackground = square 200 |> filled green
    in ("PleasantToad",myWord,"8","Monkey with Banana","Kaufman"

       ,myShapes)

  ,    let
        myWord = "hyena" -- put your work here (in quotes) --
        myCode = 365 -- put your code number here, which came with your word (not in quotes) --
        score = 10
        myShapes model = [ myBackground

                         , group [ curve (0,0) [Pull (0,21) (0,-31), Pull (46,18) (0,0) ]
                             |> filled (rgb 165 42 4)
                             |> move (20, 42)
                         , curve (0,0) [Pull (0,21) (0,-31), Pull (-46,18) (0,0) ]
                             |> filled (rgb 165 42 4)
                             |> move (-20, 42)
                         , rect 40 30
                             |> filled (rgb 165 42 4)
                             |> move (0, 29)
                         ,curve (0,0) [Pull (-41,0) (0,-31), Pull (41,0) (0,0) ]
                             |> filled (rgb 165 42 4)
                             |> move (0, 25)
                         , circle 5
                             |> filled black
                             |> move (0, 20)
                         , circle 2.5
                             |> filled white
                             |> move (-10, 35)
                         , circle 2.5
                             |> filled white
                             |> move (10, 35)
                         , circle 1.25
                             |> filled black
                             |> move (10, 35)
                         , circle 1.25
                             |> filled black
                             |> move (-10, 35)
                         ,curve (0,0) [Pull (-18,0) (0,-8), Pull (18,0) (0,0) ]
                             |> filled (rgb 255 255 255)
                             |> move (0, 10)

                         ] |> move (0, -20)
                         ]

        myBackground = square 200 |> filled yellow
    in ("MerrySesame",myWord,"8","Hyena by Akshansh","Kaufman"

       ,myShapes)

  ,    let
        myWord = "hip" -- put your work here (in quotes) --
        myCode =  361-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                       ,roundedRect 500 1000 5
                       |> filled darkBlue
                       |> move (-290,30)

                   , oval 80 100
                       |> filled darkBlue
                       |> move (-60,30)


                         ]
        myBackground = square 140 |> filled black
    in ("PerfectTiger",myWord,"8","deer","Kaufman"

       ,myShapes)

  ,    let
        myWord = "summer"
        myCode = 512
        score = 10 -- number out of 10

        myShapes model = [mybackground
                            , group [rect 50 40
                             |> filled (rgb 0 0 255)
                             |> scaleX 2.75
                             |> move (0,-30)
                         , rect 50 10
                             |> filled lightBrown
                             |> scaleX 2.75
                             |> move (0,-10)
                        , circle 10
                             |> filled lightYellow
                             |> move (30, 30)
                            , roundedRect 3 15 6
                             |> filled lightYellow
                             |> rotate (degrees 50)
                             |> move (43, 17)
                            , roundedRect 3 15 6
                             |> filled lightYellow
                             |> rotate (degrees 1)
                             |> move (30, 12)
                            , roundedRect 3 15 6
                             |> filled lightYellow
                             |> rotate (degrees -45)
                             |> move (15, 17)
                            , roundedRect 3 15 6
                             |> filled lightYellow
                             |> rotate (degrees 90)
                             |> move (10, 33)
                            , roundedRect 3 15 6
                             |> filled lightYellow
                             |> rotate (degrees 50)
                             |> move (16, 43)
                            , roundedRect 3 15 6
                             |> filled lightYellow
                             |> move (30, 49)
                            , roundedRect 3 15 6
                             |> filled lightYellow
                             |> rotate (degrees 150)
                             |> move (43, 45)
                            , roundedRect 3 15 6
                             |> filled lightYellow
                             |> rotate (degrees 90)
                             |> move (49, 33)

                         ] |> scale 0.7
                         ]
        mybackground = square 200 |> filled (rgb 84 219 239)

    in ("PuzzledAlmond",myWord,"8","summer","Saginaw"

       ,myShapes)

  ,    let
        myWord = "orange"
        myCode =  431

        myShapes model = [ myBackground
                        , circle 40
          |> filled orange
          , circle 31
          |> outlined (solid 1) white
            , circle 32
          |> outlined (solid 1) darkOrange
            , circle 33
          |> outlined (solid 1) white
            , circle 34
          |> outlined (solid 1) darkOrange
            , circle 35
          |> outlined (solid 1) white
            , circle 36
          |> outlined (solid 1) darkOrange
            , circle 37
          |> outlined (solid 1) white
            , circle 38
          |> outlined (solid 1) darkOrange
            , circle 39
          |> outlined (solid 1) white
            , circle 40
          |> outlined (solid 1) darkOrange


          ,wedge 31 0.75
          |> outlined (solid 1) white
          |> rotate (degrees 30)
          |> rotate (model.time)
            ,wedge 31 0.75
          |> outlined (solid 1) white
          |> rotate (degrees 60)
          |> rotate (model.time)
            ,wedge 31 0.75
          |> outlined (solid 1) white
          |> rotate (degrees 90)
          |> rotate (model.time)
            ,wedge 31 0.75
          |> outlined (solid 1) white
          |> rotate (degrees 120)
          |> rotate (model.time)
            ,wedge 31 0.75
          |> outlined (solid 1) white
          |> rotate (degrees 150)
          |> rotate (model.time)
            ,wedge 31 0.75
          |> outlined (solid 1) white
          |> rotate (degrees 180)
          |> rotate (model.time)
            ,wedge 31 0.75
          |> outlined (solid 1) white
          |> rotate (degrees 210)
          |> rotate (model.time)
            ,wedge 31 0.75
          |> outlined (solid 1) white
          |> rotate (degrees 240)
          |> rotate (model.time)
            ,wedge 31 0.75
          |> outlined (solid 1) white
          |> rotate (degrees 270)
          |> rotate (model.time)
            ,wedge 31 0.75
          |> outlined (solid 1) white
          |> rotate (degrees 300)
          |> rotate (model.time)
            ,wedge 31 0.75
          |> outlined (solid 1) white
          |> rotate (degrees 330)
          |> rotate (model.time)




                             ]




        myBackground = square 200 |> filled white

    in ("NoisySpider",myWord,"8","gander","Kaufman"

       ,myShapes)

  ,    let
        myWord = "gander"
        myCode =  330
        score = 10 -- number out of 10

        myShapes model = [ myBackground



                     -- , graphPaper 10 |> makeTransparent 0.4
                      ,roundedRect 40 35 0
          |> filled white
          |> scaleX 0.25
          |> rotate (degrees 180)
          |> move (0,4),
          secondshape,
          thirdshape,
          fourthshape,
          fifthshape,
          sixthshape

                         ]

        myBackground = square 100 |> filled blue
        secondshape = roundedRect 20 25 10
          |> filled white
          |> scaleX 1.75
          |> move (5,20)
        thirdshape = roundedRect 20 10 15
          |> filled white
          |> scale 3
          |> rotate (degrees 360)
          |> move (-10,-20)
        fourthshape = roundedRect 100 18 10
          |> filled white
          |> scale 0.25
          |> rotate (degrees 90)
          |> move (10,-35)
        fifthshape = roundedRect 100 18 10
          |> filled white
          |> scale 0.25
          |> rotate (degrees 90)
          |> move (-25,-35)
        sixthshape = triangle 35
          |> filled black
    in ("ObedientStrawberry",myWord,"8","gander","Kaufman"

       ,myShapes)

  ,    let
        myWord = "shorts" -- put your work here (in quotes) --
        myCode = 487 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , rect 10 15
          |> filled darkBlue
          |> scale 3
          |> move (-20,-10)
           , rect 10 15
          |> filled darkBlue
          |> scale 3
          |> move (20,-10)
         , rect 10 15
          |> filled darkBlue
          |> scale 3
          |> scaleX 3
          |> move(10,15)
          , rect 10 15
          |> filled black
          |> scale 3
          |> move (50,15)
          , circle 10
          |> filled lightBlue
          |> scale 1
          |> move(-28,30)
           , circle 10
          |> filled lightBlue
          |> scale 1
          |> move(28,30)
          , rect 10 15
          |> filled black
          |> scale 2
          |> move (-45,30)
          , rect 10 15
          |> filled black
          |> scale 2
          |> move (45,30)
          , rect 10 15
          |> filled black
          |> scale 1.75
          |> scaleX 1.75
          |> move (-35,50)
          , rect 10 15
          |> filled black
          |> scale 1.75
          |> scaleX 1.75
          |> move (35,50)
         , rect 10 15
          |> filled black
          |> move (0,30)
          , rect 10 15
          |> filled darkBlue
          |> move (6,30)
           , rect 10 15
          |> filled darkBlue
          |> move (-6,30)

                         ]




        myBackground = square 200 |> filled black
    in ("ContentHummingbird",myWord,"8","shorts","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "lime"
        myCode =  339
        score = 10 -- number out of 10

        myShapes model =
              [ myBackground
         , circle 40
          |> filled lightGreen
          , circle 35
          |> outlined (solid 1) green
          , circle 36
          |> outlined (solid 1) green
          , circle 37
          |> outlined (solid 1) green
           , circle 38
          |> outlined (solid 1) green
           , circle 39
          |> outlined (solid 1) green
           , circle 40
          |> outlined (solid 1) green
         , wedge 35 0.75
          |> outlined (solid 1) white
          , wedge 35 0.75
          |> outlined (solid 1) white
          |> rotate (degrees -30)
           , wedge 35 0.75
          |> outlined (solid 1) white
          |> rotate (degrees -60)
           , wedge 35 0.75
          |> outlined (solid 1) white
          |> rotate (degrees -90)
           , wedge 35 0.75
          |> outlined (solid 1) white
          |> rotate (degrees -120)
           , wedge 35 0.75
          |> outlined (solid 1) white
          |> rotate (degrees -150)
           , wedge 35 0.75
          |> outlined (solid 1) white
          |> rotate (degrees -180)
           , wedge 35 0.75
          |> outlined (solid 1) white
          |> rotate (degrees -210)
           , wedge 35 0.75
          |> outlined (solid 1) white
          |> rotate (degrees -240)
           , wedge 35 0.75
          |> outlined (solid 1) white
          |> rotate (degrees -270)
           , wedge 35 0.75
          |> outlined (solid 1) white
          |> rotate (degrees -300)
           , wedge 35 0.75
          |> outlined (solid 1) white
          |> rotate (degrees -330)
           , wedge 35 0.75
          |> outlined (solid 1) white
          |> rotate (degrees -360)



                         --, graphPaper 10 |> makeTransparent 0

                        ]


        myBackground = square 300 |> filled white
    in ("NoisySpider",myWord,"8","lime","Kaufman"

       ,myShapes)

  ,    let
        myWord = "shorts" -- put your work here (in quotes) --
        myCode = 487 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , rect 10 15
          |> filled darkBlue
          |> scale 2.25
          |> scaleX 2.25
          , square 24
          |> filled darkBlue
          |> move (13.25,-17)
                             , square 24
          |> filled darkBlue
          |> move (-13.25,-17)
                        , circle 2
          |> filled darkBrown
          |> move (0,11)
          , curve (11,0) [Pull (0,-17) (-11,0) ]
          |> outlined (solid 0.5) (rgb 250 150 0)
          |> rotate 45
          |> move (-19,8)  , curve (11,0) [Pull (0,-17) (-11,0) ]
          |> outlined (solid 0.5) (rgb 250 150 0)
          |> rotate 175
          |> move (19,8)


                         ]

        myBackground = square 200 |> filled lightGrey
    in ("ComfortableHorse",myWord,"8","shorts","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "watermelon"-- put your work here (in quotes) --
        myCode = 561-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , curve (50,0) [Pull (0,-25) (-50,0), Pull (0,-15) (50,0) ]
                          |> filled (rgb 0 255 0)
                          |> move (0, -30)
                         ,curve (50,-10) [Pull (0,-25) (-50,-10), Pull (0,-10) (50,-10) ]
                          |> filled (rgb 255 0 0)
                          |> move (0, -20)
                         , isosceles 100 75
                          |> filled (rgb 255 0 0)
                          |> move (0,-30)
                         , seed |> move (-30,-30)
                         , seed |> move (-30,-10)
                         , seed |> move (-10,-30)
                         , seed |> move (0,0)
                         , seed |> move (10,10)
                         , seed |> move (0,20)
                         , seed |> move (-20,-20)
                         , seed |> move (-10,-10)
                         , seed |> move (-20,0)
                         , seed |> move (10,10)
                         , circle 3 |> filled white |> move (20, -20)
                         --, graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled pink
        seed =  circle 2 |> filled (rgb 0 0 0)
    in ("EcstaticMallard",myWord,"8","Watermelon","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "gold" -- put your work here (in quotes) --
        myCode = 335 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
          , square 10
         |> filled yellow
                         ]

        myBackground = square 200 |> filled darkYellow
    in ("ContentHummingbird",myWord,"8","yellow","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "thumbs"-- put your work here (in quotes) --
        myCode = 525-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground

          , group[ curve (0,0) [Pull (-61,49) (0,-125), Pull (-2,20) (52,-122) ]
          |> filled (rgb 255 37 20)
          |> move(-20,30)
          , curve (0,0) [Pull (-27,37) (-22,-19) ]
          |> filled (rgb 0 0 0)
          |>move(-20,25)
           , curve (0,0) [Pull (-61,49) (0,-125), Pull (-2,20) (52,-122) ]
          |> filled (rgb 255 37 20)
          |>move (30,10)
          , curve (0,0) [Pull (-27,36) (-22,-16) ]
          |> filled (rgb 0 0 255)
          |>move(30,10)
                      --   , graphPaper 10 |> makeTransparent 0.4

                         ] |> scale 0.8 |> move (0, 10)
                         ]

        myBackground = square 200 |> filled white
    in ("MightyShark",myWord,"8","Disgusting Thumbs","Kaufman"

       ,myShapes)

  ,    let
        myWord = "crane"  -- put your work here (in quotes) --
        myCode= 287    -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , rect 10 50
                             |> filled yellow
                             |> move (15,0)
                             , rect 50 10
                             |> filled yellow
                             |> move (0,15)
                             , square 10
                             |> filled darkCharcoal
                             |> move (15,25)
                             , rect 3 30
                             |> filled black
                             |> move (10 *sin(model.time),-4)
                             , square 5
                             |>  filled lightCharcoal
                             |> move (10 *sin(model.time),-22)

                       --  , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled blue
    in ("ObservantSumac",myWord,"8","Crane","Kaufman"

       ,myShapes)

  ,    let
        myWord = "yellow" -- put your work here (in quotes) --
        myCode = 576 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10
        myShapes model = [ myBackround


                         , circle 20
                              |> filled yellow ]



        myBackround = square 200 |> filled white
    in ("QuickAnteater",myWord,"8","bathtub","Saginaw"

       ,myShapes)

  ,    let
        myWord = "pomegranate" -- put your work here (in quotes) --
        myCode = 446 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , circle 40
                             |> filled lightRed
                             |> rotate model.time
                         , triangle 10
                             |> filled lightRed
                             |> rotate (degrees 30)
                             |> move (0,40)
                          ,
                          triangle 10
          |> filled lightRed
          |> rotate (degrees -30)
          |> move (0,40)]



        myBackground = square 200 |> filled white
    in ("NuttyStarfish",myWord,"8","pomegranate","Kaufman"

       ,myShapes)

  ,    let
        myWord = "yogi"
        myCode = 577
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , roundedRect 20 30 5
                             |> filled blue
                             |> move (0,5)
                             ,
                             circle 10
                             |> filled (rgb 253 238 177)
                             |> move (0,30)
                             ,
                             oval 6 20
                             |> filled blue
                             |> move (-14,7)
                             |> rotate ( degrees -25)
                             ,
                             oval 6 20
                             |> filled blue
                             |> move (14, 7)
                             |> rotate (degrees 25)
                             ,
                             oval 38 6.5
                             |> filled blue
                             |> move (0,-1.5)
                             ,
                             roundedRect 2 10 5
                             |> filled (rgb 253 238 177)
                             |> move (-1,0)
                             ,
                             roundedRect 2 10 5
                             |> filled (rgb 253 238 177)
                             |> move (1,0)
                             ,
                             roundedRect 5 26 5
                             |> filled black
                             |> move (-7,-22)
                             ,
                             roundedRect 5 15 5
                             |> filled black
                             |> move (10, -16)
                             |> rotate (degrees 30)
                             ,
                             roundedRect 5 22 5
                             |> filled black
                             |> move (3,-24)
                             |> rotate (degrees -70)
                             ,
                             roundedRect 20 6 5
                             |> filled black
                             |> move (0,-10)


                         ]

        myBackground = square 200 |> filled white



    in ("SafeBasil",myWord,"8","yogi","Saginaw"

       ,myShapes)

  ,    let
        myWord = "yellow" -- put your work here (in quotes) --
        myCode = 576 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackround


                         , circle 20
                              |> filled yellow ]



        myBackround = square 200 |> filled white
    in ("QuickAnteater",myWord,"8","Yellow","Saginaw"

       ,myShapes)

  ,    let
        myWord = "toe" -- put your work here (in quotes) --
        myCode = 527 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                        ,rect 10 20
                          |> filled (rgb 255 218 185)
                        ,rect 5 5
                          |> filled white
                          |> move (0, 5)
                         ]

        myBackground = square 200 |> filled pink
    in ("MerrySesame",myWord,"8","Toe by Akshansh","Kaufman"

       ,myShapes)

  ,    let
        myWord ="peach"
        myCode = 433
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , peach
                             |> move (-(cos(model.time*4)*25),(sin(model.time*4)*10))
                             |> scale 0.8


                         ]


        peach = group[roundedRect 5 10 5
                             |> filled (rgb 214 190 42)
                             |> move (-5,25)
                         , oval 45 50
                             |> filled (rgb 215 125 50)
                         , oval 45 50
                             |> filled (rgb 230 125 50)
                             |> move (-10,0)
                         , triangle 10
                             |> filled (rgb 214 190 42)
                             |> rotate (degrees 45)
                             |> scaleX 1.5
                             |> move (6.5,41.5)
                         , circle 9
                             |> filled (rgb 214 190 42)
                             |> move(0,35)

                       ]

        myBackground = square 200 |> filled pink
    in ("RadiantApricot",myWord,"8","Peach","Saginaw"

       ,myShapes)

  ,    let
        myWord = "horse" -- put your work here (in quotes) --
        myCode = 363 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , rect 60 100
                             |> filled (rgb 5 154 0)
                             |> rotate (degrees 90)
                             |> move (0,-38)
                         , curve (0,0) [Pull (10,0) (20,-10)]
                             |> filled (rgb 105 56 0)
                             |> scale 1.25
                             |> rotate (degrees 95)
                             |> move (-46,-20)
                         , roundedRect 20 60 10
                             |> filled (rgb 80 43 1)
                             |> scaleX 0.67
                             |> scaleY 0.67
                             |> move (27,-10)
                             |> rotate (degrees 0)
                         , roundedRect 40 80 5
                             |> filled (rgb 105 56 0)
                             |> scale 0.25
                             |> move (23.5,35)
                         , triangle 40
                             |> filled (rgb 105 56 0)
                             |> scale 0.25
                             |> move (27,36)
                         , roundedRect 20 60 10
                             |> filled (rgb 105 56 0)
                             |> scaleX 0.75
                             |> scaleY 0.55
                             |> move (34,30)
                             |> rotate (degrees 92)
                         , oval 10 15
                             |> filled white
                             |> rotate (degrees 90)
                             |> scale 0.50
                             |> move (27,36)
                         , circle 10
                             |> filled black
                             |> scale 0.20
                             |> move (28,36)
                         , roundedRect 20 60 10
                             |> filled (rgb 105 56 0)
                             |> scaleX 0.90
                             |> scaleY 0.70
                             |> move (27,10)
                             |> rotate (degrees 0)
                         , roundedRect 20 60 10
                             |> filled (rgb 80 43 1)
                             |> scaleX 0.67
                             |> scaleY 0.67
                             |> move (-15,-10)
                             |> rotate (degrees 0)
                         , roundedRect 20 60 10
                             |> filled (rgb 105 56 0)
                             |> scaleX 1.25
                             |> scaleY 1.25
                             |> rotate (degrees -90)
                         , roundedRect 20 60 10
                             |> filled (rgb 105 56 0)
                             |> scaleX 0.67
                             |> scaleY 0.67
                             |> move (-25,-15)
                             |> rotate (degrees 0)
                         , roundedRect 20 60 10
                             |> filled (rgb 105 56 0)
                             |> scaleX 0.67
                             |> scaleY 0.67
                             |> move (17,-15)
                             |> rotate (degrees 0)
                         -- , graphPaper 10 |> makeTransparent 0
                         ]

        myBackground = square 200 |> filled (rgb 9 190 226)
    in ("ScreechingBat",myWord,"8","Horse","Saginaw"

       ,myShapes)

  ,    let
        myWord = "purple" -- put your work here (in quotes) --
        myCode = 456-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                          , text "PURPLE"
         |> size 14
         |> italic
         |> underline

         |> serif

         |> filled (rgb 82 0 137)
         |> move (-32,10) ]


        myBackground = square 200 |> filled lightPurple
    in ("ComfortableHorse",myWord,"8","purple","Northlake Woods"

       ,myShapes)

  ,    let
        myWord ="hen"--
        myCode = 357-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , oval 60 40
                             |> filled brown

                    , curve (0,0) [Pull (0,50) (0,0), Pull (-88,66) (0,0), Pull (-71,37) (0,38) ]
                         |> filled brown
                         |> move (-10,-19.4)

                        , oval 60 15
                             |> filled brown
                             |> move (20,6)
                             |> rotate (degrees 45)

                        , circle 5
                             |> filled brown
                             |> move (40,23)

                             , triangle 3
                             |> filled yellow
                             |> move (45,23)

                             , circle 2
                             |> filled white
                             |> move (40,24)




                         ]

        myBackground = square 200 |> filled grey
    in ("OutstandingWatermelon",myWord,"8","Hen","Saginaw"

       ,myShapes)

  ,    let
        myWord ="pickle" -- put your work here (in quotes) --
        myCode = 231 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , oval 10 17
                             |> filled green
                             |> rotate model.time
                       --  , graphPaper 10 |> makeTransparent 0.4


                        ]



        myBackground = square 200 |> filled pink
    in ("PleasedWolverine",myWord,"8","pickle","Saginaw"

       ,myShapes)

  ,    let
        myWord = "forest"-- put your work here (in quotes) --
        myCode = 327-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                          ,group [triangle 50
          |> filled green
          |> rotate (degrees -30)
          |> move (0,-25)
          ,triangle 50
          |> filled darkGreen
          |> rotate (degrees -30)
          |> move (20,-25)
          ,triangle 50
          |> filled lightGreen
          |> rotate (degrees -30)
          |> move (-20,-25)
          ,oval 40 55
          |> filled green
          |> move (-30,-10)
          ,rect 10 25
          |> filled brown
          |> move (-30,-40)
          ,oval 40 55
          |> filled lightGreen
          |> move (30,-10)
          ,rect 10 25
          |> filled lightBrown
          |> move (30,-40)
          ,triangle 40
          |> filled darkGreen
          |> rotate (degrees -30)
          |> move (20,-30)] |> scale 0.8
          ]
        myBackground = square 200 |> filled lightBlue
    in ("PleasantToad",myWord,"8","Mystical Forest","Kaufman"

       ,myShapes)

  ,    let
        myWord = "dragonfly" -- put your work here () --
        myCode = 359 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
          , oval 20.5 30.5
               |> filled white
               |> move (2,0)
          , oval 10.5 40.5
               |> filled white
               |> move (2,-19)
          , oval 20 30
               |> filled darkGreen
               |> move (2,0)
          , oval 17.5 14.5
               |> filled white
               |> move (2,16)
          , oval 17 14
               |> filled darkGreen
               |> move (2,16)
          , oval 10 40
               |> filled darkGreen
               |> move (2,-19)
          , circle 4.5
               |> filled white
               |> move (5,20)
          , circle 4
               |> filled lightRed
               |> move (5,20)
          , circle 1
               |> filled white
               |> move (6,21)
          , circle 4.5
               |> filled white
               |> move (-1,20)
          , circle 4
               |> filled lightRed
               |> move (-1,20)
          , circle 1
               |> filled white
               |> move (-2,21)
          , oval 13 40
               |> filled (rgb 29 184 255)
               |> makeTransparent 0.5
               |> rotate (degrees 70)
               |> move (-20,10)
               |> move (sin(30*model.time)*1,1)
          , oval 13 40
               |> filled (rgb 29 184 255)
               |> makeTransparent 0.5
               |> rotate (degrees 110)
               |> move (-20,-10)
               |> move (sin(30*model.time)*1,1)
          , oval 13 40
               |> filled (rgb 29 184 255)
               |> makeTransparent 0.5
               |> rotate (degrees 290)
               |> move (23,10)
               |> move (sin(30*model.time)*1,1)
          , oval 13 40
               |> filled (rgb 29 184 255)
               |> makeTransparent 0.5
               |> rotate (degrees 250)
               |> move (23,-10)
               |> move (sin(30*model.time)*1,1)

                         ]

        myBackground = square 200 |> filled lightCharcoal
    in ("PeacefulWhale",myWord,"8","Dragonfly","Saginaw"

       ,myShapes)

  ,    let
        myWord = "knees"-- put your work here (in quotes) --
        myCode = 381 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                                   ,roundedRect 25 100 5
                                    |> filled darkBrown
                                    |> scaleY 2
                                    |> move (-35, 0)
                                   ,roundedRect 25 100 5
                                    |> filled darkBrown
                                    |> scaleY 2
                                    |> move (35, 0)
                                    , circle 13
                                    |> outlined (solid 1) black
                                    |> move (-35, 0)
                                      , circle 13
                                    |> outlined (solid 1) black
                                    |> move (35, 0)
                         ]

        myBackground = square 200 |> filled orange
    in ("PerfectTiger",myWord,"8","knees","Kaufman"

       ,myShapes)

  ,    let
        myWord = "cerulean" -- put your work here (in quotes) --
        myCode = 264 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , square 100
                             |> filled (if sin model.time > 0 then (rgb 0 123 167) else (rgb 0 158 206))
                         , circle 40
                             |> filled (if sin model.time > 0 then (rgb 0 158 206) else (rgb 0 123 167))
                        -- , graphPaper 10 |> makeTransparent 0.4
                         ]



        myBackground = square 200 |> filled pink
    in ("CuriousJackal",myWord,"8","Cerulean","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "cerulean" -- put your work here (in quotes) --
        myCode = 264 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , square 100
                             |> filled (if sin model.time > 0 then (rgb 0 123 167) else (rgb 0 158 206))
                         , circle 40
                             |> filled (if sin model.time > 0 then (rgb 0 158 206) else (rgb 0 123 167))
                         --, graphPaper 10 |> makeTransparent 0.4
                         ]



        myBackground = square 200 |> filled pink

    in ("CuriousJackal",myWord,"8","Cerulean","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "plum" --  --
        myCode = 445 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , circle 25
                             |> filled purple
                         , rect 3 20
                             |> filled darkGreen
                             |> move (0,30)
                         -- , graphPaper 10 |> makeTransparent 0
                         ]

        myBackground = square 200 |> filled yellow
    in ("EfficientMandrake",myWord,"8","Wedge","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "crow"-- put your work here (in quotes) --
        myCode = 290-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , curve (25,0) [Pull (0,-25) (-25,0), Pull (0,25) (25,0) ]
                              |> filled black
                              |> rotate (degrees 330)
                              |> scale 1.5
                              |> move (12, -7)
                         ,isosceles 10 15
                              |> filled (rgb 255 255 0)
                              |> rotate (degrees 90)
                              |> move (-30,15)
                         , circle 10
                              |> filled black
                              |> move (-22, 15)
                         , circle 1
                              |> filled white
                              |> move (-25, 20)
                         , curve (45,0) [Pull (0,-25) (-25,0), Pull (0,25) (45,0) ]
                              |> filled black
                              |> rotate ((((sin model.time)+1)/3)-0)
                              |> scale 1
                              |> move (12, 10)
                         -- , graphPaper 10 |> makeTransparent 0
                         ]

        myBackground = square 200 |> filled lightBlue
    in ("EcstaticMallard",myWord,"8","Crow","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "red"
        myCode = 471
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , square 10
                             |> filled red
                             |> rotate model.time
                         -- , graphPaper 1 |> makeTransparent 0.1
                         ]

        myBackground = square 200 |> filled red
    in ("PleasantWolf",myWord,"8","red","Saginaw"

       ,myShapes)

  ,    let
        myWord = "fire engine"
        myCode = 322
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , group [rect 1000 25
                         |> filled black

                         |> move (0,-50)
                         ,rect 10 40
                         |> filled gray
                         |> move (0,0)
                         |> scaleX 3
                         ,roundedRect 35 45 5
                         |> filled red
                         |> move (-30,0)
                         ,roundedRect 15 25 5
                         |> filled (rgb 0 210 255)
                         |> move (-40,10)
                         ,roundedRect 40 45 5
                         |> filled red
                         |> move (30,0)
                         ,rect 35 10
                         |> filled gray
                         |> move (-30,-20)
                         ,rect 35 5
                         |> filled yellow
                         |> move (-30,-7)
                         ,rect 40 5
                         |> filled yellow
                         |> move (30,-7)
                         ,rect 50 5
                         |> filled white
                         |> move (25,5)
                         ,rect 50 5
                         |> filled white
                         |> move (25,20)
                         ,circle 10
                         |> filled black
                         |> move (30,-30)
                         ,circle 10
                         |> filled black
                         |> move (-30,-30)
                         ,circle 5
                         |> filled grey
                         |> move (-30,-30)
                         ,circle 5
                         |> filled grey
                         |> move (30,-30)
                         ,rect 5 15
                         |> filled white
                         |> move (45,10)
                         ,rect 5 15
                         |> filled white
                         |> move (35,10)
                         ,rect 5 15
                         |> filled white
                         |> move (25,10)
                         ,rect 5 15
                         |> filled white
                         |> move (15,10)
                         ,rect 5 15
                         |> filled white
                         |> move (5,10)
                         ,rect 10 5
                         |> filled (rgb 0 210 255)
                         |> move (-30,25)
                         ,rect 10 2
                         |> filled gray
                         |> move (-30,23)
                         ] |> scale 0.9
                         ]


        myBackground = square 200 |> filled (rgb 0 238 241)
    in ("QuaintAloe",myWord,"8","Fire engine by Krish Khanna","Saginaw"

       ,myShapes)

  ,    let
        myWord = "wagon"-- put your work here (in quotes) --
        myCode = 467 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                     , circle 15
                         |> filled yellow
                         |> move (18,14)
                     , circle 15
                         |> filled yellow
                         |> move (5,15)
                     , circle 15
                         |> filled yellow
                         |> move (-10,14)
                     , circle 15
                         |> filled yellow
                         |> move (-17,14)
                     , rect 70 40
                         |> filled brown
                         |> move (0,0)
                     , circle 10
                         |> filled lightBrown
                         |> move (-20,-20)
                     , circle 3
                         |> filled darkBrown
                         |> move (-20,-20)
                     , circle 10
                         |> filled lightBrown
                         |> move (20,-20)
                     , circle 3
                         |> filled darkBrown
                         |> move (20,-20)

                   ]
        myBackground = square 100 |> filled lightCharcoal
    in ("PeacefulWhale",myWord,"8","Wagons: The Minivans of the Past","Saginaw"

       ,myShapes)

  ,    let
        myWord = "goldfish" -- put your work here (in quotes) --
        myCode = 336 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , oval 10 15
          |> filled (rgb 230 125 50)
          |> scale 2
          |> scaleX 2

          , triangle 10
          |> filled (rgb 230 125 50)
          |> scale 2
          |> rotate 45
          |> move(25,3)

          , circle 10
          |> filled black
          |> scale 0.50
          |> move(-5,5)
                         ]

        myBackground = square 200 |> filled pink
    in ("ContentHummingbird",myWord,"8","goldfish","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "tulip"
        myCode = 536
        score = 10 -- number out of 10

        myShapes model = [roundedRect 4 50 10
                             |> filled (green)
                             |> move (0, -20)
                          , oval 7 20
                             |> filled (purple)
                             |> rotate (degrees 22)
                             |> move (-5,5)
                          , oval 7 20
                             |> filled (purple)
                             |> move (0, 6)
                          , oval 7 20
                             |> filled (purple)
                             |> rotate (degrees -22)
                             |> move (5,5)
                        ]

    in ("PuzzledAlmond",myWord,"8","Tulip","Saginaw"

       ,myShapes)

  ,    let
        myWord = "pink"-- put your work here (in quotes) --
        myCode = 444-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , square 10
                             |> filled pink
                             |> scale (((sin model.time)+1)*5)
                         , rect 30 10
                              |> filled darkGrey
                              |> move (-35,45)
                         -- , graphPaper 10 |> makeTransparent 0
                         ]

        myBackground = square 200 |> filled green
    in ("EcstaticMallard",myWord,"8","Pink","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "snail"
        myCode = 497
        score = 10 -- number out of 10

        myShapes model = [ myBackground

                          ,
                          curve (26,0) [Pull (36,64) (-1,0), Pull (11,-15) (26,-1) ]
                          |> filled (rgb 252 255 149)
                         ,
                          oval 40 30
                             |> filled (rgb 255 0 145)
                             |> move (0,3)
                             ,
                              curve (21,0) [Pull (0,-22) (-22,0)]
                           |> outlined (solid 3) (rgb 226 0 128)
                           ,
                           oval 2 18
                           |> filled (rgb 252 255 149)
                           |> move (20, 30)
                           ,
                           oval 2 18
                           |> filled (rgb 252 255 149)
                           |> move (27,30)




                         ]

        myBackground = square 200 |> filled white
    in ("SafeBasil",myWord,"8","snail","Saginaw"

       ,myShapes)

  ,    let
        myWord ="zebra" -- put your work here (in quotes) --
        myCode =581 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , square 10
                             |> filled red
                             |> rotate model.time
                             ,rect 10 5
          |> filled black
          |> scale 2
          |> scaleX 2
          |> rotate (degrees -690)
          |> move (10,10)
                             ,roundedRect 20 25 5
          |> filled white
          |> scale 1
          |> scaleX 2
                             ,oval 10 15
          |> filled white
          |> scale 1
          |> scaleY 2
           |> move (-15,-25)
           ,oval 10 15
          |> filled white
          |> scale 1
          |> scaleY 2
           |> move (15,-25)
            ,curve (0,0) [Pull (10,0) (20,-10)]
          |> filled black
          |> scale 1
          |> scaleY 2
          |> rotate (degrees -840)
          |> move (-20,5)
          ,oval 15 15
          |> filled white
          |> scale 1
          |> scaleY 2
          |> rotate (degrees -810)
          |> move (35,20)
          ,rect 5 25
          |> filled black
           ,rect 5 25
          |> filled black
          |> move (10,0)
          ,rect 5 25
          |> filled black
            |> move (-10,0)
            ,rect 5 10
          |> filled black
            |> move (-15,-20)
             |>rotate (degrees 90)
            ,rect 5 10
          |> filled black
            |> move (-15,-30)
             |>rotate (degrees 90)

         ,rect 5 10
          |> filled black
            |> move (15,-20)
             |>rotate (degrees 90)
            ,rect 5 10
          |> filled black
            |> move (15,-30)
             |>rotate (degrees 90)
           --, graphPaper 10 |> makeTransparent 0.4
              ,ngon 5 4
                |> filled black
                |> scale 1
                |> move (35, 22)

                ,circle 2
                |> filled brown
                |> scale 1
                |> move (35, 22)
             ,circle 1
          |> filled (rgb 0 0 0)
               |>move (35, 22)
                    ]



        myBackground = square 200 |> filled orange
    in ("PricklyAcacia",myWord,"8","Zebrahahahaha","Saginaw"

       ,myShapes)

  ,    let
        myWord = "heron" -- put your work here (in quotes) --
        myCode = 358 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , rect 5 20
          |> filled orange
          |> move (28, -40)
                         , rect 5 20
          |> filled orange
          |> move (20, -40)
                         , curve (0,0) [Pull (0,-79) (-64,41) ]
          |> filled (rgb 204 209 209)
          |> move (35,-5)
                         ,wedge 20 0.5
          |> filled (rgb 204 209 209)
          |> scaleY 1.85
          |> rotate (degrees 57.5)
          |> move (3,14)
                         , oval 20 20
          |> filled (rgb 204 209 209)
          |> scaleY 1.25
          |> move (-25, 35)
          |> rotate (degrees 90)
                         ,curve (0,0) [Pull (-77,-3) (0,37), Pull (-13,20) (-15,12) ]
                             |> filled (rgb 250 150 0)
                             |> scale 0.23
                             |> move (-30, 26)
                         , circle 2
          |> filled white
          |> move (-33, 38)
                         , circle 1
          |> filled black
          |> move (-33, 38)
                         , oval 60 25
          |> filled (rgb 192 192 192)
          |> rotate (degrees -57.5)
          |> move (10, 7)]

        myBackground = square 200 |> filled blue
    in ("NervousSorghum",myWord,"8","Heron in the Water","Kaufman"

       ,myShapes)

  ,    let

        myWord = "phoenix"
        myCode = 441
        score = 10 -- number out of 10

        myShapes model = [ myBackground

                         , group [rect 200 30
          |> filled (rgb 0 170 0)
          |> move (0,-60)
                         ,curve (32,30) [Pull (85,2) (-26,-1) ]
                         |> filled (rgb 250 216 0)
                          |> move (-25,-25)
                         ,curve (-62,-11) [Pull (0,-36) (0,0) ]
                         |> filled (rgb 250 150 0)
                          ,curve (0,0) [Pull (-25,14) (29,-1) ]
                         |> filled (rgb 255 204 0)
                         |> move (3,6)
                          ,curve (-16,18) [Pull (3,21) (3,10) ]
          |> filled (rgb 255 152 0)
          ,circle 10
                         |> filled (rgb 250 216 0)
                         |> move (4,7)
                         ,curve (-54,0) [Pull (-33,34) (3,10), Pull (-27,17) (0,0) ]
          |> filled (rgb 150 150 150)
          |> move (0, -60)
          , curve (40,0) [Pull (46,34) (3,10), Pull (-27,-2) (0,0) ]
          |>filled (rgb 150 150 150)
          |> move (20,-60)
          ,circle 1.5
                             |> filled black
                             |> move (7,11)
                         , circle 0.5
                             |> filled white
                             |> move (7,11.25)
                             ,
                             group [curve (91,106) [Pull (35,96) (119,20), Pull (136,105) (172,138), Pull (65,75) (121,22), Pull (226,115) (118,58) ]
          |> filled (rgb 255 224 10)
          |> makeTransparent 0.375
          |> move (-130,-60)
          ]
          |> scale (1 + 0.2 * sin model.time)
          ] |> scale 0.70
          ]
        myBackground = square 200
                             |> filled lightBlue


    in ("NaughtySnake",myWord,"8","phoenix","Kaufman"

       ,myShapes)

  ,    let
        myWord = "skates" -- put your work here (in quotes) --
        myCode = 491 -- 491 put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , rect 40 20
                             |> filled black
                         , square 20
                           |> filled black
                           |> move (-10,10)
                         , rect 40 10
                           |> filled white
                           |> move (0,-20)
                       --  , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled blue
    in ("ObservantSumac",myWord,"8","Skates","Kaufman"

       ,myShapes)

  ,    let
        myWord = "teeth"-- put your work here (in quotes) --
        myCode = 522 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , curve (24,-33) [Pull (0,63) (-22,-33), Pull (0,-37) (0,-37) ]
                             |> filled white
                             |> scale (0.3)
                             |> move (-7, 0)

                         , curve (24,-33) [Pull (0,63) (-22,-33), Pull (0,-37) (0,-37) ]
                             |> filled white
                             |> scale (0.3)
                             |> move (7, 0)

                         , curve (24,-33) [Pull (0,63) (-22,-33), Pull (0,-37) (0,-37) ]
                             |> filled white
                             |> scale (0.25)
                             |> move (-19, 0)
                             |> rotate (degrees -10)

                         , curve (24,-33) [Pull (0,63) (-22,-33), Pull (0,-37) (0,-37) ]
                             |> filled white
                             |> scale (0.25)
                             |> move (19, 0)
                             |> rotate (degrees 10)

                         , curve (24,-33) [Pull (0,63) (-22,-33), Pull (0,-37) (0,-37) ]
                             |> filled white
                             |> scale (0.3)
                             |> rotate (degrees 180)
                             |> move (0, -21.7)

                         , curve (24,-33) [Pull (0,63) (-22,-33), Pull (0,-37) (0,-37) ]
                             |> filled white
                             |> scale (0.25)
                             |> rotate (degrees -185)
                             |> move (-16, -19)

                          , curve (24,-33) [Pull (0,63) (-22,-33), Pull (0,-37) (0,-37) ]
                             |> filled white
                             |> scale (0.25)
                             |> rotate (degrees 185)
                             |> move (16, -19)
                         ]

        myBackground = square 200 |> filled pink
    in ("PowerfulAardvark",myWord,"8","teeth","Saginaw"

       ,myShapes)

  ,    let
        myWord = "spinach" -- put your work here (in quotes) --
        myCode = 505 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ oval 50 85
                           |> filled darkGreen

                         ]

        myBackground = square 200 |> filled pink
    in ("OutrageousTapir",myWord,"8","Spinach by Peter Doan","Kaufman"
       ,myShapes)

  ,    let
        myWord = "fox"-- put your work here (in quotes) --
        myCode =328 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ square 100
                            |> filled green

                             ,roundedRect 45 20 38
                             |> filled orange



                         --graphPaper 10 |> makeTransparent 0.4
                         ,triangle 15

          |> filled orange
          |> rotate (degrees 270)
          |> move (20,11)

                         ,triangle 6
          |> filled orange
          |> rotate (degrees 90)
          |> move (27,20)

                          ,triangle 6
          |> filled orange
          |> rotate (degrees 90)
          |> move (13,20)

                          ,rect 5 25
          |> filled orange
          |> rotate (degrees 180)
          |> move (15,-10)

                          ,rect 5 25
          |> filled orange
          |> rotate (degrees 180)
          |> move (-13,-10)

                         ,roundedRect 30 5 20
          |> filled orange
          |> rotate (degrees 45)
          |> move (-30,-10)



                         ,triangle 7
          |> filled white
          |> rotate (degrees 270)
          |> move (20,5)

                        ,circle 1.5
          |> filled black
          |> rotate (degrees 90)
          |> move (15.5,13)

                        ,circle 1.5
         |> filled black
         |> rotate (degrees 90)
         |> move (25.5,13)

                   ,triangle 2
          |> filled black
          |> rotate (degrees 270)
            |> move (20,5)]






    in ("PleasedTomato",myWord,"8","fox","Kaufman"

       ,myShapes)

  ,    let
        myWord = "pineapple"-- put your work here (in quotes) --
        myCode = 443 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , group [triangle 25
                             |> filled darkGreen
          |> rotate (degrees 30)
                             |> move (0,40),triangle 25
                             |> filled darkGreen
          |> rotate (degrees 30)
                             |> move (0,30)
                         , triangle 25
                             |> filled darkGreen
          |> rotate (degrees 30)
                             |> move (0,50) |> makeTransparent 0.4,
                         oval 80 100
          |> filled lightYellow
          |> move (0,-20)] |> scale 0.7
          ]










        myBackground = square 200 |> filled lightBlue
    in ("NuttyStarfish",myWord,"8","pineapple","Kaufman"

       ,myShapes)

  ,    let
        myWord = "parallelogram"
        myCode =  431
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , square 30
                              |> filled black
                              |>rotate (withPause model.time)

                          , rightTriangle 30 30
                              |> filled black
                              |> move (15,-15)
                              |> rotate (withPause model.time)

                              , rightTriangle 30 30
                              |> filled black
                              |> move (-15,15)
                              |> rotate (degrees 180)
                              |>rotate (withPause model.time)



                             ]

        withPause time = if sin time < 0 then 0 else sin time



        myBackground = square 200 |> filled white
    in ("NoisySpider",myWord,"8","parallelogram","Kaufman"

       ,myShapes)

  ,    let
        myWord ="poppy" -- put your work here (in quotes) --
        myCode = 447-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
          ,oval 10 15
          |> filled red
          |> rotate (degrees 30)
          |> move (5,-10)
           , oval 10 15
          |> filled red
          |> rotate (degrees -30)
          |> move (-5,-10)
          ,oval 10 15
          |> filled red
          |> rotate (degrees 30)
          |> move (-5,10)
            ,oval 10 15
          |> filled red
          |> rotate (degrees -30)
          |> move (5,10)
           ,oval 15 10
          |> filled red
          |> move (10,-0)
           , oval 15 10
          |> filled red
          |> move (-10,0)
          ,circle 5
          |> filled black
          |> rotate (degrees 30)
          |> move (0,0)
          ,roundedRect 5 35 5
          |> filled darkGreen
          |> move (0,-30)]

        myBackground = square 200 |> filled darkBlue
    in ("PleasantToad",myWord,"8","Poppy!","Kaufman"

       ,myShapes)

  ,    let
        myWord = "rain"
        myCode = 465
        score = 10 -- number out of 10

        myShapes model= [

                           roundedRect 20 15 40
            |> filled charcoal
            |> scale 1
            |> scaleX 2
            |> scaleY 2
            |> move (-30,40),

                           roundedRect 20 15 40
            |> filled charcoal
            |> scale 1
            |> scaleX 2
            |> scaleY 2
            |> move (-10,40),

                           roundedRect 20 15 40
            |> filled charcoal
            |> scale 1
            |> scaleX 2
            |> scaleY 2
            |> move (10,40),

                           roundedRect 20 15 40
            |> filled charcoal
            |> scale 1
            |> scaleX 2
            |> scaleY 2
            |> move (25,40),

                           roundedRect 20 15 40
            |> filled charcoal
            |> scale 1
            |> scaleX 2
            |> scaleY 2
            |> move (-25,50),


                           roundedRect 20 15 40
            |> filled charcoal
            |> scale 1
            |> scaleX 2
            |> scaleY 2
            |> move (-10,50),

                           roundedRect 20 15 40
            |> filled charcoal
            |> scale 1
            |> scaleX 2
            |> scaleY 2
            |> move (10,50),

               roundedRect 20 15 40
            |> filled charcoal
            |> scale 1
            |> scaleX 2
            |> scaleY 2
            |> move (20,50),

               oval 20 15
            |> filled blue
            |> scale -0.5
            |> rotate (degrees 90)
            |> move (-30,15),

               oval 20 15
            |> filled blue
            |> scale -0.5
            |> rotate (degrees 90)
            |> move (30,4),

               oval 20 15
            |> filled blue
            |> scale -0.5
            |> rotate (degrees 90)
            |> move (15,-10),

            oval 20 15
          |> filled blue
          |> scale -0.5
          |> rotate (degrees 90)
          |> move (10,-30),

          oval 20 15
          |> filled blue
          |> scale -0.5
          |> rotate (degrees 90)
          |> move (40,9),

          oval 20 15
          |> filled blue
          |> scale -0.5
          |> rotate (degrees 90)
          |> move (20,20),

          oval 20 15
          |> filled blue
          |> scale -0.5
          |> rotate (degrees 90)
          |> move (-6,6),

          oval 20 15
          |> filled blue
          |> scale -0.5
          |> rotate (degrees 90)
          |> move (-30,-40),

          oval 20 15
          |> filled blue
          |> scale -0.5
          |> rotate (degrees 90)
          |> move (-30,-20)



                           ]







    in ("PoliteTuraco",myWord,"8","Throat","Kaufman"

       ,myShapes)

  ,    let
        myWord = "sheep" -- put your work here (in quotes) --
        myCode = 484 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , curve (-19,-26) [Pull (-12,0) (0,0) ]
                                  |> filled darkBrown
                                  |> scale 0.25
                                  |> move (-27,0)
                         , roundedRect 5 15 3
                                  |> filled (rgb 83 61 50)
                                  |> move (10,-15)
                         , roundedRect 5 15 3
                                  |> filled (rgb 83 61 50)
                                  |> move (3,-15)
                         , roundedRect 5 15 3
                                  |> filled (rgb 83 61 50)
                                  |> move (-13,-15)
                         , roundedRect 5 15 3
                                  |> filled (rgb 83 61 50)
                                  |> move (-20,-15)
                         , rect 5 15
                                  |> filled darkBrown
                                  |> move (10,-10)
                         , rect 5 15
                                  |> filled darkBrown
                                  |> move (3,-10)
                         , rect 5 15
                                  |> filled darkBrown
                                  |> move (-13,-10)
                         , rect 5 15
                                  |> filled darkBrown
                                  |> move (-20,-10)
                         , oval 10 15
                                  |> filled white
                                  |> scale 3
                                  |> rotate (degrees 90)
                                  |> move (-5,0)
                         , curve (0,-25) [Pull (16,-4) (0,0), Pull (-16,-4) (0,-24) ]
                                  |> filled darkBrown
                                  |> scale 0.9
                                  |> move (10,18)
                         , curve (-35,0) [Pull (-35,-13) (0,0), Pull (-35,13) (-35,0) ]
                                  |> filled darkBrown
                                  |> scale 0.5
                                  |> rotate (degrees 30)
                                  |> move (9,18)
                         , curve (35,0) [Pull (35,-13) (0,0), Pull (35,13) (35,0) ]
                                  |> filled darkBrown
                                  |> scale 0.5
                                  |> rotate (degrees -30)
                                  |> move (11,18)
                         , circle 1
                                  |> filled black
                                  |> move (7,8)
                         , circle 1
                                  |> filled black
                                  |> move (13,8)

                         ]

        myBackground = square 200 |> filled pink
    in ("CuddlyIris",myWord,"8","Sheep","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "finger"
        myCode = 321
        score = 10 -- number out of 10

        myShapes model = [ roundedRect 19 80 10
                             |> filled lightBrown
                          , square 19
                             |> filled white
                             |> move (0,-42)
                          , roundedRect 15 27 10
                             |> filled (rgb 219 162 213)
                             |> move (0, 33)
                          , roundedRect 2 6 10
                             |> filled brown
                             |> rotate (degrees 90)
                          , roundedRect 2 6 10
                             |> filled brown
                             |> rotate (degrees 90)
                             |> move (0, 5)
                          ,
                             circle 2
                             |> filled white
                             |> move (-5,27)
                           ,
                            circle 2
                            |> filled white
                            |> move (-3,23)
                           ,
                            circle 2
                            |> filled white
                            |> move (1.5,22.7)
                           ,
                            circle 2
                            |> filled white
                            |> move (5.3,26)
                         ]

    in ("PuzzledAlmond",myWord,"8","finger","Saginaw"

       ,myShapes)

  ,    let
        myWord = "dress"
        myCode = 303
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , square 20
                             |> filled pink
                             |> move (0,20)
                         , roundedRect 30 40 10
                             |> filled pink
                             |> move (0,-4)
                         , rect 4 10
                             |> filled pink
                             |> move (-8,34)
                         , rect 4 10
                             |> filled pink
                             |> move (8,34)
                         ,group [ wedge 6 4
                             |> filled pink
                             |> move (10,-19)
                             |> rotate (degrees 270)
                         , wedge 6 4
                             |> filled pink
                             |> move (3,-20)
                             |> rotate (degrees 270)
                         , wedge 6 4
                             |> filled pink
                             |> move (-3,-20)
                         , wedge 6 4
                             |> filled pink
                             |> move (-10,-19)
                             |> rotate (degrees 270)
                             |> rotate (degrees 270)

                             ]
                             |> rotate (0 + 0.1 * sin model.time)
                             ]



        myBackground = square 200 |> filled white
    in ("DescriptiveLemur",myWord,"8","the dress","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "cherry" -- put your work here (in quotes) --
        myCode = 269 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , circle 10
                             |> filled darkRed
          , curve (-1,0) [Pull (5,0) (5,-10)]
          |> filled darkBrown
          |> scale 2
          |> scaleX 2
          |> scaleY 2
          |> rotate (degrees 80)
                         ]

        myBackground = square 200 |> filled pink
    in ("PerfectTiger",myWord,"8","cherry","Kaufman"

       ,myShapes)

  ,    let
        myWord = "boots"-- put your work here (in quotes) --
        myCode = 242 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , oval 100 30
                           |> filled darkBlue
                           |> move (0,-15)
                         , triangle 3
                           |> filled (rgb 240 230 140)
                           |> rotate (degrees 270)
                           |> move (23,-19)
                         , triangle 3
                           |> filled (rgb 240 230 140)
                           |> rotate (degrees 270)
                           |> move (20,-19)
                         , triangle 3
                           |> filled (rgb 240 230 140)
                           |> rotate (degrees 270)
                           |> move (26,-19)
                         , triangle 3
                           |> filled (rgb 240 230 140)
                           |> rotate (degrees 270)
                           |> move (29,-19)
                         , triangle 3
                           |> filled (rgb 240 230 140)
                           |> rotate (degrees 270)
                           |> move (32,-19)
                         , triangle 3
                           |> filled (rgb 240 230 140)
                           |> rotate (degrees 270)
                           |> move (35,-19)
                         ,triangle 3
                           |> filled (rgb 240 230 140)
                           |> rotate (degrees 270)
                           |> move (20,-19)
                         ,triangle 3
                           |> filled (rgb 240 230 140)
                           |> rotate (degrees 270)
                           |> move (17,-19)
                         ,triangle 3
                           |> filled (rgb 240 230 140)
                           |> rotate (degrees 270)
                           |> move (14,-19)
                         ,triangle 3
                           |> filled (rgb 240 230 140)
                           |> rotate (degrees 270)
                           |> move (11,-19)
                         ,triangle 3
                           |> filled (rgb 240 230 140)
                           |> rotate (degrees 270)
                           |> move (8,-19)
                         , triangle 3
                           |> filled (rgb 240 230 140)
                           |> rotate (degrees 270)
                           |> move (-23,-19)
                         , triangle 3
                           |> filled (rgb 240 230 140)
                           |> rotate (degrees 270)
                           |> move (-20,-19)
                         , triangle 3
                           |> filled (rgb 240 230 140)
                           |> rotate (degrees 270)
                           |> move (-26,-19)
                         , triangle 3
                           |> filled (rgb 240 230 140)
                           |> rotate (degrees 270)
                           |> move (-29,-19)
                         , triangle 3
                           |> filled (rgb 240 230 140)
                           |> rotate (degrees 270)
                           |> move (-32,-19)
                         , triangle 3
                           |> filled (rgb 240 230 140)
                           |> rotate (degrees 270)
                           |> move (-35,-19)
                         ,triangle 3
                           |> filled (rgb 240 230 140)
                           |> rotate (degrees 270)
                           |> move (-20,-19)
                         ,triangle 3
                           |> filled (rgb 240 230 140)
                           |> rotate (degrees 270)
                           |> move (-17,-19)
                         ,triangle 3
                           |> filled (rgb 240 230 140)
                           |> rotate (degrees 270)
                           |> move (-14,-19)
                         ,triangle 3
                           |> filled (rgb 240 230 140)
                           |> rotate (degrees 270)
                           |> move (-11,-19)
                         ,triangle 3
                           |> filled (rgb 240 230 140)
                           |> rotate (degrees 270)
                           |> move (-8,-19)
                         , rect 18 35
                           |> filled (rgb 255 0 0)
                           |> move (12,0)
                         , rect 18 35
                           |> filled (rgb 255 0 0)
                           |> move (-12,0)
                         , wedge 16 0.5
                           |> filled (rgb 255 0 0)
                           |> rotate (degrees 90)
                           |> move (23,-18)
                         , wedge 16 0.5
                           |> filled (rgb 255 0 0)
                           |> rotate (degrees 90)
                           |> move (-23,-18)
                         , curve (0,0) [Pull (0,20) (-60,0), Pull (-14,11) (0,0) ]
                           |> filled white
                           |> makeTransparent 0.75
                           |> scale 0.35
                           |> rotate (degrees 345)
                           |> move (35,-12)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-6.5,9)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-13,18)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-19.5,27)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-26,36)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (6.5,-9)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (13,-18)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-10,0)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-16.5,9)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-23,18)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-29.5,27)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-36,36)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-4.5,-9)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (3,-18)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-20,0)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-26.5,9)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-33,18)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-39.5,27)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-46,36)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-13.5,-9)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-7,-18)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-30,0)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-36.5,9)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-43,18)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-49.5,27)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-56,36)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-23.5,-9)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-17,-18)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (10,0)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (3.5,9)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-3,18)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-9.5,27)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-16,36)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (16.5,-9)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (23,-18)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (20,0)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (13.5,9)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (7,18)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (0.5,27)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (-6,36)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (26.5,-9)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (33,-18)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (30,0)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (23.5,9)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (17,18)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (10.5,27)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (4,36)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (36.5,-9)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (43,-18)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (40,0)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (33.5,9)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (27,18)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (20.5,27)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (14,36)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (46.5,-9)
                         , rect 0.5 7
                           |> filled (rgb 0 139 139)
                           |> rotate (degrees 30)
                           |> move (53,-18)
                         ]

        myBackground = square 200 |> filled lightBlue

    in ("OutstandingTaro",myWord,"8","Rain Boots","Kaufman"

       ,myShapes)

  ,    let
        myWord = "goose" -- put your work here (in quotes) --
        myCode = 337 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , oval 33 53
          |> filled darkGrey
          |> rotate ( degrees 90)
          ,circle 13
          |> filled black
          |> move (-15,15)
          ,triangle 8
          |> filled orange
          |> move (-30,15)
          |> rotate (degrees 180)
          ,rect 3.9 16
          |> filled orange
          |> move (0,-25)
          ,curve (0,0) [Pull (0,-23) (-44,-14) ]
          |> filled darkGrey
          |> rotate (degrees 180)
          |> move (-5,2)
          |> move (10,10*sin(0.5*model.time))
                         --, graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled darkGreen

    in ("OutgoingTamarind",myWord,"8","Goose","Kaufman"

       ,myShapes)

  ,    let
        myWord = "grapefruit" -- put your work here (in quotes) --
        myCode = 341 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [  circle 35
                            |> filled lightOrange
                            |> move (0,-4)
                            ,oval 10 35
                            |> filled (rgb 0 102 0)
                            |> move (0,30)




                         ]

        myBackground = square 200 |> filled pink
    in ("OutrageousTapir",myWord,"8","Grapefruit by Peter Doan","Kaufman"

       ,myShapes)

  ,    let
        myWord ="tomato" -- put your work here (in quotes) --
        myCode = 529 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [   circle 20
                               |> filled red
                               |> rotate model.time
                            -- ,graphPaper 10
                              -- |> makeTransparent 0.4
                             ,oval 5 10
                               |> filled lightGreen
                               |> move (0,23)
                            , oval 5 10
                               |> filled lightGreen
                               |> move (5,23)
                               |> rotate (degrees -10 )
                               , oval 5 10
                               |> filled lightGreen
                               |> move (-5,23)
                               |> rotate (degrees 10 )
                          ]

        myBackground = square 200 |> filled pink
    in ("ObservantSumac",myWord,"8","Tomato","Kaufman"

       ,myShapes)

  ,    let
        myWord = "quarter" -- put your work here (in quotes) --
        myCode = 459 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , circle 10
                         |> filled darkGray
                         |> scale 3

                         , circle 10
                         |> filled darkGray
                         , oval 10 15
                         |> filled gray
                         |> scale 2
                         |> scaleX 2
                         |> scaleY 2

                         , circle 10
                         |> filled darkGray
                         |> scale 0.5
                         |> move (9,8)

                         , circle 10
                         |> filled darkGray
                         |> scale 0.5
                         |> move (-9,8)
                         , curve (-10,0) [Pull (0,-9) (10,0) ]
          |> filled (rgb 250 150 255)
                         ]

        myBackground = square 200 |> filled green
    in ("ContentHummingbird",myWord,"8","Mr. Quarter","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "scarf"-- put your work here (in quotes) --
        myCode = 477-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         ,wedge 10 0.5
          |> filled (rgb 178 34 34)
          |> rotate (degrees 90)
                         ,wedge 10 0.5
          |> filled (rgb 178 34 34)
          |> rotate (degrees 90)
          |> move ( 20, 0)
                         ,wedge 10 0.5
          |> filled (rgb 178 34 34)
          |> rotate (degrees 90)
                         ,wedge 10 0.5
          |> filled (rgb 178 34 34)
          |> rotate (degrees -90)
          |> move ( 10, 0)
                         ,wedge 10 0.5
          |> filled (rgb 178 34 34)
          |> rotate (degrees 90)
          |> move ( 40, 0)
                         ,wedge 10 0.5
          |> filled (rgb 178 34 34)
          |> rotate (degrees 90)
          |> move ( 80, 0)
                         ,wedge 10 0.5
          |> filled (rgb 178 34 34)
          |> rotate (degrees 90)
          |> move ( -20, 0)
                         ,wedge 10 0.5
          |> filled (rgb 178 34 34)
          |> rotate (degrees 90)
          |> move ( -40, 0)
                         ,wedge 10 0.5
          |> filled (rgb 178 34 34)
          |> rotate (degrees 90)
          |> move ( 60, 0)
                         ,wedge 10 0.5
          |> filled (rgb 178 34 34)
          |> rotate (degrees 90)
          |> move ( -60, 0)
                       ,wedge 10 0.5
          |> filled (rgb 178 34 34)
          |> rotate (degrees 90)
          |> move ( -80, 0)
                       ,wedge 10 0.5
          |> filled (rgb 178 34 34)
          |> rotate (degrees -90)
          |> move ( 30, 0)
                       ,wedge 10 0.5
          |> filled (rgb 178 34 34)
          |> rotate (degrees -90)
          |> move ( 50, 0)
                         ,wedge 10 0.5
          |> filled (rgb 178 34 34)
          |> rotate (degrees -90)
          |> move ( 70, 0)
                         ,wedge 10 0.5
          |> filled (rgb 178 34 34)
          |> rotate (degrees -90)
          |> move ( 90, 0)
                         ,wedge 10 0.5
          |> filled (rgb 178 34 34)
          |> rotate (degrees -90)
          |> move ( -10, 0)
                         ,wedge 10 0.5
          |> filled (rgb 178 34 34)
          |> rotate (degrees -90)
          |> move (-30, 0)
                       ,wedge 10 0.5
          |> filled (rgb 178 34 34)
          |> rotate (degrees -90)
          |> move ( -50, 0)
                       ,wedge 10 0.5
          |> filled (rgb 178 34 34)
          |> rotate (degrees -90)
          |> move ( -70, 0)
                         ,wedge 10 0.5
          |> filled (rgb 178 34 34)
          |> rotate (degrees -90)
          |> move ( -90, 0)
                         ,wedge 5 0.5
          |> filled (rgb 221 160 221)
          |> rotate (degrees 90)
                         ,wedge 5 0.5
          |> filled (rgb 221 160 221)
          |> rotate (degrees 90)
          |> move ( 20, 0)
                         ,wedge 5 0.5
          |> filled (rgb 221 160 221)
          |> rotate (degrees 90)
                         ,wedge 5 0.5
          |> filled (rgb 221 160 221)
          |> rotate (degrees -90)
          |> move ( 10, 0)
                         ,wedge 5 0.5
          |> filled (rgb 221 160 221)
          |> rotate (degrees 90)
          |> move ( 40, 0)
                         ,wedge 5 0.5
          |> filled (rgb 221 160 221)
          |> rotate (degrees 90)
          |> move ( 80, 0)
                         ,wedge 5 0.5
          |> filled (rgb 221 160 221)
          |> rotate (degrees 90)
          |> move ( -20, 0)
                         ,wedge 5 0.5
          |> filled (rgb 221 160 221)
          |> rotate (degrees 90)
          |> move ( -40, 0)
                         ,wedge 5 0.5
          |> filled (rgb 221 160 221)
          |> rotate (degrees 90)
          |> move ( 60, 0)
                         ,wedge 5 0.5
          |> filled (rgb 221 160 221)
          |> rotate (degrees 90)
          |> move ( -60, 0)
                       ,wedge 5 0.5
          |> filled (rgb 221 160 221)
          |> rotate (degrees 90)
          |> move ( -80, 0)
                       ,wedge 5 0.5
          |> filled (rgb 221 160 221)
          |> rotate (degrees -90)
          |> move ( 30, 0)
                       ,wedge 5 0.5
          |> filled (rgb 221 160 221)
          |> rotate (degrees -90)
          |> move ( 50, 0)
                         ,wedge 5 0.5
          |> filled (rgb 221 160 221)
          |> rotate (degrees -90)
          |> move ( 70, 0)
                         ,wedge 5 0.5
          |> filled (rgb 221 160 221)
          |> rotate (degrees -90)
          |> move ( 90, 0)
                         ,wedge 5 0.5
          |> filled (rgb 221 160 221)
          |> rotate (degrees -90)
          |> move ( -10, 0)
                         ,wedge 5 0.5
          |> filled (rgb 221 160 221)
          |> rotate (degrees -90)
          |> move (-30, 0)
                       ,wedge 5 0.5
          |> filled (rgb 221 160 221)
          |> rotate (degrees -90)
          |> move ( -50, 0)
                       ,wedge 5 0.5
          |> filled (rgb 221 160 221)
          |> rotate (degrees -90)
          |> move ( -70, 0)
                         ,wedge 5 0.5
          |> filled (rgb 221 160 221)
          |> rotate (degrees -90)
          |> move ( -90, 0)
                         ,square 6
          |> filled (rgb 147 112 219)
          |> move ( 0, 5)
                         ,square 6
          |> filled (rgb 147 112 219)
          |> move ( 20, 5)
                         ,square 6
          |> filled (rgb 147 112 219)
          |> move ( 40, 5)
                         ,square 6
          |> filled (rgb 147 112 219)
          |> move ( 60, 5)
                         ,square 6
          |> filled (rgb 147 112 219)
          |> move ( 80, 5)
                         ,square 6
          |> filled (rgb 147 112 219)
          |> move ( -20, 5)
                         ,square 6
          |> filled (rgb 147 112 219)
          |> move ( -40, 5)
                         ,square 6
          |> filled (rgb 147 112 219)
          |> move ( -60, 5)
                         ,square 6
          |> filled (rgb 147 112 219)
          |> move ( -80, 5)
                         ,square 6
          |> filled (rgb 147 112 219)
          |> move ( 80, 5)
                         ,square 6
          |> filled (rgb 51 0 25)
          |> move ( 10, -5)
                         ,square 6
          |> filled (rgb 51 0 25)
          |> move ( 30, -5)
                         ,square 6
          |> filled (rgb 51 0 25)
          |> move ( 50, -5)
                         ,square 6
          |> filled (rgb 51 0 25)
          |> move ( 70, -5)
                         ,square 6
          |> filled (rgb 51 0 25)
          |> move ( 90, -5)
                         ,square 6
          |> filled (rgb 51 0 25)
          |> move ( -10, -5)
                         ,square 6
          |> filled (rgb 51 0 25)
          |> move ( -30, -5)
                          ,square 6
          |> filled (rgb 51 0 25)
          |> move ( -50, -5)
                          ,square 6
          |> filled (rgb 51 0 25)
          |> move ( -70, -5)
                          ,square 6
          |> filled (rgb 51 0 25)
          |> move ( -90, -5)]
        myBackground = square 200 |> filled black
    in ("NervousSorghum",myWord,"8","Scarf","Kaufman"

       ,myShapes)

  ,    let
        myWord = "cabbage" -- put your work here (in quotes) --
        myCode = 250 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , oval 20 40
          |> filled (rgb 0 248 150)
          |> rotate (degrees 30)
          |> move (-15,0)
          ,oval 20 40
          |> filled (rgb 0 230 137)
         ,oval 20 40
          |> filled (rgb 0 245 145)
          |> rotate (degrees 340)
          |> move (15,0)
          ,oval 15 32
          |> filled (rgb 0 255 139)
          |> move (10,5)
          ,oval 15 32
          |> filled (rgb 0 255 123)
          |> move ( -10,3)
                       --  , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled grey
    in ("OutgoingTamarind",myWord,"8","Cabbage","Kaufman"

       ,myShapes)

  ,    let
        myWord = "rat" -- put your work here (in quotes) --
        myCode = 468 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                        ,circle 15
                        |> filled darkGray
                        ,triangle 5
                        |> filled darkGray
                        |> move (10, 13)
                        |> rotate (degrees 54)
                        ,triangle 5
                        |> filled darkGray
                        |> move (-10, 13)
                        |> rotate (degrees 249)
                        ,triangle 2.5
                        |> filled pink
                        |> move (-10, 13)
                        |> rotate (degrees 249)
                        ,triangle 2.5
                        |> filled pink
                        |> move (10, 13)
                        |> rotate (degrees 54)
                        ,circle 2.5
                        |> filled white
                        |> move (-5, 5)
                        ,circle 2.5
                        |> filled white
                        |> move (5, 5)
                        ,circle 1.25
                        |> filled black
                        |> move (5, 5)
                        ,circle 1.25
                        |> filled black
                        |> move (-5, 5)
                        ,circle 2.5
                        |> filled black

                         ]

        myBackground = square 200 |> filled lightBlue
    in ("MerrySesame",myWord,"8","Rat by Akshansh","Kaufman"

       ,myShapes)

  ,    let
        myWord = "navy"-- put your work here (in quotes) --
        myCode = 409-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , square 10
                             |> filled (rgb 0 0 128)
                             |> scale (((sin model.time)+1)*5)
                         , rect 30 20
                              |> filled darkGrey
                              |> move (-35,40)
                         -- , graphPaper 10 |> makeTransparent 0
                         ]

        myBackground = square 200 |> filled orange
    in ("EcstaticMallard",myWord,"8","Navy","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "fish" -- put your work here (in quotes) --
        myCode = 323 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10
        myShapes model = [

                           ngon 3 18
                           |> filled darkBlue
                           |> move (35,0)
                           |> rotate (degrees 180)
                           ,polygon [(-15,16),(-10,25),(24,22),(19,13)]
                           |> filled (rgb 255 128 0)
                           ,polygon [(18,-14),(24,-25),(-14,-23),(-19,-13)]
                           |> filled (rgb 255 128 0)
                            ,oval 70 35
                           |> filled darkBlue
                           ,ngon 3 6
                           |> filled white
                           |> move (-32.2,0)
                           ,circle 2.5
                           |> filled white
                           |> move (-21,6)
                           ,circle 1
                           |> filled black
                           |> move (-21,6)


                         ]

        myBackground = square 200 |> filled red
    in ("OutrageousTapir",myWord,"8","Fish by Peter Doan","Kaufman"

       ,myShapes)

  ,    let
        myWord = "pepper"-- put your work here (in quotes) --
        myCode = "438"-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10
        myShapes model = [ myBackground
                          , group [shaker
                              |> rotate (degrees 180)
                              |> move (0,10*sin(10*model.time))
                          , pepper

                              |> move (0, -125 + toFloat(round (-model.time*50) % 100))
                              |> move (5, -125 + toFloat(round (-model.time*50) % 100))

                           , pepper
                              |> move (-10, 0)
                              |> move (0, -125 + toFloat(round (-model.time*100) % 100))
                              |> move (5, -125 + toFloat(round (-model.time*100) % 100))

                            , pepper
                              |> move (-15, 0)
                              |> move (0, -125 + toFloat(round (-model.time*30) % 100))
                              |> move (5, -125 + toFloat(round (-model.time*30) % 100))

                            , pepper
                              |> move (10, 0)
                              |> move (0, -125 + toFloat(round (-model.time*125) % 100))
                              |> move (5, -125 + toFloat(round (-model.time*125) % 100))


                            , pepper
                              |> move (15, 0)
                              |> move (0, -125 + toFloat(round (-model.time*100) % 100))
                              |> move (5, -125 + toFloat(round (-model.time*100) % 100))
                         ] |> scale 0.5
                         ]


        myBackground = square 200 |> filled white

        shaker = group[curve (0,0) [Pull (174,0) (-8,24), Pull (-188,0) (0,0) ]
                                      |> filled (rgb 124 122 121)
                                      |> scaleY 2.5
                                      |> scale 0.29
                                      |> move (0,20)
                                      , polygon [(-30,-30),(30,-30),(20,30),(-20,30)]
                                      |> filled (rgb 97 59 21)
                                      |> move (-1,-9)
                                      , circle 2
                                      |> filled black
                                      |> move (2,34)
                                       , circle 2
                                      |> filled black
                                      |> move (-6,34)
                                       , circle 2
                                      |> filled black
                                      |> move (-14,31)
                                       , circle 2
                                      |> filled black
                                      |> move (10,31)
                                       , circle 2
                                      |> filled black
                                      |> move (19,27)
                                       , circle 2
                                      |> filled black
                                      |> move (-22,27)
                                      ]

        pepper = group [
                circle 2
                |> filled black
            ]
    in ("PoisedWren",myWord,"8","Pepper","Saginaw"

       ,myShapes)

  ,    let
        myWord = "maroon" -- put your work here (in quotes) --
        myCode = 397 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [
          text "MAROON"
           |> filled (rgb 100 0 100)
           |> move (-23,0)
           , circle 20
           |> filled darkRed
           |> move (0,-29)]


        myBackground = square 200 |> filled grey
    in ("ComfortableHorse",myWord,"8","maroon","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "yak"-- put your work here (in quotes) --
        myCode = 574-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , roundedRect 5 10 1
                             |> filled black
                             |> move (-15, -15)

                             , roundedRect 5 10 1
                             |> filled black
                             |> move (15, -15)

                        , roundedRect 45 22.5 9
                             |> outlined (solid 0.5) black

                              , roundedRect 20 20 9
                             |> filled (rgb 139 69 19)
                             |> move (15, 15)


                              , roundedRect 45 22.5 9
                             |> filled (rgb 139 69 19)

                             , roundedRect 20 20 9
                             |> outlined (solid 0.5) black
                             |> move (15, 15)

                             ,curve (0,0) [Pull (0,0) (-9,12), Pull (0,0) (0,5) ]
                             |> filled white
                             |> scale 2.5
                             |> move (5, 12)


                             ,curve (0,0) [Pull (0,0) (9,12), Pull (0,0) (0,5) ]
                             |> filled white
                             |> scale 2.5
                             |> move (25, 12)

                             ,circle 2.5
                             |>filled white
                             |> move (11, 15)

                             ,circle 2.5
                             |>filled white
                             |> move (20, 15)



                         ]

        myBackground = square 200 |> filled (rgb 244 164 96)
    in ("PurringAlligator",myWord,"8","Yak","Saginaw"

       ,myShapes)

  ,    let
        myWord = "chimpanze"-- put your work here (in quotes) --
        myCode = 273-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , group [monkey |> move (0,(sin(model.time)*20)+6.8)
                         , eyeone |> rotate (((-1 * model.time * 2)-1)) |> move (7,(sin(model.time)*20)+27)
                         , eyetwo |> rotate (model.time*2) |> move (-7,(sin(model.time)*20)+27)
                         , rect 200 10
                            |> filled gray
                            |> move (0, -60)
                         ] |> scale 0.7 ]
        monkey = group [ arms |> move(0,20)
                       , feet
                       , body|> move(0,20)
                       , head |> move(0,20)
                       ]

        feet = group [ roundedRect 6 20 2 |> filled darkBrown
                         |> rotate (degrees -30)
                         |> move (-13,-13)
                         |>rotate(degrees -20)
                     , roundedRect 4.5 20 2 |> filled darkBrown
                         |> rotate (degrees -30)
                         |> move (-17,-25)
                         |>rotate(degrees 50)
                     , oval 8 17 |> filled skin |> move(-17,-35)
                         |>rotate (degrees -90)
                     , oval 4 10 |> filled skin |> move(-13,-38)
                         |>rotate (degrees -50)
                     , roundedRect 6 20 2 |> filled darkBrown
                         |> rotate (degrees 30)
                         |> move (13,-13)
                         |>rotate(degrees 30)
                     , roundedRect 4.5 20 2 |> filled darkBrown
                         |> rotate (degrees -30)
                         |> move (15,-25)
                     , oval 8 17 |> filled skin |> move(17,-35)
                         |>rotate (degrees 90)
                     , oval 4 10 |> filled skin |> move(13,-38)
                         |>rotate (degrees 50)
                     ]

        arms = group [ roundedRect 4 20 2|> filled darkBrown
                         |> move(-19,-10)
                         |> rotate (degrees 55)
                     , roundedRect 5 20 2|> filled darkBrown
                         |> move(-31,2)
                         |> rotate (degrees 35)
                     , oval 10 15 |> filled skin
                         |> move(-36,15)
                     , roundedRect 4 20 2|> filled darkBrown
                         |> move(19,-10)
                         |> rotate (degrees -55)
                     , roundedRect 5 20 2|> filled darkBrown
                         |> move(31,2)
                         |> rotate (degrees -35)
                     , oval 10 15 |> filled skin
                         |> move(36,15)
                     ]

        head = group [ oval 45 25 |> filled skin
                     , circle 18|> filled darkBrown
                     , circle 7 |> filled skin |> move(-7,0)
                     , circle 7 |> filled skin |> move(7,0)
                     , oval 30 20 |> filled skin |> move(0,-7)
        --             , eyeone
          --           , eyetwo
                     , oval 7 4 |> filled brown |> move(0,-5)
                     , rect 1 8 |> filled brown |> move(0,-10)
                     ]

        eyeone = group [ circle 5 |> filled white |> move (0,0)
                     , circle 3.5 |> filled black |> move(0,0)
                     , circle 1.5 |> filled white |> move(-1,2)
                     ]

        eyetwo = group [circle 5 |> filled white |> move (0,0)
                     , circle 3.5 |> filled black |> move(0,0)
                     , circle 1.5 |> filled white |> move(-1,2)
                     ]

        body = group [ roundedRect 25 40 10|> filled darkBrown |> move(0,-15)
                     , oval 20 30 |> filled skin |> move(0,-15)
                     ]

        skin = rgb 255 229 204

        myBackground = square 200 |> filled lightBlue
    in ("EcstaticMallard",myWord,"8","Chimpanze","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "hyena"-- put your work here (in quotes) --
        myCode = 365 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10
        myShapes model = [ myBackground
                         , rect 10 30
                             |> filled brown
                             |> move (10,10*sin(0.3*model.time))
                             , rect 10 30
                             |> filled brown
                             |> move (-10,10*sin(0.35*model.time))
                             , square 30
                               |> filled darkBrown
                               |> move (0,12)
                               , triangle 6
                               |> filled lightBrown
                               |> rotate ( degrees 90)
                               |> move (10,30)
                               , triangle 6
                               |> filled lightBrown
                               |> rotate ( degrees 90)
                               |> move (-10,30)
                               ,square 6
                               |> filled black
                               |> move (10,20)
                               ,square 6
                               |> filled black
                               |> move (-10,20)
                               , rect 10 3
                               |> filled red



                         ]

        myBackground = square 200 |> filled pink
    in ("ObservantSumac",myWord,"8","Hyena","Kaufman"

       ,myShapes)

  ,    let
        myWord = "bathtub" -- put your work here (in quotes) --
        myCode = "223" -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackround


                               , curve (0,0) [Pull (-33,0) (-51,0), Pull (-60,-55) (0,-50), Pull (60,-56) (50,0) ]
                                 |> filled lightBlue
                                 |> scale 0.8


                               , roundedRect 120 15 5
                                 |> filled lightBlue
                                 |> scale 0.8


                                                  ]
        myBackround = square 200 |> filled white


    in ("QuickAnteater",myWord,"8","bathtub","Saginaw"

       ,myShapes)

--   , let
--         myWord = "pyramid"-- put your work here (in quotes) --
--         myCode = 457-- put your code number here, which came with your word (not in quotes) --
--         score = 10 -- number out of 10
--
--         myShapes model = [ myBackground
--                              ,triangle 60
--           |> filled yellow
--           |> rotate (degrees -30)
--                 |> move (0,-20)
--                          ]
--
--         myBackground = square 200 |> filled charcoal
--     in ("PleasantToad",myWord,"8","Magnificent fancy pyramid","Kaufman"
--
--        ,myShapes)

  , let
        myWord = "legs" -- put your work here (in quotes) --
        myCode = 385 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , rect 10 15
                         |> filled lightBrown
                         |> scaleY 3
                         |> move(9,6)

                         , rect 10 15
                         |> filled lightBrown
                         |> scaleY 3
                         |> move(-9,6)

                         , roundedRect 10 15 5
                         |> filled blue
                         |> scale 2
                         |> scaleX 3
                         |> move (0,30)

                         , rect 10 15
                         |> filled blue
                         |> scale 2
                         |> scaleX 3
                         |> move (0,40)

                         , curve (-25,0) [Pull (0,17) (0,0) ]
                         |> filled (rgb 140 255 0)
                         |> move (-4,-17)
                         , curve (25,0) [Pull (0,17) (0,0) ]
                         |> filled (rgb 140 255 0)
                         |> move (4,-17)

                                   ]

        myBackground = square 200 |> filled pink
    in ("ContentHummingbird",myWord,"8","legs","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "sweatshirt"
        myCode =  516
        score = 10 -- number out of 10

        myShapes model = [roundedRect 11 27 6
          |> filled (black)
          |> rotate (degrees 40)
           |> move (25,5)
           ,roundedRect 11 27 6
          |> filled (black)
          |> rotate (degrees -40)
           |> move (-25,5)
           ,roundedRect 17 30 6
                           |> filled black
                           |> scale 1.5
                           |> scaleX 1.5
                           |> scaleY 1.5
                           |> move (1,-5)
                          , roundedRect 10 15 5
                          |> filled black
                          |> scale 0.25
                          |> scaleY 0.25
                          |> scaleX 0.25
                          |> move (0,50)
           ,roundedRect 11 35 6  |> filled (black)
          |> rotate (degrees -55)
           |> move (22,-10)
           ,roundedRect 11 35 6
          |> filled (black)
          |> rotate (degrees 55)
           |> move (-20,-10)


          ,triangle 10
          |> filled (lightGray)
          |> rotate (degrees 30)
          |> move (1,-16)
            ,triangle 10
          |> filled (lightGray)
          |> rotate (degrees 90)
          |> move (9,-21)
              ,triangle 10
          |> filled (lightGray)
          |> rotate (degrees 90)
          |> move (-7,-21)
          ,curve (-9,-2) [Pull (4,-13) (0,-10), Pull (39,26) (0,-5) ]
          |> filled (lightGray)
          |> move (-2,10)]


        myBackground = square 200 |> filled pink
    in ("ResonantBadger",myWord,"8","sweatshirt","Saginaw"

       ,myShapes)

  ,    let
        myWord = "gosling" -- put your work here (in quotes) --
        myCode = 339 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , oval 33 53
          |> filled yellow
          |> rotate ( degrees 90)
          ,circle 13
          |> filled yellow
          |> move (-15,15)
          ,triangle 8
          |> filled orange
          |> move (-30,15)
          |> rotate (degrees 180)
          ,rect 3.9 16
          |> filled orange
          |> move (0,-25)
          ,curve (0,0) [Pull (0,-23) (-44,-14) ]
          |> filled yellow
          |> rotate (degrees 180)
          |> move (-5,2)
          |> move (10,10*sin(0.5*model.time))
                        -- , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled green
    in ("OutgoingTamarind",myWord,"8","Gosling","Kaufman"

       ,myShapes)

  ,    let
        myWord = "walrus"-- put your work here (in quotes) --
        myCode = 557-- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground

                         , curve (0,0) [Pull (8,3) (20,-10)]
                             |> filled (rgb 255 248 220)
                             |> scale 1.25
                             |> scaleX 1.25
                             |> scaleY 1.25
                             |> rotate (degrees -240)
                             |> move (-10,-35)
                         , curve (0,0) [Pull (8,3) (20,-10)]
                             |> filled (rgb 255 248 220)
                             |> scale 1.25
                             |> scaleX 1.25
                             |> scaleY 1.25
                             |> rotate (degrees -60)
                             |> move (10,-0)
                          , circle 10
                             |> filled white
                             |> move (-29,19)
                         , circle 10
                             |> filled white
                             |> move (29,19)
                         , circle 5
                             |> filled black
                             |> move (29,19)
                         , circle 5
                             |> filled black
                             |> move (-29,19)




                         ]

        myBackground = square 100 |> filled darkBrown
    in ("NimbleSparrow",myWord,"8","Walrus","Kaufman"

       ,myShapes)

  ,    let
        myWord =  "teal" -- put your word here (in quotes) --
        myCode = 521 -- put your code number here, which came with your word (not in quotes) -
        score = 10 -- number out of 10

        myShapes model = [ oval 25 50
                             |> filled (rgb 14 220 243)
                             |> rotate 90
                             ]





    in ("SplendidCedar",myWord,"8","yam","Saginaw"

       ,myShapes)

  ,    let
        myWord = "hip"-- put your work here (in quotes) --
        myCode = 361 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10
        myShapes model = [ myBackground
                       ,roundedRect 500 1000 5
                       |> filled darkBlue
                       |> move (-290,30)

                   , oval 80 100
                       |> filled darkBlue
                       |> move (-60,30)

                         ]

        myBackground = square 200 |> filled black
    in ("PerfectTiger",myWord,"8","hip","Kaufman"

       ,myShapes)

  ,    let
        myWord = "kiwi" -- put your work here (in quotes) --
        myCode = 379 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10
        myShapes model = [ myBackground
                         , circle 32
                             |> filled brown
                         , circle 30
                             |> filled green
                         , circle 10
                             |> filled lightGreen
                         , oval 3 5
                           |> filled black
                           |> move (15,0)
                           |> rotate (degrees 90)
                         , oval 3 5
                           |> filled black
                           |> move (11,10)
                           |> rotate (degrees 135)
                         , oval 3 5
                           |> filled black
                           |> move (0,14)
                         , oval 3 5
                           |> filled black
                           |> move (-11,10)
                           |> rotate (degrees 45)
                         , oval 3 5
                           |> filled black
                           |> move (-15,0)
                           |> rotate (degrees 90)
                         , oval 3 5
                           |> filled black
                           |> move (-11,-10)
                           |> rotate (degrees 135)
                         , oval 3 5
                           |> filled black
                           |> move (0,-14)
                         , oval 3 5
                           |> filled black
                           |> move (11,-10)
                           |> rotate (degrees 45)



                         ]

        myBackground = square 200 |> filled lightCharcoal
    in ("DisciplinedLime",myWord,"8","Kiwi","Northlake Woods"

       ,myShapes)

  ,    let
        myWord = "skin" -- put your work here (in quotes) --
        myCode = 493 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ myBackground
                         , rect 10 40
          |> filled lightBrown
          |> move ( 24,25),
          rect 10 38
          |> filled lightBrown
          |> move ( 12,28),
          rect 10 38
          |> filled lightBrown
          |> move ( -1,30)
          ,rect 10 38
          |> filled lightBrown
          |> move ( -13,25)
          ,rect 10 28
          |> filled lightBrown
          |> rotate (degrees 30)
          |> move ( -22,0)
          ,circle 25.8
          |> filled lightBrown
          |> move ( 5,-6)
          ,rect 38 40
          |> filled lightBrown
          |> move ( 5.5,-30)

                         ]

        myBackground = square 200 |> filled blue
    in ("OutgoingTamarind",myWord,"8","Skin","Kaufman"

       ,myShapes)

  ,    let
        myWord = "grouse"-- put your work here (in quotes) --
        myCode = 346 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground

                         , roundedRect 20 35 5
                             |> filled darkBrown
                             |> rotate (degrees 120)
                         , curve (0,0) [Pull (10,0) (20,-10)]
                             |> filled darkBrown
                             |> rotate (degrees 410)
                             |> move (-30,-10)
                         , curve (0,0) [Pull (10,0) (20,-10)]
                             |> filled darkBrown
                             |> rotate (degrees 427)
                             |> move (-25,-15)
                         , rect 8 12
                             |> filled darkBrown
                             |> move (12,15)
                             |>  rotate  (degrees -25)
                             |> scaleX 1.1
                         , oval 25 15
                             |> filled darkBrown
                             |> rotate (degrees 0)
                             |> move (20,23)
                         , circle 3
                             |> filled lightRed
                             |> makeTransparent 0.80
                             |> move (22,24)
                         , circle 1
                             |> filled black
                             |> move (22,23)
                         , triangle 2
                             |> filled black
                             |> scaleX 2
                             |> move (33,23)
                         , roundedRect 3 10 0
                             |> filled darkGray
                             |> move (-8,-20)
                         , roundedRect 3 10 0
                             |> filled darkGray
                             |> move (5,-12)
                         , roundedRect 2 8 0
                             |> filled darkGray
                             |> rotate (degrees 90)
                             |> move (-5,-24)
                        , roundedRect 2 8 0
                             |> filled darkGray
                             |> rotate (degrees 90)
                             |> move (8,-16)
                      ]


        myBackground = square 200 |> filled lightBrown
    in ("RaspyAsh",myWord,"8","Leaping Grouse","Saginaw"

       ,myShapes)

  ,    let
        myWord = "under" -- put your work here (in quotes) --
        myCode = 543 -- put your code number here, which came with your word (not in quotes) --
        score = 10 -- number out of 10

        myShapes model = [ rect 100 5
                             |>filled (rgb 0 0 0)
                             ,circle 10
                             |> filled green
                             |> move (0,-20)
                             ,rect 10 20
                              |> filled (rgb 255 0 0)
                              |> move (0,40)
                             ,triangle 10
                              |> filled (rgb 255 0 0)
                              |> rotate (degrees 30)
                              |> move (0,30)


                         ]

        myBackground = square 200 |> filled pink
    in ("OutgoingTamarind",myWord,"8","Under","Kaufman"

       ,myShapes)

  ]
