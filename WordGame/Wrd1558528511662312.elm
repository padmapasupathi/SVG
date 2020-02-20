module Wrd1558528511662312 exposing(words)
import GraphicSVG exposing(..)
words = [
      let
        myWord = "house"
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --




        myBackground = square 200 |> filled green
        house = [     triangle 6
                          |> filled darkBrown
                                |> scale 2
                            |> scaleX 2
                      |> scaleY 2
                    |> rotate (degrees -150)
                      |> move (0,11)

                           ,
                                square 10
                                   |> filled white
                                      |> scale 2.0
                                     |> scaleX 2.0
                                         |> scaleY 2.0
                                          |> rotate (degrees -180)
                                      |> move (0,-20)
                            ,  rect 10 15
                                |> filled brown
                                |> scale 1.25
                                |> scaleX 1.25
                                |> scaleY 1.25
                                |> move (0,-28)



                                    , circle 3
                                     |> filled darkGray
                                     |> scale 0.75
                                     |> scaleX 0.75
                                     |> scaleY 0.75
                                     |> move (3,-27) ]

        myShapes model = [    myBackground,        group  house

                                     |> move (0,sin (model.time*10)*(10))
                                     ]

    in (("FantasticWolf",myWord,"6"),("house","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "basketball" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [circle 40
          |> filled darkOrange
          |> scale 0.75
          |> move(-6,-6)
          ,
          rect 20 225
          |> filled black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 150)
          |> move (-10,-3)
          ,
          rect 20 207
          |> filled black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 150)
          |> move (6,-10)]







        myBackground = square 200 |> filled pink
    in (("MoaningCrow",myWord,"6"),("basketball","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "boy" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [group [circle 5
                         |> filled lightYellow
                         |> scale 2
                         |> move(0,13)
                         ,
                         triangle 3
                         |> filled black
                         |> rotate (degrees -30)
                         |> move(-5,20)
                         ,
                         triangle 3
                         |> filled black
                         |> rotate (degrees -30)
                         |> move(-3,21)
                         ,
                         triangle 3
                         |> filled black
                         |> rotate (degrees -30)
                         |> move(-1,22)
                         ,
                         triangle 3
                         |> filled black
                         |> rotate (degrees -30)
                         |> move(1,23)
                         ,
                         roundedRect 5 11 2
                         |> filled lightYellow
                         ,
                         roundedRect 7 16 5
                         |> filled lightYellow
                         |> rotate (degrees -60)
                         |> move(-10,-6)
                         ,
                         roundedRect 7 16 5
                         |> filled lightYellow
                         |> rotate (degrees -120)
                         |> move(10,-6)
                         ,
                         roundedRect 13 18 5
                         |> filled green
                         |> move(0,-7)
                         ,
                         roundedRect 7 15 7
                         |> filled lightYellow
                         |> move(-5,-20)
                         ,
                         roundedRect 7 15 7
                         |> filled lightYellow
                         |> move(5,-20)

                         ] |> scale 1.5]
        myBackground = square 200 |> filled blue
    in (("ProudFinch",myWord,"6"),("boy","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "glue" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [myBackground,

                         glue
                           |> scale 0.75
                           |> move (0, -8)
                           ]

        glue = group [roundedRect 90 20 4
                          |> filled lightCharcoal
                          |> scaleY 2
                          |> rotate (degrees -90)
                          |> addOutline (solid 1) black

                          ,
                          triangle 12
                           |> filled orange
                           |> scaleY 2
                           |> rotate (degrees -270)
                           |> move (1,50)
                           |> addOutline (solid 1) white

                           ,roundedRect 10 20 5
          |> filled white
          |> rotate (degrees -270)]





        myBackground = square 200 |> filled blue
    in (("MistyCrocus",myWord,"6"),("glue","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "birthday" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model =
          [ group [rect 10 15
          |> filled lightYellow
          |> scale 2
          |> scaleX 2
          ,square 10
          |> filled pink
          |> scaleX 2
          |> move (0,20)
          ,rect 50 10
          |> filled pink
          |> scaleX 0.5
          |> move (0,20)]
            |> scale 1.5
            |> move (0,-10)
          ]












    in (("NimbleCypress",myWord,"6"),("birthday","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "waffles" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [ circle 14
          |> filled orange
                         |>move (20,-20)
                         ,curve (0,0) [Pull (10,0) (20,-10)]
          |> filled black
          |> rotate (degrees -60)
          |> move (10,-10)
                         ,curve (0,0) [Pull (10,0) (25,-10)]
          |> filled black
          |> rotate (degrees -60)
          |> move (15,-7)
                         ,curve (0,0) [Pull (10,0) (25,-10)]
          |> filled black
          |> rotate (degrees -60)
          |> move (21,-7)
                         ,curve (0,0) [Pull (10,0) (20,-10)]
          |> filled black
          |> rotate (degrees -60)
          |> move (28,-8)
                         ,curve (0,0) [Pull (10,0) (28,-10)]
          |> filled black
          |> rotate (degrees -150)
          |> move (34,-13)
                           ,curve (0,0) [Pull (10,0) (26,-10)]
          |> filled black
          |> rotate (degrees -150)
          |> move (34,-23)
          ]
            |> scale 2.5
            |> move (-45,45)
                         ]

        myBackground = square 200 |> filled pink
    in (("MuteCuckoo",myWord,"6"),("waffles","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "arithmetic" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quote

        myShapes model = [
                         roundedRect 10 80 5
                        |> filled black
                        |> rotate (degrees 90)
                        |> move (-0,0)
                        ,
                        circle 10
                        |> filled black
                        |> rotate (degrees 90)
                        |> move (0,20)
                        ,
                        circle 10
                        |> filled black
                        |> rotate (degrees 90)
                        |> move (0,-20)

                         ]

        myBackground = square 200 |> filled pink
    in (("PurringFish",myWord,"6"),("arithmetic","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "ball" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ circle 50
                         |> filled lightBlue
                         |> move (0,0)



                         ]

        myBackground = square 200 |> filled blue
    in (("PleasantElephant",myWord,"6"),("ball","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "smiley" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                        , group [ circle 50
                          |> filled yellow

                          ,
                          circle 10
                          |> filled black
                          |> move(15,15)

                         ,
                         circle 10
                          |> filled black
                          |> move(-15,15)
                          ,
                        wedge 20 0.5
                       |> filled black
                       |> rotate (degrees -90)
                       |> move (0,-10) ] |> scale 0.9
                        ]

        myBackground = square 200 |> filled pink
    in (("PowerfulFern",myWord,"6"),("smiley","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "cherry" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [circle 15
          |> filled red
          |> rotate (degrees -810)
          |> move (-25,-20)
                         ,curve (0,0) [Pull (10,0) (20,-20)]
          |> filled darkGreen
          |> rotate (degrees -960)
          |> move (-25,-10)
          ]
            |> scale 1.7
            |> move (50,15)
          ]

        myBackground = square 200 |> filled pink
    in (("MuteCuckoo",myWord,"6"),("cherry","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "pancake" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [group [ circle 40
                           |> filled white
                           ,

                           circle 35
                           |> filled brown

                           ,
                           wedge 35 0.75
                           |> filled darkBrown
                           |> rotate (degrees -420)
                           ,
                           circle 15
                           |> filled white
                           ,
                           roundedRect 25 16 6
                           |> filled lightYellow
                           |> rotate (degrees -480)
                           ,
                           wedge 30 0.375
                           |> filled darkBrown
                           |> rotate (degrees -210)
                           |> move (-20,20)
                         ]
                          |> move (5, -10)
                         ]

        myBackground = square 200 |> filled black
    in (("ObedientDog",myWord,"6"),("Pancake","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "toothbrush" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [myBackground
          ,group [roundedRect 10 35 5
          |> filled white
          |> move(-20,0)
          ,roundedRect 10 35 5
          |> filled white
          |> move(-30,0)
          ,roundedRect 10 35 5
          |> filled white
          |> move(-40,0)
           ,roundedRect 10 35 5
          |> filled white
          |> move(-10,0),
         roundedRect 20 50 10
          |> filled blue
          |> rotate (degrees -90)
          |> move (-25,-15),
         roundedRect 10 80 10
          |> filled blue
          |> rotate (degrees -90)
          |> move(20,-15),

          circle 10
          |> filled lightBlue
          |> rotate (degrees -90)
          |> move(-15,25),
          circle 10

          |> filled lightBlue
          |> rotate (degrees -90)
          |> move(-20,25),
           circle 10
          |> filled lightBlue
          |> rotate (degrees -90)
          |> move(-25,25),
           circle 10
          |> filled lightBlue
          |> rotate (degrees -90)
          |> move(-30,25),
           circle 10
          |> filled lightBlue
          |> rotate (degrees -90)
          |> move(-35,25)]
            |> scale 0.85
            |> move (-5,0)
          ]

        myBackground = square 200 |> filled pink
    in (("OutrageousDragon",myWord,"6"),("toothbrush","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "mailbox" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [rect 45 20
          |> filled darkBrown
          |> rotate (degrees -25)
          |> move (-30,20)
           ,
                         roundedRect 75 40 5
                         |> filled blue
                         |> move (11,15)



                       ,   rect 10 95
                         |> filled darkBrown
                         |> rotate (degrees 0)
                         |> move (18,-52 )
                         ,
                         rect 5 38
                         |> filled blue
                         |> rotate (degrees 65)
                         |> move (-37,5.1)
                         ,
                         rect 4 40
                         |> filled red
                         |> move (0,35.5)
                         ,
                         triangle 6
                         |> filled red
                         |> move (4.4,50.4)
                         ]
                         |> scale 0.7
                         |> move (0,10)
                         ]


        myBackground = square 200 |> filled blue
    in (("PoisedFalcon",myWord,"6"),("mailbox","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "actor" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [group [ oval 90 105
                          |> filled lightBrown
                          ,
                          circle 10
                          |> filled white
                          |> move (16,16)
                          ,
                          circle 10
                          |> filled white
                          |> move (-16,16)
                          ,
                          circle 5
                          |> filled black
                          |> move (16,16)
                          ,
                          circle 5
                          |> filled black
                          |> move (-16,16)
                          ,
                          wedge 30 0.5
                          |> filled black
                          |> addOutline (solid 3) red
                          |> rotate (degrees 270)
                          |> move (0,-11)
                          ,
                          oval 10 20
                          |> filled darkBrown
                          ,
                          wedge 40 0.55
                          |> filled darkBrown
                          |> rotate (degrees 90)
                          |> move (0,30)
                         ]
                           |> scale 0.7
                           |> move (0,-10)
                         ]

        myBackground = square 200 |> filled pink
    in (("ObservantDolphin",myWord,"6"),("actor","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "number" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [ roundedRect 58 15 0
                           |> filled black
                           |> rotate (degrees 90)
                           |> move (-20,5)
                           ,
                           oval 12 50
                           |> outlined (solid 8.5) black
                           |> scaleX 2.75
                           |> move (20,5)
                           ]
                           |> move (-10,-5)
                           ]
        myBackground = square 200 |> filled pink
    in (("NaughtyCucumber",myWord,"6"),("number","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "tissue box" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group [ rect 10 15
                             |> filled lightBlue
                             |> scale 5
                             |> rotate (degrees 90)
                             |> move (0,-30)
                         , rect 6 15
                             |> filled blue
                             |> scale 5
                             |> rotate (degrees 90)
                             |> move (0,-40)

                         , rect 10 15
                             |> filled white
                             |> scale 4
                             |> rotate (degrees 90)
                             |> move (0,4) ] |> move (0,12) |> scale 0.9

                         ]

        myBackground = square 200 |> filled pink
    in (("ExcitingTurmeric",myWord,"6"),("tissue box","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "anger" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [circle 50
                          |> filled red
                          |> rotate (degrees -90)
                         ,

                         circle 10
                         |> filled black
                         |> rotate (degrees -30)
                         |> move (15,15)


                         ,

                            circle 10
                         |> filled black
                         |> rotate (degrees -30)
                         |> move (-15,15)

                        ,

                            wedge 30 0.5
                           |> filled black
                           |> rotate (degrees 450)
                           |> move (0,-35)
                        ]
                         |> scale 0.9

                        ]





        myBackground = square 200 |> filled pink
    in (("PowerfulFern",myWord,"6"),("anger","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "lime" -- put your work here (in quotes) --
        myCode = 1979 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , oval 65 83
                           |> filled green
                         , circle 5
                           |> filled green
                           |> move (0,-39)
                         , circle 5
                           |> filled green
                           |> move (0,40)


                        -- , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled white

    in (("AncientMulberry",myWord,"6"),("lime","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "balloon" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [group [oval 70 80
                         |> filled blue
                         |> move (0,25)
                         ,
                            rect 1 75
                         |> filled black
                         |> rotate (degrees 0)
                         |> move (0,-50)
                         ]
                         |> scale 0.6
                         |> move (0,5)
                         ]



        myBackground = square 200 |> filled black
    in (("NaughtyCucumber",myWord,"6"),("Balloon","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "cookie" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , square 10
                             |> filled red
                             |> rotate model.time
                         , graphPaper 10 |> makeTransparent 0.4

                         ,circle 20
                             |> filled lightBrown
                             |> scale 2
                         ,circle 5
                         |> filled lightBlue
                         |> move (20,10)

                         ,circle 5
                         |> filled red
                         |> move (-20,10)

                         ,circle 5
                         |> filled pink
                         |> move (-30,-20)

                         ,circle 5
                         |> filled green
                         |> move (0,-30)

                         ,circle 5
                         |> filled orange
                         |> move (10,-10)
                         ]






        myBackground = square 200 |> filled white
    in (("ExcitingTurmeric",myWord,"6"),("colorful cookie","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "moon" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [group [ myBackground
                         , circle  50
                             |> filled darkGray
                             |> rotate model.time
                         , circle 15
                             |> filled gray
                             |> move (-25,-20)
                         , circle 15
                             |> filled gray
                             |> move (15,20)
                         , circle 10
                             |> filled gray
                             |> move (-10,15)
                         ]
                         |> scale 0.9
                         ]

        myBackground = square 200 |> filled white
    in (("ImpossibleCardamom",myWord,"6"),("Moon","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "boot" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [ myBackground

         ,rect 60 35
          |> filled black
          |> rotate (degrees 630)
          |> move (0,-10)
          ,roundedRect 60 35 5
          |> filled black
          |> rotate (degrees 540)
          |> move (-30,-20)
          ]
            |> move (20,0)
          ]


        myBackground = square 200 |> filled pink
    in (("GrandBat",myWord,"6"),("Boot","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "alarm" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [group [ myBackground
                           ,circle 30 |> filled yellow
                           ,circle 20
          |> filled lightBlue
          |> rotate (degrees -90)

          ,text "10:00"
          |> filled red
          |> rotate (degrees -720)
          |> move (-13,0)

          ,wedge 20 0.5
          |> filled orange
          |> rotate (degrees -669)
          |> move (20,20)

          ,wedge 20 0.5
          |> filled orange
          |> rotate (degrees -580)
          |> move (-20,20)
           ]
            |> move (0,-10)

                                 ]

        myBackground = square 200 |> filled pink
    in (("HissingButterfly",myWord,"6"),("alarm","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "soda" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group [roundedRect 40 80 5
          |> filled black
          |> rotate (degrees 0)
          |> move (0,0)
          , oval 30 50
          |> filled black
          |> rotate (degrees -180)
          |> move (0,30)
          , rect 40 20
          |> filled red
          |> rotate (degrees -180)
          |> move (0,10)
          , square 10
          |> filled red
          |> rotate (degrees -180)
          |> move (0,57)
          , text "Berry Fizzy" |> size 8 |> centered
          |> filled white
          |> move (0,7.5)
                         ]
                         |> scale 0.9 |> move (0,-10) ]

        myBackground = square 200 |> filled blue
    in (("JoyfulChamomile",myWord,"6"),("Soda","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "Earth's layers" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [myBackground
                         ,group [earth
                         |> rotate (2*sin(1*model.time+2))
                         ,circle 1
                         |> filled black
                         ]
                         |> move (0,-5)
                        ]
        earth =  group [circle 40
                             |> filled red
                             ,circle 30
                             |> filled lightRed
                             ,circle 20
                             |> filled lightOrange
                             ,circle 10
                             |> filled lightYellow
                             , wedge 40 0.75
                             |> filled blue
                             ,circle 10
                             |> filled lightGreen
                             |> move (1,30)
                            ,circle 10
                             |> filled lightGreen
                             |> move (5,-28)
                             ,circle 10
                             |> filled lightGreen
                             |> move (7,-20)
                             ,circle 10
                             |> filled lightGreen
                             |> move (10,25)
                             ,circle 9
                             |> filled lightGreen
                             |> move (9,-22)
                              ,circle 10
                             |> filled lightGreen
                             |> move (25,-2)
                             ,circle 10
                             |> filled lightGreen
                             |> move (28,-5)
                             ,circle 9
                             |> filled lightGreen
                             |> move (23,-1)
                             ]

        myBackground = square 200 |> filled purple
    in (("JollyCedar",myWord,"6"),("Earth's Layers","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "wrench" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [roundedRect 50 10 5
          |> filled black
          |> rotate (degrees -810)
          , circle 10
          |> filled black
          |> move(0,-20)
           , ngon 6 5
          |> filled white
          |> move(0,-20)
          , oval 20 20
          |> filled black
          |> move(0,20)
          , square 13
          |> filled white
          |> move(0,24)
          ]
           |> scale 1.4

                         ]

        myBackground = square 200 |> filled pink
    in (("SecretiveHare",myWord,"6"),("wrench","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "orangutan" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground

                         ,  group [circle 52
          |> filled (rgb 230 125 50)
          |> move (0,2)


                         , roundedRect 43 58 16
                         |> filled brown
                         , circle 6
          |> filled white
                         |> move (12,12)
            , circle 6
          |> filled white
                         |> move (-12,12)
                         , circle 4
          |> filled green
          |> move (12,12)
            , circle 4
          |> filled green
          |> move (-12,12)
             , circle 2
          |> filled black
          |> move (12,12)
          , circle 2
          |> filled black
          |> move (-12,12)
          , triangle 7
          |> filled (rgb 250 150 150)
          |> rotate (degrees 30)

          , circle 1
          |> filled black
          |> move (2.5,0.5)
           , circle 1
          |> filled black
          |> move (-2.5,0.5)
           , triangle 8
          |> filled black
          |> rotate (degrees 90)
          |> move (0, -19)
          ] |> scale 0.92 |> move (0,-2)
             ]


        myBackground = square 200 |> filled blue


    in (("GentleWasabi",myWord,"6"),("ocean","given to PedramMay2019",myShapes))

  ,    let
        myWord = "ice cream" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , circle 24
                         |> filled white
                         |> rotate (degrees 150)
                         |> move (0,18-9)
                         , triangle 25
                          |> filled lightBrown
                          |> rotate (degrees 150)
                          |> move(0,-5-9)
                         , spr |> move (10, 0)
                         , spr |> move (0, 0)
                         , spr |> move (-10, 0)
                         , spr |> move (0, 10)

                         ]

        sprinkle col = rect 5 1 |> filled col

        spr = group [sprinkle red
                             |> rotate (degrees 21)
                             |> move (4,12)
                          , sprinkle pink
                             |> rotate (degrees 42)
                             |> move (-2,8)
                         , sprinkle blue
                             |> rotate (degrees 54)
                             |> move (0,15)
                          , sprinkle yellow
                             |> rotate (degrees 34)
                             |> move (5,9)
                         , sprinkle purple
                             |> rotate (degrees 23)
                             |> move (-3,11)
                          , sprinkle green
                             |> rotate (degrees 13)
                             |> move (6,7) ]



        myBackground = square 200 |> filled pink
    in (("PowerfulFern",myWord,"6"),("ice cream","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "ice cream" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [circle 20
          |> filled brown
          |> rotate (degrees -450)
          |> move (0,5)
          , triangle 30
          |> filled lightYellow
          |> rotate (degrees -450)
          |> move (0,-30)
          ,
         circle 20
          |> filled pink
          |> rotate (degrees -450)
          |> move (0,30)
         ,circle 10
          |> filled lightRed
          |> rotate (degrees -450)
          |> move (0,50)
          ]
            |> scale 0.8
          ]

        myBackground = square 200 |> filled pink
    in (("NuttyDeer",myWord,"6"),("Ice Cream","given to YumnaMay2019",myShapes))

  ,    let
        myWord =  "carrot" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [circle 10
                         |> filled orange
                         |>rotate (degrees -30)
                         ,
                         circle 10
                         |> filled orange
                         |> rotate (degrees -30)
                         |>move(2,2)
                         ,
                         circle 10
                         |> filled orange
                         |> rotate (degrees -30)
                         |>move(6,6)
                         ,circle 10
                         |> filled orange
                         |> rotate (degrees -30)
                         |>move(10,10)
                         ,circle 10
                         |> filled orange
                         |> rotate (degrees -30)
                         |>move(-2,-2)
                         ,
                         roundedRect 30 10 5
                         |> filled green
                         |> rotate (degrees -30)
                         |>move(31,10)
                         ,roundedRect 30 10 5
                         |> filled green
                         |> rotate (degrees -30)
                         |> move (5,28)
                         ,
                         roundedRect 30 10 5
                         |> filled green
                         |> rotate (degrees 60)
                         |> move (23,29)
                         ,
                         circle 10
                         |> filled orange
                         |> rotate (degrees 60)
                         |> move (-6,-6)
                         ,circle 10
                         |> filled orange
                         |> rotate (degrees 60)
                         |> move (-10,-10)
                         ,
                         circle 10
                         |> filled orange
                         |> rotate (degrees 60)
                         |> move (-14,-14)
                         ,
                         circle 10
                         |> filled orange
                         |> rotate (degrees 60)
                         |> move (-18,-18)
                         ,
                         circle 10
                         |> filled orange
                         |> rotate (degrees 60)
                         |> move (-22,-22)
                         ,
                          circle 10
                         |> filled orange
                         |> rotate (degrees 60)
                         |> move (-26,-26)
                         ,
                          circle 10
                         |> filled orange
                         |> rotate (degrees 60)
                         |> move (-30,-30)
                       ,
                         circle 10
                         |> filled orange
                         |> rotate (degrees 60)
                         |> move (-34,-34)

                         ]
    in (("NoisyDate",myWord,"6"),("carrot","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "up" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         ,
                         group [triangle 22
                             |> filled red
                             |> rotate ( degrees -150)
                         , rectangle 30 15
                             |> filled red
                             |> rotate ( degrees 90)
                             |> move (0,-20)
                             ] |> move(0, repeat 200 (model.time*20))
                         ]

        repeat l t = t - l * toFloat (round (t/l))

        myBackground = square 200 |> filled pink
    in (("TruthfulLlama",myWord,"6"),("up","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "door" -- put your work here (in quotes) --
        myCode = 1979 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         ,
                         group
                         [ rectangle 65 85
                             |> filled brown
                             |> move (10,-7)
                         , circle 5
                             |> filled black
                             |> move (-7,-5)
                             ] |> move (-10,6)

                         ]
        myBackground = square 200 |> filled black

    in (("UniqueLotus",myWord,"6"),("Door","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "grade" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model =[ group [rect 10 50
          |> filled darkRed
          |> rotate (degrees -30)
          |> move (-25,0) , rect 10 55
          |> filled darkRed
          |> rotate (degrees 210) , rect 10 35
          |> filled darkRed
          |> rotate (degrees 90)
          |> move (-15,0)

               ] |> move(13,0)
                 |> scale 1.3
               ]


    in (("ElatedSedge",myWord,"6"),("grade","given to PedramMay2019",myShapes))

  ,    let
        myWord = "lollipop" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                          ,lollipop

                         |> rotate (sin 10*(model.time))
                         -- |> scale (sin 0.1*(model.time))
                         |> makeTransparent (1*sin (model.time))
                         |>scale (0.75 * (sin (model.time)))
                          ]

        lollipop= group [circle 15
                          |> filled red
                          |> scale 2
                          |> scaleX 1
                          |> scaleY 1
                          |> move (1.5,10)
                          ,circle 11
                          |> filled hotPink
                          |> scale 2
                          |> move (1,10)
                          ,circle 8
                          |> filled purple
                          |> scale 2
                          |> move (1,10)
                          ,circle 5
                         |> filled green
                         |> scale 2
                         |> move (1,10)
                         ,rect 10 15
                          |> filled white
                          |> scale 1
                          |> scaleY 3
                          |> move (2,-43)

                         ]

        myBackground = square 200|> filled pink
    in (("GregariousBeet",myWord,"6"),("Lollipop","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "bread" -- put your work here (in quotes) --
        myCode = 5985 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ square 200
                         |> filled white, bread |> move(0,-10) ]

        bread = group [oval 10 3
          |> outlined (solid 10) (rgb 237 125 50)
          |> scale 4
          ,
          rect 90 15
          |> filled white
          |> scale 2
          |> move (0,-20),
           oval 10 10
          |> filled lightBrown
          |> scaleY 2
          |> rotate (degrees -900)
          |> move (-20,15),
          oval 10 10
          |> filled lightBrown
          |> scaleY 2
          |> rotate (degrees -900)
          |> move (15,15),
          oval 10 10
          |> filled lightBrown
          |> scaleY 2
          |> rotate (degrees -900)
          |> move (-3,16)]














    in (("ImportantCaraway",myWord,"6"),("Bread","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "foot" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         ,group [oval 10 15
          |> filled lightBrown
          |> rotate (degrees -180)
          |> move (-20,0)
          ,oval 10 15
          |> filled lightBrown
          |> rotate (degrees -180)
          |> move (-10,0)
         ,oval 10 15
          |> filled lightBrown
          |> rotate (degrees -180)
          |> move (0,0)
          ,oval 10 15
          |> filled lightBrown
          |> rotate (degrees -180)
          |> move (10,0)
          ,oval 10 15
          |> filled lightBrown
          |> rotate (degrees -180)
          |> move (20,0)

         ,oval 60 15
          |> filled lightBrown
          |> scaleY 2.5
          |> rotate (degrees -90)
          |> move (0,-30)
          ]
            |> move (0, 20)
            |> scale 1.2
          ]


        myBackground = square 200 |> filled pink
    in (("HilariousBustard",myWord,"6"),("Foot","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "soda" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                          , coke
                          |> scale 0.70
                          |> rotate (sin model.time)
                          |> move (sin model.time*(-10),-6)
                         ]
        coke = group [roundedRect 40 80 5
          |> filled black
          |> rotate (degrees 0)
          |> move (0,0)
          , oval 30 50
          |> filled black
          |> rotate (degrees -180)
          |> move (0,30)
          , rect 40 20
          |> filled red
          |> rotate (degrees -180)
          |> move (0,10)
          , square 10
          |> filled red
          |> rotate (degrees -180)
          |> move (0,57)
          , text "Coca Cola"
          |> filled white
          |> rotate (degrees 0)
           |> scale 0.75
          |> move (-20,7.5)
                           ]

        myBackground = square 200 |> filled darkBlue

    in (("JazzyCat",myWord,"6"),("Soda","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "balancing" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [  myBackground
                            , group [ circle 35

                            |>filled lightBrown
                            ,circle 10
                            |> filled black
                            |> move(-15,15)
                             ,
                             wedge 20 0.5
                            |> filled black
                            |> rotate (degrees -90)
                            |>move(0,-5)
                            ,
                            circle 10
                            |> filled black
                            |> move(15,15)
                             ,
                             circle 15
                            |> filled white
                            |> rotate (degrees -30)
                            |>move(0,48) ] |> scale (0.9) |> move (0,-18)

                            ]


        myBackground = square 200 |> filled yellow

    in (("NoisyDate",myWord,"6"),("balancing","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "frog" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [  myBackground
                          ,group [circle 20
                          |>filled lightGreen
                          ,square 100
                          |> filled lightBlue

                          ,circle 27
                          |> filled lightGreen
                          |> rotate (degrees 720)
                          |> move (0,0)

                          ,circle 11
                          |> filled lightGreen
                          |> rotate (degrees 720)
                          |> move (19,20)

                          ,circle 11
                          |> filled lightGreen
                          |> rotate (degrees 720)
                          |> move (-19,20)

                          ,circle 6
                          |> filled white
                          |> rotate (degrees 720)
                          |> move (20,20)

                          ,circle 6
                          |> filled white
                          |> rotate (degrees 720)
                          |>move (-20,20)

                          ,circle 3
                          |> filled black
                          |> rotate (degrees 720)
                          |> move (20,20)

                          ,circle 3
                          |> filled black
                          |> rotate (degrees 720)
                          |> move (-20,20)


                          ,wedge 10 0.5
                          |> filled pink
                          |> move (-0,-0)
                          |> rotate(degrees 270)

                          ,circle 5
                          |> filled pink
                          |>move (20,2)

                           ,circle 5
                          |> filled pink
                          |>move(-20,2)
                          ]
                          |> scale 1.2
                          |> move (0,-10)
                          ]










        myBackground = square 200 |> filled white







    in (("HardworkingBreadfruit",myWord,"6"),("Frog","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "plant"
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground




          , group [rect 10 60
          |> filled darkGreen
          |> move (0,20)
          |> move (0, (sin model.time)*(-10))

           , curve (0,0) [Pull (10,0) (20,-10)]
          |> filled darkGreen
          |> move (0,10)



           , curve (0,0) [Pull (10,0) (20,-10)]
          |> filled darkGreen
          |> rotate (degrees 60)
          |> move (-20,10)
           , polygon [(-15,0),(-8,-21),(7,-20),(15,0)]
          |> filled brown
          ] |> move (0,-15)
          ]

        myBackground = square 200 |> filled blue
    in (("LuckyClover",myWord,"6"),("plant","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "frog" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [  myBackground
                          , group [circle 20
                          |>filled lightGreen

                          ,circle 27
                          |> filled lightGreen
                          |> rotate (degrees 720)
                          |> move (0,0)

                          ,circle 11
                          |> filled lightGreen
                          |> rotate (degrees 720)
                          |> move (19,20)

                          ,circle 11
                          |> filled lightGreen
                          |> rotate (degrees 720)
                          |> move (-19,20)

                          ,circle 6
                          |> filled white
                          |> rotate (degrees 720)
                          |> move (20,20)

                          ,circle 6
                          |> filled white
                          |> rotate (degrees 720)
                          |>move (-20,20)

                          ,circle 3
                          |> filled black
                          |> rotate (degrees 720)
                          |> move (20,20)

                          ,circle 3
                          |> filled black
                          |> rotate (degrees 720)
                          |> move (-20,20)


                          ,wedge 10 0.5
                          |> filled black
                          |> move (-0,-0)
                          |> rotate(degrees 990)

                          ,circle 5
                          |> filled pink
                          |> move (20,2)

                          ,circle 5
                          |> filled pink
                          |> move (-20,2)
                          ] |> move(0,-5)








                           ]














        myBackground = square 200 |> filled lightBlue



    in (("MelodicCrane",myWord,"6"),("Frog","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "test" -- put your work here (in quotes) --

        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [group [rect 40 60
                         |> filled lightGray
                         |> move (0,0)
                        , check |> scale (abs(sin model.time))
                         |> scale 0.7   |> move (10,20)
                        , rect 5 33
                         |> filled black
                         |> scaleX 0.40
                         |> rotate (degrees 270)
                         |> move (0,6)
                        , rect 5 33
                         |> filled black
                         |> scaleX 0.40
                         |> rotate (degrees 270)
                         |> move (0,2)
                         , rect 5 33
                         |> filled black
                         |> scaleX 0.40
                         |> rotate (degrees 270)
                         |> move (0,-2)
                         , rect 5 33
                         |> filled black
                         |> scaleX 0.40
                         |> rotate (degrees 270)
                         |> move (0,-6)
                         , rect 5 33
                         |> filled black
                         |> scaleX 0.40
                         |> rotate (degrees 270)
                         |> move (0,-10)
                         , rect 5 33
                         |> filled black
                         |> scaleX 0.40
                         |> rotate (degrees 270)
                         |> move (0,-14)
                         , rect 5 33
                         |> filled black
                         |> scaleX 0.40
                         |> rotate (degrees 270)
                         |> move (0,-18)
                         , rect 5 33
                         |> filled black
                         |> scaleX 0.40
                         |> rotate (degrees 270)
                         |> move (0,-22)
                         , rect 5 33
                         |> filled black
                         |> scaleX 0.40
                         |> rotate (degrees 270)
                         |> move (0,-26)
                         , rect 5 33
                         |> filled black
                         |> scaleX 0.40
                         |> rotate (degrees 270)
                         |> move (0,10)
                         , rect 5 12
                         |> filled black
                         |> scaleX 0.40
                         |> rotate (degrees 270)
                         |> move (-10,17)
                         ]
                          |> scale 1.4

                         ]

        check = group [ rect 3 12
                         |> filled red
                         |> rotate (degrees 30)
                         |> move (-7,-4)
                         , rect 3 20
                         |> filled red
                         |> rotate (degrees -28)



                  ]

        myBackground = square 200 |> filled pink
    in (("LivelyChimpanzee",myWord,"6"),("Test","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "table" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [ myBackground
                         , rect 10 25
          |> filled charcoal
          |> rotate (degrees 0)
          |> move (-20,-10)
                           , rect 10 25
          |> filled charcoal
          |> rotate (degrees 0)
          |> move (20,-10)
                           , rect 10 57
          |> filled darkBrown
          |> rotate (degrees 90)
          |> move (0,5)
                           ]
                            |> scale 1.4
                           ]

        myBackground = square 200 |> filled orange
    in (("JoyfulChamomile",myWord,"6"),("Table","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "brick" -- put your work here (in quotes) --
        myCode = 1979 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                          , rect 60 30
                             |> filled red
                         , circle 7
                             |> filled black
                         , circle 7
                             |> filled black
                             |> move (-17,0)
                         , circle 7
                             |> filled black
                             |> move (17,0)

                         ]

        myBackground = square 200 |> filled pink
    in (("AmusedMouse",myWord,"6"),("brick","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "bread" -- put your work here (in quotes) --
        myCode = 1979 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                        ,group [ circle 12
                        |> filled darkBrown
                        |> move (-11,10)
                        , circle 12
                        |> filled darkBrown
                        |> move (11,10)
                        , square 39
                        |> filled darkBrown
                        , circle 10
                        |> filled lightBrown
                        |> move (-10,10)
                        , circle 10
                        |> filled lightBrown
                        |> move (10,10)
                        , square 34
                        |> filled lightBrown
                        , circle 1
                        |> filled darkBrown
                        |> move (-10,10)
                        , circle 1
                        |> filled darkBrown
                        |> move (10,10)
                        , circle 1
                        |> filled darkBrown
                        |> move (0,0)
                        , circle 1
                        |> filled darkBrown
                        |> move (-10,-10)
                        , circle 1
                        |> filled darkBrown
                        |> move (10,-10)
                        ] |> scale 1.5
                        ]

        myBackground = square 200 |> filled blue
    in (("ValuableLynx",myWord,"6"),("bread","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "lily" -- put your work here (in quotes) --
        myCode = 1979 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [

           square 10
          |> filled purple
          |> scale 20
          |> scaleX 2
          |> scaleY 2
          |> move (-50,0)
         {- ,text "LILY"
          |> filled pink
          |> scale 1.9
          |> scaleX 2
          |> scaleY 2
          |> move (-50,0)   -}
         , myLily
            |> move (7*sin( 3 * model.time) + 10, 20)
            |> scale 2





                         , graphPaper 10 |> makeTransparent 0.4 ]

        myLily = group [ circle 6
          |> filled yellow
          |> move (-10,-25)
           ,circle 6
          |> filled pink
          |> move (-21.75,-25)
          ,circle 6
          |> filled pink
          |> move (-16,-15)
          ,circle 6
          |> filled pink
          |> move (-5,-15)
          ,circle 6
          |> filled pink
          |> move (1.7,-25)
          ,circle 6
          |> filled pink
          |> move (-16,-35)
          ,circle 6
          |> filled pink
          |> move (-4,-35)
         ]

    in (("PleasantClematis",myWord,"6"),("lily","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "volcano" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                     , triangle 55
                     |>filled darkCharcoal
                     |>rotate (degrees 90)
                     |> move(0,-25)
                     ,
                     wedge 10 1
                     |> filled lightOrange
                     |> scale 2
                     |> rotate (degrees 90)
                     |> move(30,25)
                     ,
                     roundedRect 10 85 5
                     |> filled orange
                     |> scale 1
                     |> rotate (degrees 195)
                     |> move (10,-10)

                         ]


        myBackground = square 200 |> filled pink
    in (("ContentRaccoon",myWord,"6"),("Volcano","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "doughnut"
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [ myBackground
                         , circle 10
                        |> filled brown
                        |> scale 3,
                           circle 8
                        |> filled pink
                        |> scale 3,
                        circle 3
                        |> filled white
                        |> scale 3,
                        circle 5
                        |> filled black
                        |> scale 0.5
                        |> move (-10,-10),
                        circle 5
                        |> filled black
                        |> scale 0.5
                        |> move (10,-10),
                       wedge 10 0.5
                        |> filled black
                        |> scale 0.5
                        |> rotate (degrees -90)
                        |> move (0,-20)
                        ]
                          |> scale 1.5
                         ]






        myBackground = square 200 |> filled white
    in (("ExcellentTulip",myWord,"6"),("donut","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "apple" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group [circle 30
                           |> filled red
                         , rect 3 15
                           |> filled brown
                           |> move (0, 37)
                         , polygon [(0,15),(0,0),(30,0)]
                           |> filled (rgb 0 206 100)
                           |> move (1, 30)
                         ]
                          |> scale 1.2
                          |> move (0,-10)
                         ]

        myBackground = square 200 |> filled pink
    in (("ExoticTurtle",myWord,"6"),("Apple","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "bear"
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group [circle 15
                             |> filled black,circle 5
                             |> filled brown
                             |> scale 2.25
                             |> scaleX 2.25
                             |> scaleY 2.25
                             ,wedge 10 0.5
                             |> filled brown
                             |> scale 1.5
                             |> rotate (degrees 140)
                             |> move (-14,14)
                             ,wedge 10 0.5
                             |> filled pink
                             |> scale 1
                             |> rotate (degrees -220)
                             |> move (-15,15)
                             ,wedge 10 0.5
                             |> filled brown
                             |> scale 1.5
                             |> rotate (degrees 37)
                             |> move (14,14)
                             ,wedge 10 0.5
                              |> filled pink
                              |> scale 1
                              |> rotate (degrees 37)
                              |> move (14,14)
                              ,circle 7
                              |> filled black
                              |> scale 0.5
                              |> rotate (degrees 30)
                              |> move (-13,7)
                              ,circle 7
                              |> filled black
                              |> scale 0.5
                              |> move (12,7)
                              ,oval 5 7
                              |> filled black,
                              wedge 7 0.5
                              |> filled black
                              |> scale 1.25
                              |> rotate (degrees 270)
                              |>move (0,-10)
                              ]
                              |> scale 1.4
                              ]















        myBackground = square 200 |> filled white
    in (("ExcellentTulip",myWord,"6"),("Bear","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "house" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group [square 10
                             |> filled red
                             |> rotate model.time
                         , graphPaper 10 |> makeTransparent 0.4

                         , square 10
                             |> filled (rgb 230 125 50)
                             |> scale 7
                             |> move (0,-45)
                         , triangle 10
                             |> filled darkBrown
                             |> scale 4
                             |> rotate (degrees 90)
                             |> move (0,10)
                          , rect 10 15
                             |> filled charcoal
                             |> scale 2
                             |> move (-10,-50)
                          , square 10
                             |> filled lightBlue
                             |> move (20,-30)

                         ]
                         |> scale 0.7
                         |> move (0, 10)




                         ]

        myBackground = square 200 |> filled green
    in (("ExcitingTurmeric",myWord,"6"),("house","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "ice cream" -- put your work here (in quotes) --
        myCode = 1979--
        myShapes model = [group [ triangle 10
          |> filled brown
          |> scale 2
          |> scaleX 2
          |> rotate (degrees 270)
          |> move (0,0)
         , circle 20
          |> filled blue
          |> move (1,20)
         , circle 5
          |> filled red
          |> move (1,40)
         , rect 5 5
          |> filled darkGreen
          |> scaleY 2
          |> move (1,50)
          ]
          |> move (0,-10)
          ]
    in (("JoyousCamel",myWord,"6"),("Ice cream","given to PedramMay2019",myShapes))

  ,    let
        myWord = "tent" -- put your work here (in quotes) --
        myCode = 1979 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group [ square 10
                             |> filled red
                             |> rotate model.time
                         ,triangle 10
                         |> filled (rgb 255 204 0)
                         |> scaleX 4.3
                         |> scaleY 4.1
                         |> rotate (degrees 90)
                         |> move (0,0)

                          ,rect 10 15
                         |> filled black
                         |> scaleX 0.1
                         |> scaleY 3


                          ,triangle 10
                         |> outlined (solid 1) black
                         |> scale 0.7
                         |> scaleX 4
                         |> scaleY 3
                         |> rotate (degrees 90)
                         |> move (0,-5)

                         ] |> move(0,-12)

                         ]

        myBackground = square 200 |> filled pink
    in (("WildMarigold",myWord,"6"),("tent","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "phone" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group [square 10
                             |> filled red
                             |> rotate model.time
                         , graphPaper 10 |> makeTransparent 0.4
                         , rect 10 15
                             |> filled white
                             |> scale 6.5
                             |> move (0,0)
                         , rect 10 15
                             |> filled black
                             |> scale 5.2
                             |> move (0,0)
                          , circle 10
                             |> filled black
                             |> scale 0.1
                             |> move (0,45)
                          , circle 10
                             |> filled black
                             |> scale 0.2
                             |> move (-15,42)
                          , oval 100 10
                             |> filled black
                             |> scale 0.2
                             |> move (0,40)
                          , circle 10
                             |> filled gray
                             |> scale 0.5
                             |> move (0,-45)
                          , square 10
                             |> filled red
                             |> scale 0.8
                             |> move (-20,30)
                          , square 10
                             |> filled red
                             |> scale 0.8
                             |> move (-10,30)
                          , square 10
                             |> filled red
                             |> scale 0.8
                             |> move (0,30)
                          , square 10
                             |> filled red
                             |> scale 0.8
                             |> move (10,30)
                          , square 10
                             |> filled red
                             |> scale 0.8
                             |> move (20,30)
                          , square 10
                             |> filled red
                             |> scale 0.8
                             |> move (-20,20)
                          , square 10
                             |> filled red
                             |> scale 0.8
                             |> move (-10,20)
                          , square 10
                             |> filled red
                             |> scale 0.8
                             |> move (0,20)
                          , square 10
                             |> filled red
                             |> scale 0.8
                             |> move (10,20)
                          , square 10
                             |> filled red
                             |> scale 0.8
                             |> move (20,20)
                           ]
                             |> scale 0.9
                             |> move (0,-5)








                        ]



        myBackground = square 200 |> filled green
    in (("ExcitingTurmeric",myWord,"6"),("a phone","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "rose" -- put your work here (in quotes) --
        myCode = 1979 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [
                         group
                         [ rect 10 15
                         |> filled green
                         |> scale 1
                         |> scaleY 4
                         |> rotate (degrees 10)
                         |> move (0,-30)
                         ,rect 10 15
                         |> filled green
                         |> scale 1
                         |> scaleY 2
                         |> move (-5,13)
                         ,
                         oval 10 15
                         |> filled darkGreen
                         |> scale 2
                         |> rotate (degrees -55)
                         |> move (-20,-20)
                         ,
                          oval 10 15
                         |> filled red
                         |> scale 3
                         |> move (0,25)
                         |> rotate (degrees 20)
                         ,
                          oval 10 15
                         |> filled darkRed
                         |> scale 3
                         |> move (-5,25)
                         ,
                          oval 10 15
                         |> filled lightRed
                         |> scale 3
                         |> rotate (degrees -10)
                         |> move (0,25)]
                          |> scale 0.8
                          |> move(2,5)
                         --, graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled pink
    in (("CalmOak",myWord,"6"),("rose","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "table" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group [rect 70 5
                             |> filled brown
                             |> rotate (degrees 0)
                         ,   rect 60 5
                              |> filled brown
                              |> rotate (degrees 90)
                              |> move (-30, -30)
                         ,   rect 60 5
                              |> filled brown
                              |> rotate (degrees 90)
                              |> move (30, -30)
                         ,   rect 5 25
                              |> filled brown
                              |> rotate (degrees -60)
                              |> move (-20, -6)
                         ,   rect 5 25
                              |> filled brown
                              |> rotate (degrees 60)
                              |> move (20, -6)
                         ]  |> move(0,25)

                         ]

        myBackground = square 200 |> filled white
    in (("DescriptivePlum",myWord,"6"),("table","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "cat" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        freckle = circle 1 --freckle
                   |> filled (rgb 185 123 45)

        myShapes model = [ group [ myBackground

                         ,
                           curve (-6,0) [Pull (2,-20) (23,0), Pull (16,-3) (9,-5), Pull (0,-9) (6,-6) ] --tail segment 1
                            |> filled (rgb 248 150 0)
                            |> scale 0.5
                            |> move (-25, -15)
                         ,
                          curve (-6,0) [Pull (2,11) (16,0), Pull (12,1) (4,3) ] --tail segment 2
                            |> filled (rgb 248 150 0)
                            |> scale 0.6
                            |> move (-35, -17)
                         ,
                           rect 10 4 --left upper arm
                            |> filled orange
                            |> rotate (degrees 5)
                            |> move (-21, -3)
                         ,
                           rect 10 4 --left lower arm
                            |> filled orange
                            |> rotate (degrees 30)
                            |> move (-27.5, -5)
                         ,
                           oval 10 5 --mitten hand
                            |> filled orange
                            |> rotate (degrees 20)
                            |> move (-35, -8)
                         ,
                           oval 3 2 --finger hand
                            |> filled orange
                            |> rotate (degrees 105)
                            |> move (-32, -10)
                         ,
                           curve (-12,0) [Pull (9,-9) (28,10), Pull (6,0) (0,0) ] --right hand elbow curve
                            |> filled orange
                            |> scale 0.3
                            |> rotate (degrees 185)
                            |> move (-23, -1.7)

                         , roundedRect 25 40 10 --body
                            |> filled orange
                            |> move (-4, -6)
                            |> rotate (degrees -6)
                         ,
                           roundedRect 23 27 10 --inner body
                            |> filled lightYellow
                            |> move (-4, -10)
                            |> rotate (degrees -6)
                         ,
                           rightTriangle 5 12 --right collar
                            |> filled lightBlue
                            |> rotate (degrees -80)
                            |> move (-2, -1.5)
                         ,
                           rightTriangle -5 12 --left collar
                            |> filled lightBlue
                            |> rotate (degrees 80)
                            |> move (-2, -1)
                         ,
                           triangle 10 --left ear
                            |> filled orange
                            |> move (-15, 40)
                         ,
                           triangle 6 --inner left ear
                            |> filled lightYellow
                            |> move (-15, 40)
                         ,
                           triangle 10 --right ear
                            |> filled orange
                            |> move (-15, -40)
                            |> rotate (degrees 180)
                         ,
                           triangle 6 --inner right ear
                            |> filled lightYellow
                            |> move (-15, -40)
                            |> rotate (degrees 180)
                         ,
                           oval 50 45 --head
                            |> filled orange
                            |> move (0, 20)
                         ,
                           rect 49 5 --eyepatch band
                            |> filled black
                            |> move (1.5, 23)
                            |> rotate (degrees 5)
                         ,
                           wedge 8 0.5 --eyepatch
                            |> filled black
                            |> rotate (degrees -85)
                            |> move (-10, 20)
                         ,
                            wedge 5 0.5 --outer right eye
                            |> filled black
                            |> rotate (degrees 90)
                            |> move (13, 15)
                         ,
                           circle 0.75 -- inner right eye
                            |> filled white
                            |> move (15, 17.5)
                         ,
                           circle 2 -- inner nose
                            |> filled darkGrey
                            |> move (2, 12)
                         ,
                           wedge 5 0.5 --mouth
                            |> filled black
                            |> rotate (degrees -90)
                            |> move (2, 11)
                         ,
                           oval 7 5 --left outer nose
                            |> filled lightYellow
                            |> move (-1, 11)
                         ,
                           oval 7 5 --right outer nose
                            |> filled lightYellow
                            |> move (5, 11)
                         ,
                           freckle --left 1
                            |> move (-10, 10)
                         ,
                           freckle --left 2
                            |> move (-8, 7)
                         ,
                           freckle --left 3
                            |> move (-12, 8)
                          ,
                           freckle --right 1
                            |> move (12, 10)
                         ,
                           freckle --right 2
                            |> move (10, 7)
                         ,
                           freckle --right 3
                            |> move (14, 8)
                         ,
                           circle 1 --spot on ear
                            |> filled blue
                            |> move (-20, 40)
                         ,
                           rect 10 4 --right upper arm
                            |> filled orange
                            |> move (12, -5)
                         ,
                           rect 10 4 --right lower arm
                            |> filled orange
                            |> rotate (degrees 15)
                            |> move (20, -3.8)
                         ,
                           oval 10 5 --mitten hand
                            |> filled orange
                            |> rotate (degrees 10)
                            |> move (25, -3)
                         ,
                           oval 4 2 --finger hand
                            |> filled orange
                            |> rotate (degrees 75)
                            |> move (25, 0)
                         ,
                           curve (-12,0) [Pull (9,-9) (28,10), Pull (6,0) (0,0) ] --right hand elbow curve
                            |> filled orange
                            |> scale 0.3
                            |> move (15, -6.2)
                         ]
                          |> scale 1.2
                          |> move (0,-15)
                           ]

        myBackground = square 200 |> filled blue
    in (("DisciplinedShark",myWord,"6"),("Kwazii","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "pen" -- put your work here (in quotes) --
        myCode = 1979 -- put your code number here, which came with your word (not in quotes) --

        myShapes mode1 = [
          group [ triangle 10
                            |> filled darkGray
                            |> scale 1
                            |> rotate (degrees 30)
                            |> move (0,-40)
                           ,triangle 10
                            |> filled black
                            |> scale 0.25
                            |> rotate (degrees 30)
                            |> move (0,-48)
                           ,rect 10 15
                            |> filled darkGray
                            |> scale 2
                            |> scaleY 3
                            |> move (0,10)
                           ,rect 10 15
                            |> filled black
                            |> scaleY 2
                            |> rotate (degrees -90)
                            |> move (0,45)
                           ,rect 10 5
                            |> filled black
                            |> scale 1.75
                            |> rotate (degrees -90)
                            |> move (15.7,32)
                           ,rect 10 5
                            |> filled black
                            |> scale 1.75
                            |> rotate (degrees -90)
                            |> move (15.7,20)
                  ]  |> scale 0.8
                     |> move(0,-3)
                  ]
        myBackground = square 200 |> filled pink
    in (("DapperPeach",myWord,"6"),("Pen","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "smile"
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group [ circle 25
                             |> filled yellow
                         , graphPaper 10 |> makeTransparent 0.4,oval 10 15
                             |> filled black
                             |> scale 0.5
                             |> move (-10,10),
                             oval 10 15
                             |> filled black
                             |> scale 0.5
                             |> move (10,10),
                             wedge 10 0.5
                             |> filled black
                             |> scale 1
                             |> rotate (degrees 270)
                             |> move (0,-5)
                             ]
                             |> scale 1.9
                             ]


















        myBackground = square 200 |> filled white
    in (("ExcellentTulip",myWord,"6"),("smile","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "right" -- put your work here (in quotes) --
        myCode = 1979 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group [rectangle 50 10
                             |> filled black
                         , rectangle 25 10
                             |> filled black
                             |> rotate (degrees -45)
                             |> move (20, 10)
                         , rectangle 25 10
                             |> filled black
                             |> rotate (degrees 45)
                             |> move (20, -10)
                            ] |> move(repeat 200 (model.time*20),0)
                         ]

        repeat l t = t - l * toFloat (round <| t / l)

        myBackground = square 200 |> filled pink
    in (("DisciplinedPoppy",myWord,"6"),("right arrow","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "jam" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model =
          [group [ roundedRect 30 95 5
          |> filled red
          |> scaleX 2
          |> rotate (degrees 0)
          |> move (0,-9)

                ,
         roundedRect 10 70 10
          |> filled lightBrown
          |> rotate (degrees 90)
          |> move (0,40)
          ,
          circle 30
          |> filled lightGray
          |> rotate (degrees 90)
          |> move (0,0)

           , curve (0,0) [Pull (23,40) (0,0), Pull (-17,42) (0,0), Pull (-59,0) (15,48) ]
          |> filled red
          |> scale 0.5
          |> rotate (degrees 200)



           ,curve (0,0) [Pull (23,40) (0,0), Pull (-17,42) (0,0), Pull (59,-4) (15,48) ]
          |> filled red
          |> scale 0.5
          |> rotate (degrees 205)
          ]
            |> scale 0.8
            ]
    in (("CalmPistachio",myWord,"6"),("Jam","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "cherry" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                        ,oval 10 55 |> filled darkGreen |> rotate (degrees -40) |> move (-14,6)
                        ,oval 10 65
          |> filled darkGreen
          |> rotate (degrees 30)
          |> move (20,0)
                        ,circle 20 |> filled darkRed |> move (30,-20)
                        ,circle 20 |> filled darkRed |> move (-20,-20)
                         ]

        myBackground = rect 100 100
                        |> filled green
    in (("VirtuousOak",myWord,"6"),("cherry","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "flag" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [flag
                                |>move (0,sin (model.time*10)*(10))
                                |> scale 1.5
                              ]

        myBackground  = rectangle 66 21 |> filled red




        flag = group [ myBackground
                          , rectangle 22 21|> filled white

                          , rectangle 22 21|> filled blue
                          |> move (-21.91,0)
                       ]









    in (("EcstaticStarfish",myWord,"6"),("flag","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "eye" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , oval 30 15
                            |> filled white
                            |> scale 3
                            |> rotate (degrees -180)
                         , circle 22
                            |> outlined (solid 2.5) black
                            |> rotate (degrees -180)
                         ,circle 28.7
                            |> filled hotPink
                            |> scale 0.75
                            |> rotate (degrees -180)
                         , circle 15
                            |> filled black
                            |> scale 0.25
                            |> rotate (degrees -180)
                         , graphPaper 0 |> makeTransparent 0
                         ]

        myBackground = square 200 |> filled darkCharcoal
    in (("DefiantPiranha",myWord,"6"),("Hot Pink Eye","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "swing" -- put your work here (in quotes) --
        myCode = 1979 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group
                             [ rect 3 40
                                 |> filled red
                                 |> move (0,-15)
                                , rect 20 15
                                 |> filled darkBrown
                                 |> scaleX 2
                                 |> move (0,-40)




                                                 ]
                             |> rotate (degrees (45 * sin model.time))
                             |> move(0,20)
                         ]

        myBackground = square 200 |> filled lightBlue
    in (("DarkPear",myWord,"6"),("swing","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "star" -- put your work here (in quotes) --
        myCode = 1979 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground


                         ,triangle 10
                         |> filled yellow
                         |> scale 1.5
                         |> rotate (degrees -510)
                         |> move (0,17)
                        ,triangle 10
                         |> filled yellow
                         |> scale 1.5
                         |> rotate (degrees -210)
                         |> move (0,-17)
                         ,triangle 10
                         |> filled yellow
                         |> scale 1.5
                         |> move (17,0)

                         ,triangle 10
                         |> filled yellow
                         |> scale 1.5
                         |> rotate (degrees -300)
                         |> move (-17,0)

                         ,square 10
                          |> filled yellow
                          |> scale 2
                          |> rotate (degrees -360)
                          |> move (0,0)]

        myBackground = square 200 |> filled darkBlue
    in (("DecisivePineapple",myWord,"6"),("star","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "crayon" -- put your work here (in quotes) "" --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model =
          [ crayon
              |> scale 0.6
          ]

        crayon = group [ roundedRect 3 15 5
                              |> filled lightPurple
                              |> scale 3
                              |> scaleX 3
                              |> scaleY 3
                         , rect 10 15
                              |> filled darkPurple
                              |> scale 1
                              |> scaleX 2.6
                              |> scaleY 8
                              |> makeTransparent 1
                              |> move (0, -15)
                         ]



        myBackground = square 0.10 |> filled white









    in (("FierceWren",myWord,"6"),("Crayon Incomplete","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "summer" -- put your work here (in quotes) --
        myCode =  1979-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [ circle 8
                          |> filled yellow
                          |> scale 2.75
                          |> scaleX 2.75
                          |> scaleY 2.75
                          ,circle 10
                          |> filled black
                          |> scaleX 1.5
                          |> scaleY 1.5
                          |> rotate (degrees -90)
                          |> move (30,20)
                          ,circle 10
                          |> filled black
                          |> scaleX 1.5
                          |> scaleY 1.5
                          |> rotate (degrees -90)
                          |> move (-30,20)

                          ,curve (0,0) [Pull (10,0) (20,-10)]
                          |> filled black
                          |> scaleX 3
                          |> scaleY 3
                          |> rotate (degrees -150)
                          |> move (40,-20)
                          ,rect 10 45
                          |> filled yellow
                          |> scaleX 2
                          |> scaleY 2
                          |> rotate (degrees -150)
                          |> move (40,-70)
                          ,rect 10 45
                          |> filled yellow
                          |> scaleX 2
                          |> scaleY 2
                          |> rotate (degrees -150)
                          |> move (10,-80)
                           ,rect 10 45
                          |> filled yellow
                          |> scaleX 2
                          |> scaleY 2
                          |> rotate (degrees 90)

                          |> move (50,-6)
                           ,rect 10 45
                          |> filled yellow
                          |> scaleX 2
                          |> scaleY 2
                          |> rotate (degrees -50)
                          |> move (70,30)
                          ,circle 10
                          |> filled black
                          |> scaleX 1.5
                          |> scaleY 1.5
                          |> rotate (degrees -90)
                          |> move (30,20)
                         , rect 10 45
                          |> filled yellow
                          |> scaleX 2
                          |> scaleY 2
                          |> rotate (degrees -50)
                          |> move (70,70)
                                           , rect 10 45
                          |> filled yellow
                          |> scaleX 2
                          |> scaleY 2
                          |> rotate (degrees 0)
                          |> move (6,70)
                                           , rect 10 45
                          |> filled yellow
                          |> scaleX 2
                          |> scaleY 2
                          |> rotate (degrees 50)
                          |> move (-70,70)
                          , rect 10 45
                          |> filled yellow
                          |> scaleX 2
                          |> scaleY 2
                          |> rotate (degrees 70)
                          |> move (-70,6)
                                           , rect 10 45
                          |> filled yellow
                          |> scaleX 2
                          |> scaleY 2
                          |> rotate (degrees 90)
                          |> move (-70,-30)
                                           , rect 10 45
                          |> filled yellow
                          |> scaleX 2
                          |> scaleY 2
                          |> rotate (degrees 120)
                          |> move (-60,-60)
                                           , rect 10 45
                          |> filled yellow
                          |> scaleX 2
                          |> scaleY 2
                          |> rotate (degrees -100)
                          |> move (90,-40)
                         ] |> scale 0.35
                           |> move(-3,0)

                         ]




    in (("DaringPeanut",myWord,"6"),("summer","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "dress" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground

          ,  wedge 10 0.5
          |> filled lightCharcoal
          |> scale 1.5
          |> rotate (degrees 90)
          |> move (15, 5)
          , wedge 10 0.5
          |> filled lightCharcoal
          |> scale 1.5
          |> rotate (degrees 90)
          |> move (-15, 5)
          , rect 3 55
          |> filled pink
          |> scale 1.1
          |> rotate (degrees 90)
          |> move (0, 3.5),
          polygon [(-5,0),(-17,-50),(69,-50),(55,0)]
          |> filled lightCharcoal
          |> move (-25, 1.7)


                         ]

        myBackground = square 200 |> filled white
    in (("EnthusiasticTomato",myWord,"6"),("dress","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "mother" -- put your work here (in quotes) --
        myCode = 1979 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group [
                        circle 20
                          |> filled yellow
                          |> scale 3

                      ,  roundedRect 20 15 5
                          |> filled black
                          |> scale 2
                          |> move (30, 30)
                      ,       roundedRect 20 15 5
                          |> filled black
                          |> scale 2
                          |> move (-30, 30)
                      ,
                        oval 20 15
                          |> filled white
                          |> scale 2
                          |> scaleX 2
                          |> move(0, -1)


                          ] |> scale 0.75

                          ]

        myBackground = square 200 |> filled pink
    in (("DistinctPorcupine",myWord,"6"),("mother","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "sofa" -- put your work here (in quotes) --
        myCode = 1979 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [

                         rect 10 20
          |> filled brown
          |> rotate (degrees 360)
          |> move (-30,-30)

                         , rect 10 20
          |> filled brown
          |> rotate (degrees 360)
          |> move (30,-30)

                         , square 10
          |> filled lightPurple
          |> scale 7
                         , rect 10 10
          |> filled black
          |> scale -2.75
          |> scaleX -2.75
          |> rotate (degrees 360)
          |> move (0,-20)

                         , rect 10 80
          |> filled black
          |> rotate (degrees 270)
          |> move (0,-10)

                         , oval 10 20
          |> filled purple
          |> scale 2.5
          |> move (30,-10)

                           , oval 10 20
          |> filled purple
          |> scale 2.5
          |> move (-30,-10)



                         ]
    in (("DynamicRabbit",myWord,"6"),("Sofa","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "nose" -- put your work here (in quotes) --
        myCode = 1979 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [group [   rect 100 15
                             |> filled lightOrange
                             |> scale 0.5
                             |> rotate (degrees -990)


                         ,   circle 100
                             |> filled lightOrange
                             |> scale 0.07
                             |> rotate (degrees -990)
                             |> move (8, -20)

                          ,   circle 100
                             |> filled lightOrange
                             |> scale 0.07
                             |> rotate (degrees -990)
                             |> move (-8, -20)

                              ,   circle 100
                             |> filled black
                             |> scale 0.04
                             |> rotate (degrees -990)
                             |> move (8, -20)

                              ,   circle 100
                             |> filled black
                             |> scale 0.04
                             |> rotate (degrees -990)
                             |> move (-8, -20)

                              ,    curve (0,0) [Pull (10,0) (20,-10)]
                             |> filled lightOrange
                             |> scale 1.75
                             |> rotate (degrees -1860)
                             |> move (2,25)

                              ,    curve (0,0) [Pull (10,0) (20,-10)]
                             |> filled lightOrange
                             |> scale 1.75
                             |> rotate (degrees -2040)
                             |> move (-2, -17)





                               ] |> scale 1.4

                        ]


    in (("DazzlingPigeon",myWord,"6"),("Nose","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "book" -- put your work here (in quotes) --

        myShapes model = [group [ myBackground
                         ,  roundedRect 50 90  5
                              |> filled red
                              |> move (10, 0)
                         ,  rect 15 90
                              |> filled black
                              |> move (-18,0)
                         ,  text "Science"
                              |> filled white
                              |> move (-7, 20)
                         ]
                         |> move (10,0)
                         ]

        myBackground = square 250
                            |> filled lightBrown
    in (("ExoticTurtle",myWord,"6"),("Book","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "snowman" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group [circle 10
                             |> filled white
                             |> rotate model.time
                             |> move (20,10)
                         , circle 5
                             |> filled white
                             |> scale 2.5
                             |> move (20,-6)
                         , circle 10
                             |> filled white
                             |> scale 1.6
                             |> move (20,-25)
                         , rect 6 15
                             |> filled lightBlue
                             |> scale 0.75
                             |> scaleY 1.75
                             |> rotate (degrees 90)
                             |> move (20,3)
                        ,  rect 3 9
                             |> filled lightBlue
                             |> scale 1.75
                             |> scaleY 1.75
                             |> rotate (degrees 0)
                             |> move (25,-11)
                        ,  rect 6 12
                             |> filled black
                             |> scaleY 1.75
                             |> move (20, -20)
                             |> rotate (degrees 90)
                        ,  rect 8 6
                             |> filled black
                             |> scale 1.75
                             |> scaleY 1.75
                             |> rotate (degrees 180)
                             |> move (20,32)
                        ]
                         |> scale 1.1

                         ]


        myBackground = square 200 |> filled darkBlue
    in (("GiantApple",myWord,"6"),("Snowman","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "river" -- put your work here (in quotes) --
        myCode = 1979 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ square 200 |> filled   lightGreen
                        ,  group [
                          roundedRect 10 15 5
                             |> filled lightBlue
                             |> scale 2
                             |> move (-30,-40)
                         ,
                           roundedRect 10 15 5
                             |> filled lightBlue
                             |> scale 2
                             |> move (-30,-20)
                         ,
                            curve (0,0) [Pull (10,0) (20,-10)]
                             |> filled lightBlue
                             |> scale 2
                             |> rotate (degrees -270)
                             |> move (-40,-15)
                         ,
                            curve (0,0) [Pull (10,0) (20,-10)]
                             |> filled lightBlue
                             |> scale 2
                             |> rotate (degrees -270)
                             |> move (-37,-15)
                         ,
                            curve (0,0) [Pull (10,0) (20,-10)]
                             |> filled lightBlue
                             |> scale 2
                             |> rotate (degrees -270)
                             |> move (-33,-15)
                         ,
                         curve (0,0) [Pull (10,0) (20,-10)]
                             |> filled lightBlue
                             |> scale 2
                             |> rotate (degrees -270)
                             |> move (-30,-15)
                         ,
                         curve (0,0) [Pull (10,0) (20,-10)]
                             |> filled lightBlue
                             |> scale 2
                             |> rotate (degrees -270)
                             |> move (-27,-15)
                         ,
                         curve (0,0) [Pull (10,0) (20,-10)]
                             |> filled lightBlue
                             |> scale 2
                             |> rotate (degrees -270)
                             |> move (-24,-17)
                         ,
                         roundedRect 10 15 50
                           |> filled lightBlue
                           |> scale 2
                           |> rotate (degrees -240)
                           |> move (-10,22)
                         ,
                         roundedRect 10 15 50
                           |> filled lightBlue
                           |> scale 2
                           |> rotate (degrees -240)
                           |> move (2,30)
                         ,
                         roundedRect 10 15 50
                           |> filled lightBlue
                           |> scale 2
                           |> rotate (degrees -210)
                           |> move (11,35)
                         ,
                         roundedRect 10 15 50
                           |> filled lightBlue
                           |> scale 2
                           |> rotate (degrees -210)
                           |> move (15,40)

                        ] |> move(10,0)
                         ]





























        myBackground = square 200 |> filled   lightGreen
    in (("CoolPanther",myWord,"6"),("river","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "pear" -- put your work here (in quotes) --
        myCode = 1979 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [circle 10
                             |> filled lightGreen
                             |> scale 2.5
                             |> rotate (degrees 30)
                             |> move (0,-5)
                         , oval 10 15
                             |> filled lightGreen
                             |> scale 2
                             |> move (0,15)
                         , oval 10 15
                             |> filled lightGreen
                             |> scale 2.25
                             |> rotate (degrees 30)
                             |> move (7.25,13)
                         , oval 10 15
                             |> filled lightGreen
                             |> scale 2.25
                             |> rotate (degrees 155)
                             |> move (-7.25,13)

                         , oval 10 15
                            |> filled darkBrown
                            |> scale 1.25
                            |> rotate (degrees 155)
                            |> move (5,33)

                             ] |> move(0,-7)

                             ]

        myBackground = square 200 |> filled pink
    in (("BusyNutmeg",myWord,"6"),("What about Green Pear","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "heat" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [group[square 80
          |> filled charcoal
          |> move (0,-40)
          , circle 10
          |> filled red
          |> move (30,20)
          |> makeTransparent 0.625
          , circle 10
          |> filled red
          |> move (0,30)
          |> makeTransparent 0.625
          , circle 10
          |> filled red
          |> move (-20,20)
          |> makeTransparent 0.625
          , square 30
          |> filled lightCharcoal
          |> move (0,-30)
          , rect 80 15
          |> filled lightCharcoal
          |> move (0,0)] |> scale 0.7
                         |> move(0,14)
          ]

        myBackground = square 200 |> filled pink
    in (("StrongLime",myWord,"6"),("heat Wordathon","given to PedramMay2019",myShapes))

  ,    let
        myWord = "car" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground

                        ,roundedRect 30 15 5
          |> filled yellow
          |> scale 2
          |> scaleX 1.5
          |> rotate (degrees 180)
                        , circle 15
          |> filled black
          |> move(-30,-25)
                        , circle 15
          |> filled black
          |> move(30,-25)
                        , circle 5
          |> filled grey
          |> move(-30,-25)
                        , circle 5
          |> filled grey
          |> move(30,-25)
                        ,
                        curve (0,0) [Pull (0,0) (91,-44), Pull (66,15) (0,0) ]
          |> filled lightBlue
          |> rotate (degrees 30)
          |> move (-50,6)
                        , rect 10 25
          |> filled darkYellow
          ]

        myBackground = square 200 |> filled pink
    in (("CooperativeRam",myWord,"6"),("Car","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "pig" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         ,group [ circle 30
                           |> filled pink
                         ,triangle 10
                           |> filled pink
                           |> rotate (degrees -342)
                           |> move (-23,24)
                         ,triangle 10
                          |> filled pink
                          |> rotate (degrees 168)
                          |> move (23,24)
                         , triangle 5
                           |> filled hotPink
                           |> rotate (degrees -342)
                           |> move (-23,24)
                         ,triangle 5
                          |> filled hotPink
                          |> rotate (degrees 168)
                          |> move (23,24)
                         ,oval 8 14
                          |> filled black
                          |> move (12,11)
                         ,oval 8 14
                          |> filled black
                          |> move (-12,11)
                         ,circle 10
                         |> outlined (solid 1) black
                         |> move (0,-6)
                         ,oval 4 9
                          |> filled black
                          |> move (-3,-6)
                         ,oval 4 9
                          |> filled black
                          |> move (3,-6)
                         ]
                           |> scale 1.2
                           |> move (0,-5)
                         ]

        myBackground = square 200 |> filled green
    in (("DiligentSesame",myWord,"6"),("Pig","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "winter" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         ,
                         circle 1
                         |> filled white
                         |>move (-30,15)
                         ,
                         circle 1
                         |> filled white
                         |> move (25, 10)
                         ,
                         circle 1
                         |> filled white
                         |> move (0,21)
                         ,
                         rect 14 100
                         |> filled white
                         |> rotate (degrees 90)
                         |> move (0,-43)
                         ,
                         circle 1
                         |> filled white
                         |> move (30, 15)
                         ,
                         circle 1
                         |> filled white
                         |> move (15, 30)
                         ,
                         circle 1
                         |> filled white
                         |> move (-2,-9)
                         ,
                         circle 8
                         |> filled white
                         |> move (5,-30)
                         ,
                         circle 6
                         |> filled white
                         |> move (5,-20)
                         ,
                         circle 4
                         |> filled white
                         |> move (5,-11)
                         ,
                         circle 1
                         |> filled white
                         |> move (-30,16)
                         ,
                         circle 1
                         |> filled white
                         |> move (-15,11)
                         ,
                         circle 1
                         |> filled white
                         |> move (-13,40)
                         ]

        myBackground = square 200 |> filled blue
    in (("BravePenguin",myWord,"6"),("Winter","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "kite" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         ,group [polygon [(-15,0),(0,-22),(15,0),(0,10)]
          |> filled pink
          |> move (0,25)
          |> scale 1.25
                        ,rect 1 38
          |> filled lightCharcoal
          |> move (0,23.5)
                        ,rect 38 1
          |> filled lightCharcoal
          |> move (0,30.51)
                        ,curve (0,0) [Pull (7,0) (25,-20)]
          |> filled lightCharcoal
          |> rotate (degrees 130)
          |> move (0.5,-23)
                         ]
                         |> scale 1.4
                         |> move (0,-16)
                         ]
        myBackground = square 200 |> filled white
    in (("FaithfulWasabi",myWord,"6"),("Kite","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "soda" -- put your work here (in quotes) --
        myCode = 1979 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [group[rect 10 15
                           |> filled darkGray
                           |> scale 1
                           |> scaleX 2
                           |> scaleY 2
                         , rect 10 15
                           |> filled darkPurple
                           |> scaleX 2
                           ,oval 10 15
                           |> filled lightPurple
                           |> scaleX 2
                           |> move (0,0)
                         , roundedRect 10 15 5
                           |> filled darkGray
                           |> rotate (degrees 70)
                           |> move (0,30)
                           |> scale 0.5





                  --, graphPaper 10 |> makeTransparent 0.4
                  ] |> scale 2.5
                    |> move(0,-3)
                  ]


        myBackground = square 200 |> filled white
    in (("ClumsyOtter",myWord,"6"),("Soda","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "snake"
        myCode = 1979 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [group [oval 10 15
                            |> filled green
                            |> rotate (degrees 30)
                        -- , graphPaper 10 |> makeTransparent 0.4
                         , oval 10 15
                            |> filled green
                            |> rotate (degrees 90)
                            |> move (18,-10)
                         , oval 10 15
                             |> filled green
                             |> rotate (degrees -40)
                             |> move (38,0)
                         , oval 10 15
                            |> filled green
                            |> rotate (degrees 60)
                            |> move (-6,7)
                         , oval 10 15
                            |> filled green
                            |> rotate (degrees 90)
                            |> move (-10,7)
                         , oval 10 15
                            |> filled green
                            |> rotate (degrees 160)
                            |> move (41,7)
                           , oval 10 15
                            |> filled green
                            |> rotate (degrees -40)
                            |> move (30,-5)
                          ,  oval 10 15
                               |> filled green
                               |> move (5,-10)
                               |> rotate (degrees 30)
                          , curve (0,0) [Pull (10,0) (20,-10)]
                              |> filled pink
                              |> scale 0.25
                              |> rotate (degrees 30)
                              |> move (-21,5)
                          , oval 10 15
                              |> filled black
                              |> scale 0.25
                              |> move (-10,10)

                              ] |> move(repeat 200 (-model.time*20),10*sin model.time)
                              ]

        repeat l t = t - l * toFloat (round <| t / l)

    in (("ComfortableOwl",myWord,"6"),("Snake","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "flower" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , rect 7 25
                              |> filled lightGreen
                              |> scale 2
                              |> move (0,-25)

                         , oval 20 35
                              |> filled lightGreen
                              |> scale 0.90
                              |> rotate (degrees -45)
                              |> move (10,-30)


                         , circle 30
                              |> filled lightYellow
                              |> scale 0.35

                         , triangle 20
                              |> filled hotPink
                              |> scale 0.5
                              |> move (15,0)

                         , triangle 20
                              |> filled hotPink
                              |> scale 0.5
                              |> rotate (degrees 60)
                              |> move (8,-12)

                          , triangle 20
                              |> filled hotPink
                              |> scale 0.5
                              |> rotate (degrees 55)
                              |> move (8,12)

                          , triangle 20
                              |> filled hotPink
                              |> scale 0.5
                              |> rotate (degrees 3)
                              |> move (-6,13)


                           , triangle 20
                              |> filled hotPink
                              |> scale 0.5
                              |> rotate (degrees 53)
                              |> move (-13,3)

                           , triangle 20
                              |> filled hotPink
                              |> scale 0.5
                              |> rotate (degrees 230)
                              |> move (-9,-10)
        {-
                          , flower
                              |> move (23,0)
        -}
                              ]
        myBackground = square 200 |> filled white

        flower = group [ rect 7 25
                              |> filled lightGreen
                              |> scale 2
                              |> move (0,-25)

                         , oval 20 35
                              |> filled lightGreen
                              |> scale 0.90
                              |> rotate (degrees -45)
                              |> move (10,-30)


                         , circle 30
                              |> filled lightYellow
                              |> scale 0.35

                         , triangle 20
                              |> filled hotPink
                              |> scale 0.5
                              |> move (15,0)

                         , triangle 20
                              |> filled hotPink
                              |> scale 0.5
                              |> rotate (degrees 60)
                              |> move (8,-12)

                          , triangle 20
                              |> filled hotPink
                              |> scale 0.5
                              |> rotate (degrees 55)
                              |> move (8,12)

                          , triangle 20
                              |> filled hotPink
                              |> scale 0.5
                              |> rotate (degrees 3)
                              |> move (-6,13)


                           , triangle 20
                              |> filled hotPink
                              |> scale 0.5
                              |> rotate (degrees 53)
                              |> move (-13,3)

                           , triangle 20
                              |> filled hotPink
                              |> scale 0.5
                              |> rotate (degrees 230)
                              |> move (-9,-10)


                              ]
    in (("FamousWhale",myWord,"6"),("Flower","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "bed" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group [rect 30 45
                          |> filled red
                          |> rotate (degrees 90)


                        , rect 5 30
                         |> filled white
                         |> rotate (degrees 0)
                         |> move (20,0)
                        , rect 10 12
                         |> filled blue
                         |> rotate (degrees 0)
                         |> move (17,7)
                          , rect 10 12
                         |> filled blue
                         |> rotate (degrees 0)
                         |> move (17,-7)
                          ]
                          |> scale 1.7
                          ]


        myBackground = square 200 |> filled brown


    in (("DynamicSparrow",myWord,"6"),("bed","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "crown" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                           ,
                             group [
                               rect 20 75
                             |> filled lightYellow
                             |> rotate (degrees 90)
                             |> move (5,2)


          , triangle 10
          |> filled darkYellow
          |> rotate (degrees -30)
          |> move (33,17)


          , oval 15 10
          |> filled darkBlue
          |> rotate (degrees 180)
          |> move (5,3)


          , triangle 10
          |> filled darkYellow
          |> rotate (degrees 450)
          |> move (5,17)



            , triangle 10
          |> filled darkYellow
          |> rotate (degrees 450)
          |> move (-23
          ,17)
          ]
          |> scale 1.2
          |> move (-7,-10)
          {-
           ,circle 20
          |> filled lightYellow
          |> rotate model.time
          |> move (40,47)

        -}
          ]

















        myBackground =  square 200 |> filled gray

    in (("ElegantTapir",myWord,"6"),("THE CROWN","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "moon"
        myCode = 0
        myShapes model = [ myBackground
                         , group [
                           circle 20
                          |> filled white
                          , circle 20
                          |> filled darkBlue
                          |> move (15,0)
                                ]
                         |> scale 1.7
                       ]

        myBackground = square 200 |> filled darkBlue
    in (("GenuineAnteater",myWord,"6"),("\"Moon\"","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "dress" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [
                         myBackground
                         ,group [triangle 40
          |> filled hotPink
          |> rotate (degrees -510)
          |> move (0,0)
          ,square 30
          |> filled hotPink
          |> rotate (degrees -450)
          |> move (0,30)
          ,square 20
          |> filled hotPink
          |> rotate (degrees -450)
          |> move (20,40)
          ,square 20
          |> filled hotPink
          |> rotate (degrees -450)
          |> move (-20,40)] |> move(0,-15)

          ]







        myBackground = square 200 |> filled yellow
    in (("SwiftLotus",myWord,"6"),("Dress","given to PedramMay2019",myShapes))

  ,    let
        myWord = "daughter" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [
                  circle 8
          |> filled lightBrown
          |> scale 2
          |> move (0,25)


          ,


          oval 27 47
          |> filled hotPink
          |> scale 1
          |> move (0,-11)

          ,

          roundedRect 70 100 5
          |> filled lightBrown
          |> scale 0.25
          |> scaleX 0.25
          |> move (13,-3)
          ,

          roundedRect 70 100 5
          |> filled lightBrown
          |> scale 0.25
          |> scaleX 0.25
          |> move (-14,-3)

          ,
          circle 40
          |> filled darkBlue
          |> scale 0.25
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 30)
          |> move (-5,30)

          ,
          circle 40
          |> filled darkBlue
          |> scale 0.25
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 30)
          |> move (5,30)

          ,
          curve (0,0) [Pull (10,0) (20,-10)]
          |> filled lightOrange
          |> move (-10,45)

          ,rect 10 5
          |> filled lightRed
          |> move (-0,20)
          ,
          triangle 2
          |> filled white
          |> rotate (degrees 30)
          |> move (-1,21)
          ,
          triangle 2
          |> filled white
          |> rotate (degrees 30)
          |> move (1,21)
          ,
          circle 3
          |> filled lightBrown
          |> rotate (degrees 30)
          |> move (-14,-15)
          ,
          circle 3
          |> filled lightBrown
          |> rotate (degrees 30)
          |> move (13,-15)
          ,
          rect 5 18
          |> filled lightBrown
          |> move (-10,-35)
          ,
           rect 5 18
          |> filled lightBrown
          |> move (10,-35)
          ,
          circle 3
          |> filled lightBrown
          |> rotate (degrees 30)
          |> move (13,-42)
          ,
            circle 3
          |> filled lightBrown
          |> rotate (degrees 30)
          |> move (-13,-42)

         ]






        myBackground = square 200 |> filled pink
    in (("StripedManna",myWord,"6"),("daughter","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "hat" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [square 10
                             |> filled red
                             |> rotate model.time

         , square 28.05
          |> filled black
         , oval 50 15
          |> filled black
          |> rotate (degrees 0)
          |> move (0,-10)
         , rect 29 5
          |> filled white
         , square 28.05
          |> filled black
          |> rotate (degrees 0)
          |> move (0,20)|> rotate (degrees 0)
          |> move (0,19)  |> move (0,-10)  |> move (0,-10)

          ] |> scale 1.5
          |> move(0,-10)

          ]

        myBackground = square 0 |> filled pink
    in (("WittyMyrrh",myWord,"6"),("hat","given to PedramMay2019",myShapes))

  ,    let
        myWord = "brush" -- put your work here (brush) --
        myCode = 0 -- put your code number here, which came with your word (brush) --

        myShapes model = [ myBackground
                         , group [square 10
                             |> filled red
                             |> rotate model.time
                         , graphPaper 10 |> makeTransparent 0.4
                         ,  rect 10 15
          |> filled black
          |> scale 2
          |> scaleY 2
          ,rect 10 15
          |> filled brown
          |> scaleY 2
          |> move (10,40)
          ,rect 10 15
          |> filled brown
          |> scaleY 2
          |> move (0,40)
          ,rect 10 15
          |> filled brown
          |> scaleY 2
          |> move (-10,40)
          ]
            |> move (0,-10)
                 ]

        myBackground = square 200 |> filled pink


    in (("SlowLily",myWord,"6"),("brush","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "blue" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group [wedge 50 0.875
                             |> filled lightBlue
                            |> rotate model.time
                     , curve (0,0) [Pull (10,0) (20,-10)]
          |> filled charcoal
          |> scaleX 2
          |> scaleY 2
          |> rotate model.time ]
           |> scale 0.8
                         ]

        myBackground = square 200 |> filled blue
    in (("DapperPoppy",myWord,"6"),("BLUE!!","given to PedramMay2019",myShapes))

  ,    let
        myWord = "fireman" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground


                         , group [circle 10
                         |> filled darkBrown
                         |> scale 2
                         |> move (0,25)
                            , wedge 20 0.50
                        |> filled darkYellow
                        |> rotate (degrees 90)
                        |> move (0,30)
                        , rect 45 30
                        |> filled red
                        |> rotate (degrees -270)
                        |> move (0,-17)
                      ,           rect 20 5
          |> filled white
          |> rotate (degrees -180)
          |> move (0,-37)
                      , rect 40 5
                        |> filled lightYellow
                        |> rotate (degrees -450)
                        |> move (10,-59)

                      , rect 40 5
                        |> filled lightYellow
                        |> rotate (degrees -450)
                        |> move (-10,-59)
                      , circle 3
          |> filled black
          |> move (-8,22)
                        , circle 3
          |> filled black
          |> move (8,22)
         ]
         |> scale 0.7
         |> move (0,10)
         ]

        myBackground = square 200 |> filled green

    in (("VictoriousNutmeg",myWord,"6"),("fireman","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "wrench" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [ square 400
          |> filled white
              , ngon 6 10
          |> filled gray
          |> scale 3
          , roundedRect 10 35 5
          |> filled gray
          |> scale 3
          |> move (0,-50)
          , triangle 10
          |> filled white
          |> scale 1.8
          |> rotate (degrees 30)
          |> move (0,16)
          , ngon 7 25
          |> filled darkGray
          |> scale -0.25
          |> rotate (degrees 55)
          |> move (0,-40)
                         ]
                         |> scale 0.7
                         |> move (0,25)
                         ]

        myBackground = square 200 |> filled pink
    in (("ZealousPanda",myWord,"6"),("wrench","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "rose" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [curve (0,0) [Pull (10,0) (20,-10)]
          |> outlined (solid 1) darkGreen
          |> rotate (degrees -60)
          ,ngon 5 10
          |> filled red
          |> rotate (degrees -60)
          ]
    in (("ElegantSesame",myWord,"6"),("rose","given to PedramMay2019",myShapes))

  ,    let
        myWord = "gate" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group [circle 10
          |> filled lightYellow
          |> scaleX 2
          |> scaleY 2
          |> move (40,50)
                         , rect 10 105
          |> filled black
          |> scaleY 2
                         , rect 10 100
          |> filled black
          |> scaleY 2
          |> move (-30,50)
                         , rect 10 100
          |> filled black
          |> scaleY 2
          |> move (30,50)
                         ,rect 10 100
          |> filled green
          |> scaleY 2
          |> rotate (degrees -90)
          |> move (10,-50)
          ]
          |> scale 0.9


                         ]
        myBackground= rect 100 100 |> filled lightBlue

    in (("AncientParsley",myWord,"6"),("Gate","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "baseball" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group [ circle 50
          |> filled white

             , rect 10 65
          |> filled red
          |> rotate (degrees -180)

            , curve (-46,0) [Pull (0,-46) (47,25) ]
          |> outlined (solid 2.5)  red
          |> rotate (degrees 60)
          |> scale 0.5
          |> move (-40,0)
            , curve (-46,0) [Pull (0,-46) (47,25) ]
          |> outlined (solid 2.5)  red
          |> rotate (degrees 180)
          |> scale 0.5
          |> move (-0,-40)
          , curve (-46,0) [Pull (0,-46) (47,25) ]
          |> outlined (solid 2.5)  red
          |> rotate (degrees 240)
          |> scale 0.5
          |> move (40,0)

          , curve (-46,0) [Pull (0,-46) (47,25) ]
          |> outlined (solid 2.5)  red
          |> rotate (degrees 360)
          |> scale 0.5
          |> move (0,40)
          ]
           |> scale 0.8
             ]



        myBackground = square 200 |> filled blue


    in (("SmartLime",myWord,"6"),("baseball","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "bead" -- put your work here (in quotes) --
        myCode = 1979 -- put your code number here, which came with your word (not in quotes) --                 ,|>

        myShapes model = [ myBackground
                         , group [circle 20
          |> filled lightPurple
                       , oval 10 13
          |> filled purple
          |> rotate (degrees -490)
          |> move (7,10)
                        , rect 55 1
          |> filled black
          |> rotate (degrees -130)
          |> move (20,30)
         , rect 45 1
          |> filled black
          |> rotate (degrees -130)
          |> move (-30,-30)] |> scale 0.9

                        -- , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled lightOrange
    in (("AnimatedMushroom",myWord,"6"),("bead","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "rose" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [wedge 39 0.50
          |> filled darkRed
          |> rotate (degrees -90)
          |> move (0,25)
          , circle 20
          |> filled red
          |> scaleX 2
          |> move (0,21)
          ,rect 70 15
          |> filled green
          |> rotate (degrees -90)
          |> move (0,-48)
          , circle 20
          |> filled green
          |> scaleY 1.7
          |> rotate (degrees -240)
          |> move (15,-20)]
    in (("ShyGiraffe",myWord,"6"),("rose","given to PedramMay2019",myShapes))

  ,    let
        myWord = "throne" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [ roundedRect 30 38 5
          |> filled darkYellow
          , roundedRect 20 25 5
          |> filled darkYellow
          |> rotate (degrees -90)
          |> move (0,-20)
          , roundedRect 22 27 5
          |> filled red
          , roundedRect 15 20 5
          |> filled red
          |> rotate (degrees -90)
          |> move (0,-20)
          , roundedRect 10 15 5
          |> filled darkYellow
          |> move (10,-10)
          , roundedRect 10 15 5
          |> filled darkYellow
          |> move (-10,-10)
          , rect 5 10
          |> filled black
          |> move (-12,-30)
          , rect 5 10
          |> filled black
          |> move (12,-30)
          , isosceles 5 10
          |> filled black
          |> move (-10,18)
          , isosceles 5 10
          |> filled black
          |> move (0,18)
          , isosceles 5 10
          |> filled black
          |> move (10,18)
          , circle 4
          |> filled darkYellow
          |> move (-10,28)
          , circle 4
          |> filled darkYellow
          |> move (0,28)
          , circle 4
          |> filled darkYellow
          |> move (10,28)
                         ]
                         |> scale 1.3
                         ]

        myBackground = square 200 |> filled pink
    in (("SteadyMandrake",myWord,"6"),("Throne","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "key" -- put your work here (in quotes) --
        myCode = 1979 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         ,group [circle 15
          |> outlined (solid 7) lightYellow
          |> move (-25,25)
          ,rect 6 45
          |> filled lightYellow
          |> rotate (degrees 25)
          |> move (-10,-10)
          ,rect 6 30
          |> filled lightYellow
          |> rotate (degrees 115)
          |> move (12,-18)
          ] |> move(10,-10)


                         ]

        myBackground = square 200 |> filled darkBlue
    in (("ArrogantMuskmelon",myWord,"6"),("key","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "cannon" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , circle 8
                             |> filled red
                             |> rotate model.time


                        , rectangle 10 30
                            |> filled black
                            |> scale 2
                            |> rotate (degrees 90)
                            |> move (-15,0)

                         , square 20
                            |> filled darkBrown
                            |> move (-30,-10)

                         , circle 8
                            |> filled darkGray
                            |> move (-35,-20)

                         , square 10
                            |> filled darkBrown
                            |> scale 2
                            |> move (-10,-10)

                          , circle 8
                            |> filled darkGray
                            |> move (-5,-20)

                           , rect 5 7
                             |> filled darkBrown
                             |> scaleY 2
                             |> move (-40,10)

                           , triangle 8
                             |> filled lightRed
                             |> rotate (degrees 330)
                             |> move (-40,20)

                           ,  circle 10
                             |> filled black
                             |> move (30,0)

                           , circle 7
                             |> filled darkCharcoal
                             |> move (18,15)

                           , circle 10
                             |> filled darkCharcoal
                             |> move (24,30)


                         ]

        myBackground = square 200 |> filled pink
    in (("SpontaneousMallard",myWord,"6"),("Really bad cannon","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "pancake" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group [circle 45
          |> filled white
                           , circle 43
          |> filled lightBrown, oval 30 10
          |> filled darkBrown
          |> move (-10,20), oval 30 10
          |> filled darkBrown
          |> move (0,-30),oval 30 10
          |> filled darkBrown
          |> rotate (degrees 90)
          |> move (20,-10),oval 30 10
          |> filled darkBrown
          |> rotate (degrees -60)
          |> move (20,20),  square 13
          |> filled white
                             |> rotate model.time
                        ] |> scale 0.9
                         ]

        myBackground = square 200 |> filled pink
    in (("ThoughtfulMoss",myWord,"6"),("Pancake","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "turtle" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [turtle
                            |> move (sin (model.time*10)*20 +17, 0)
                           -- |> rotate model.time




                         ]


        turtle= group [  oval 10 15
          |> filled darkGreen
          |> rotate (degrees 30)
          |> move (1,-30)
          , oval 10 15
          |> filled darkGreen
          |> rotate (degrees 150)
          |> move (-40,-30)
          , oval 45 50
          |> filled darkBrown
          |> move (-20,-10)
          ,oval 25 30
          |> filled green
          |> move (-20,20)
          , circle 4
          |> filled black
          |> move (-15,25)
          , circle 4
          |> filled black
          |> move (-25,25)
          , wedge 5 0.5
          |> filled black
          |> rotate (degrees -90)
          |> move (-20,20)
          , oval 10 15
          |> filled darkGreen
          |> rotate (degrees -120)
          |> move (-40,0)
          , oval 10 15
          |> filled darkGreen
          |> rotate (degrees -60)
          |> move (0,0)
                ]
    in (("SteadyMandrake",myWord,"6"),("Turtle","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "bee" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [ body |> move (2,0),
          circle 15
          |> filled yellow
          |> move (-10,25)
          ,triangle 10
          |> filled black
          |> scaleX 0.75
          |> scaleY 0.75
          |> rotate (degrees -300)
          |> move (10,-15),
         roundedRect 10 45 15
          |> filled black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees -510)
          |> move (-16,24),
           roundedRect 10 45 15
          |> filled black
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees -510)
          |> move (-5.6,30)
          ]
           |> scale 1.3
           |> move (0,-10)

                         ]

        body= group [ circle 15
                             |> filled yellow
                             |> move (0,0)
                        ,curve (0,0) [Pull (10,0) (20,-10)]
                             |> outlined (solid 3.3) black
                            |> scaleX 0.75
                            |> scaleY 0.75
                            |> rotate (degrees -485)
                            |> move (2.5,15.5)
                        ,curve (0,0) [Pull (10,0) (20,-10)]
                           |> outlined (solid 3.3) black
                          |> scaleX 1.25
                          |> scaleY 1.25
                          |> rotate (degrees -485)
                          |> move (13.5,5)]


        myBackground = square 200 |> filled lightBlue
    in (("FantasticToad",myWord,"6"),("honey bee","given to PedramMay2019",myShapes))

  ,    let
        myWord = "panda" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model =[ square 10
          |> filled gray
          |> scale 100
          |> scaleX 100
          |> scaleY 100
          ,circle 10
          |> filled black
          |> scaleX 1.6
          |> scaleY 1.6
          |> rotate (degrees 30)
          |> move (35,33)
          ,circle 10
          |> filled black
          |> scaleX 1.6
          |> scaleY 1.6
          |> rotate (degrees 30)
          |> move (-35,33)
          ,circle 10
          |> filled white
          |> scale 2
          |> scaleX 2
          |> scaleY 2
          ,roundedRect 10 15 5
          |> filled black
          |> scale 1
          |> scaleX 1.5
          |> scaleY 2
          |> rotate (degrees 30)
          |> move (20,7)
          ,roundedRect 10 15 5
          |> filled black
          |> scale 1
          |> scaleX 1.5
          |> scaleY 2
          |> rotate (degrees -30)
          |> move (-20,7)
          ,wedge 10 0.5
          |> filled black
          |> scale 1
          |> scaleX 1.5
          |> rotate (degrees 270)
          |> move (0,-4)
          ,roundedRect 10 15 5
          |> filled black
          |> scale 0.5
          |> scaleY 2
          |> rotate (degrees 0)
          |> move (0,-18)
          ,circle 10
          |> filled (rgb 35 35 35)
          |> scale 0.5
          |> move (18,10)
          ,circle 10
          |> filled (rgb 35 35 35)
          |> scale 0.5
          |> move (-18,10)
          ,roundedRect 10 15 5
          |> filled black
          |> scale 0.4
          |> scaleY 2
          |> rotate (degrees 39)
          |> move (3,-27)
          ,roundedRect 10 15 5
          |> filled black
          |> scale 0.4
          |> scaleY 2
          |> rotate (degrees -39)
          |> move (-3,-27)
          ,wedge 10 0.5
          |> filled (rgb 35 35 35)
          |> scale 0.3
          |> rotate (degrees 230)
          |> move (-4,-8)
          ,wedge 10 0.5
          |> filled (rgb 35 35 35)
          |> scale 0.3
          |> rotate (degrees -410)
          |> move (4,-8)
          {-
          ,text "I am a Panda"
          |> filled black
          |> scale 1
          |> move (-50,-48)
          -}


          ]

    in (("ZealousBanana",myWord,"6"),("Panda, Panda, Panda, Panda, Panda, Panda, Panda","given to StLuke",myShapes))

  ,    let
        myWord = "pacman" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [  group [ myBackground
                         , circle 7
                             |> filled black
                             |> move (-30,0)
                         , pacman
                             |> move (sin model.time*(-15),0)
                             |> rotate (degrees(sin (5*model.time)*10))

                            ,circle 7
                             |> filled black
                             |> move (-45,0) ] |> scale 0.9

                             ]

        pacman= group [wedge 15 0.75
                      |> filled lightYellow
                     ,circle 2
                      |> filled black
                      |> move (-2,9)






                      ]

        myBackground = square 200 |> filled lightBlue


    in (("HealthyBulrush",myWord,"6"),("pacman","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "white tiger" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --
        myShapes model = [ group [ circle 20
          |> filled grey
          |> scale 2
          |> move (1,-8),
           circle 5
          |> filled black
          |> rotate (degrees -90)
          |> move (-13,8) ,
            circle 5
          |> filled black
          |> rotate (degrees -90)
          |> move (13,8) ,
           triangle 13
          |> filled grey
          |> scaleX 2
          |>rotate (degrees 90)
          |> move (-15,30) ,
           triangle 13
          |> filled grey
          |> scaleX 2
          |>rotate (degrees 90)
          |> move (15,30) ,
          oval 7 5
          |> filled (rgb 50 150 200)
          |> rotate (degrees -90)
          |> move (13,8) ,
          oval 7 5
          |> filled (rgb 50 150 200)
          |> rotate (degrees -90)
          |> move (-13,8) ,
          triangle 5
          |> filled black
          |> rotate (degrees -90)
          |> move (1,-3) ,
          upperTeeth
           |> move (0,sin(10*model.time)),
          lowerTeeth
             |> move (0,sin(-10*model.time)),
          polygon [(0,22),(-15,25),(35,10)]
          |> filled white
          |> move (-40,-15)
          |> rotate (degrees 10) ,
           polygon [(0,22),(-15,25),(35,10)]
          |> filled white
          |> move (-40,-15)
          |> rotate (degrees 20) ,
           polygon [(0,22),(-15,25),(35,10)]
          |> filled white
          |> move (-40,-15)
          |> rotate (degrees 30) ,
           polygon [(0,22),(-15,25),(35,10)]
          |> filled white
          |> move (18,-32)
          |> rotate (degrees 25) ,
           polygon [(0,22),(-20,27),(35,10)]
          |> filled white
          |> move (18,-32)
          |> rotate (degrees 25) ,
           polygon [(0,22),(-20,27),(35,10)]
          |> filled white
          |> move (18,-34)
          |> rotate (degrees 20) ,
           polygon [(0,22),(-20,27),(35,10)]
          |> filled white
          |> move (18,-36)
          |> rotate (degrees 13)
          ]
           |> scale 0.9
           |> move (0,-5)






          ]




        upperTeeth = group [   triangle 5
          |> filled white
          |> rotate (degrees -90)
          |> move (2,-15) ,
          triangle 5
          |> filled white
          |> rotate (degrees -90)
          |> move (7,-15) ,
          triangle 5
          |> filled white
          |> rotate (degrees -90)
          |> move (-4,-15)]

        lowerTeeth = group [   triangle 5
          |> filled white
          |> rotate (degrees -30)
          |> move (2,-30),
           triangle 5
          |> filled white
          |> rotate (degrees -30)
          |> move (7,-30) ,
           triangle 5
          |> filled white
          |> rotate (degrees -30)
          |> move (-3,-30)
          ]





    in (("GleamingWren",myWord,"6"),("White Tiger","given to PedramMay2019",myShapes))

  ,    let
        myWord = "zebra" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         ,square 1000


          |> filled darkBlue

                    ,roundedRect 45 60 25
                    |> filled white

                ,roundedRect 3 35 5
          |> filled black
          |> rotate (degrees -90)
          |> move (0,20)
           ,roundedRect 3 42 5
          |> filled black
          |> rotate (degrees -90)
          |> move (0,10)

           ,roundedRect 3 46 5
          |> filled black
          |> rotate (degrees -90)
          |> move (0,0)

          ,roundedRect 3 46 5
          |> filled black
          |> rotate (degrees -90)
          |> move (0,-10)

          ,roundedRect 3 35 5
          |> filled black
          |> rotate (degrees -90)
          |> move (0,-20)



                    ,circle 6.5
          |> filled white
          |> rotate (degrees -90)
          |> move (8,15)
                    ,circle 6.5
          |> filled white
          |> rotate (degrees -90)
          |> move (-8,15)

          ,circle 4.5
          |> filled blue
          |> rotate (degrees -90)
          |> move (-8,15)

                   ,circle 4.5
          |> filled blue
          |> rotate (degrees -90)
          |> move (8,15)

            ,circle 3
          |> filled black
          |> rotate (degrees -90)
          |> move (8,15)

          ,circle 3
          |> filled black
          |> rotate (degrees -90)
          |> move (-8,15)

                  ,triangle 10
          |> filled black
          |> rotate (degrees 260)
          |> move (0,-5)

           ,oval 10 20

          |> filled (rgb 0 0 0)
          |> move (8,35)



              ,oval 10 20

          |> filled (rgb 0 0 0)
          |> move (-8,35)


                        ]
        myBackground = square 200 |> filled white


    in (("GoodAardvark",myWord,"6"),("Zebra","given to PedramMay2019",myShapes))

  ,    let
        myWord = "pizza" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [circle 40
          |> filled lightOrange
          |> rotate (degrees -270)
          |> move (0,0)
          ,circle 30
          |> filled red
          |> rotate (degrees -270)
          |> move (0,0)
          ,circle 30
          |> filled yellow
          |> rotate (degrees -270)
          |> move (0,0)
          ,circle 10
          |> filled red
          |> rotate (degrees -270)
          |> move (0,0)
          ,circle 10
          |> filled red
          |> rotate (degrees -270)
          |> move (-20,0)
          ,circle 10
          |> filled red
          |> rotate (degrees -270)
          |> move (20,0)
          ,triangle 10
          |> filled lightYellow
          |> rotate (degrees -270)
          |> move (20,20)
          ,triangle 10
          |> filled lightYellow
          |> rotate (degrees -270)
          |> move (0,20)
          ,triangle 10
          |> filled lightYellow
          |> rotate (degrees -270)
          |> move (-20,20)
          ,roundedRect 10 15 0
          |> filled lightGreen
          |> rotate (degrees -270)
          |> move (20,-20)
          ,roundedRect 10 15 0
          |> filled lightGreen
          |> rotate (degrees -270)
          |> move (0,-20)
          ]

    in (("SillyGrape",myWord,"6"),("Tree tall","given to PedramMay2019",myShapes))

  ,    let
        myWord = "lion" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --






        myShapes model = [ myBackground

                         ]

        myBackground = group [
                        circle 20
                      |> filled black
                      |> move (-30,20)
                      , circle 20
                      |> filled black
                      |> move (30,20)
                       ,square 100
                       |> filled gray
                       , wedge 30 0.85
                       |> filled white
                       |> rotate (degrees 90)
                      , wedge 30 0.75
                       |> filled black
                       |> rotate (degrees -90)
                       , circle 15
                      |> filled black
                      |> move (-30,20)
                      , circle 15
                      |> filled black
                      |> move (30,20)
                       , triangle 20
                       |> filled black
                       |> rotate (degrees -30)
                       , curve (10,10)
                       [Pull (10,0) (20,-10)]
                       |> filled white
                       |> rotate (degrees 140)
                       |> move (20,-24)
                       , circle 5
                       |> filled gray
                       |> move (0,-7)
                        , circle 5
                       |> filled gray
                       |> move (5,-15)
                         , circle 5
                       |> filled gray
                       |> move (-5,-15)

                        , oval 5 10
                       |> filled black
                       |> move (-10,-5)
                       |> rotate (degrees 45)
                        , oval 5 10
                       |> filled black
                       |> move (10,-5)
                       |> rotate (degrees 315)
                         , curve (10,5)
                       [Pull (10,0) (20,-10)]
                       |> filled white
                       |> rotate (degrees 15)
                       |> move (-7,-7)
                       , curve (10,5)
                       [Pull (10,0) (20,-10)]
                       |> filled white
                       |> rotate (degrees 110)
                       |> move (-5,-20)
                       , curve (10,10)
                       [Pull (10,0) (20,-10)]
                       |> filled white
                       |> rotate (degrees -10)
                       |> move (-25,-12)
                      , circle 7
                       |> filled green
                       |> move (13,10)
                      , circle 7
                       |> filled green
                       |> move (-13,10)
                       , circle 2
                       |> filled black
                       |> move (13,10)
                       , circle 2
                       |> filled black
                       |> move (-13, 10)




                       ]
    in (("HissingBarley",myWord,"6"),("lion","given to PedramMay2019",myShapes))

  ,    let
        myWord = "alarm" -- put your work here (in quotes) --
        myCode = 1979 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , graphPaper 10 |> makeTransparent 0.4
                         ,
                          circle 10
                            |> outlined (solid 2) (rgb 253 12 12)
                            |> scale 1.60
                            |> scaleX 1.60
                            |> scaleY 1.60


                          ,wedge 10 0.5
                            |> filled (rgb 253 12 12)
                            |> scale 1.4
                            |> scaleX 1.2
                            |> scaleY 1.2
                            |> rotate (degrees -270)
                            |> move (0,-40)



                           , rect 10 35
                              |> filled  (rgb 253 12 12)
                              |> scale 0.75
                              |> scaleX 0.75
                              |> scaleY 0.75
                              |> rotate (degrees -240)
                              |> move (10,5)


                            ,rect 10 35
                              |> filled (rgb 253 12 12)
                              |> scale 0.75
                              |> scaleX 0.75
                              |> scaleY 0.75
                              |> rotate (degrees -450)
                              |> move (-10,-0)



                              ,circle 10
                                |> filled (rgb 253 12 12)
                                |> scale 0.7
                                |> scaleX 0.7
                                |> scaleY 0.7
                                |> rotate (degrees -450)
                                |> move (0,0)


                              ,rect 10 35
                                |> filled lightYellow
                                |> scale 0.75
                                |> scaleX 0.75
                                |> scaleY 0.75
                                |> rotate (degrees -570)
                                |> move (20,30)


                              ,rect 10 35
                                |> filled lightYellow
                                |> scale 0.75
                                |> scaleX 0.75
                                |> scaleY 0.75
                                |> rotate (degrees -870)
                                |> move (-20,30)


                                      ,wedge 10 0.5
                                        |> filled lightYellow
                                        |> scale 1.10
                                        |> scaleX 1.10
                                        |> scaleY 1.10
                                        |> rotate (degrees -600)
                                        |> move (-20,30)


                              ,wedge 10 0.5
                                |> filled lightYellow
                                |> scale 1.10
                                |> scaleX 1.10
                                |> scaleY 1.10
                                |> rotate (degrees -660)
                                |> move (20,30)

                                ]
        myBackground = square 200 |> filled pink
    in (("WoebegoneMimosa",myWord,"6"),("alarm","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "river" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         ,rect 100 50
                        |> filled darkGreen
                        |> move (0,-27)
                         ,rect 100 23
                        |> filled darkBlue
                        |> move (0,-25)
                         ,wedge 13 0.5
                        |> filled grey
                        |> rotate (degrees -90)
                        |> move(0,-22)
                        ,roundedRect 10 25 5
                        |> filled grey
                        |> move (0,-18)
                         ,triangle 10
                        |> filled lightYellow
                        |> move (0,-10)
                        ,triangle 6
                        |> filled yellow
                        |> move (0,-10)
                        ,triangle 4
                        |> filled darkYellow
                        |> move (0,-10)
                        ]

        myBackground = square 200 |> filled lightBlue
    in (("HilariousBanana",myWord,"6"),("River","given to PedramMay2019",myShapes))

  ,    let
        myWord = "mushroom" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                          ,

           square 30
          |> filled lightBlue
          |> scaleX 1

          , wedge 10 0.5
          |> filled brown
          |> scaleX 2.25
          |> scaleY 2.25
          |> rotate (degrees 90)
          ]




        myBackground = square 200 |> filled white

    in (("HushedBeaver",myWord,"6"),("Mushroom","given to PedramMay2019",myShapes))

  ,    let
        myWord = "chicken" -- put your work here (in quotes) --
        myCode = 1979 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group [circle 10
                             |> filled brown
                             |> move (-20,20)
                         , circle 20
                             |> filled brown
                         , triangle 5
                             |> filled yellow
                             |> move (-33,-17)
                             |> rotate (degrees -60)
                         , circle 1.5
                             |> filled black
                             |> move (-23,23.7)
                         , oval 3.5 5
                             |> filled red
                             |> move (-23,33)
                             |> rotate (degrees 10)
                         , oval 3.5 5
                             |> filled red
                             |> move (-20,34)
                             |> rotate (degrees 10)
                         , oval 3.5 5
                             |> filled red
                             |> move (-17,34.5)
                             |> rotate (degrees 10)
                         , oval 3.5 5
                             |> filled red
                             |> move (-15,34.1)
                             |> rotate (degrees 8)
                         , oval 17 10
                             |> filled darkBrown
                             |> rotate (degrees -10)
                         , rectangle 3 10
                             |> filled yellow
                             |> move (3,-25)
                         , oval 11 4
                             |> filled yellow
                             |> move (0,-30)
                         , triangle 1.5
                             |> filled white
                             |> move (-29,-10)
                             |> rotate (degrees 60)
                         ]
                           |> scale 1.3
                           |> move (0,-5)
                         ]

                         --, gr|>aphPaper 10 |> makeTransparent 0.4


        myBackground = square 200 |> filled green
    in (("AdventurousMoose",myWord,"6"),("chicken","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "top of stove" -- put your work here (in quotes) --
        myCode = 1979 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , square 10
                             |> filled red
                         , triangle 10
                             |> filled yellow
                             |> scale 1.5
                             |> rotate (degrees 90)

                         , square 20
                             |> filled black
                             |> scale 3
                             |> rotate (degrees 90)

                         , circle 5
                             |> filled lightCharcoal
                             |> scale 2
                             |> rotate (degrees 90)
                             |> move (-15,15)

                         , circle 5
                             |> filled lightCharcoal
                             |> scale 1.5
                             |> rotate (degrees 90)
                             |> move (15,15)

                         , circle 4.7
                             |> filled lightCharcoal
                             |> scale 1.5
                             |> rotate (degrees 90)
                             |> move (-15,-15)

                         , circle 5
                             |> filled lightCharcoal
                             |> scale 2
                             |> rotate (degrees 90)
                             |> move (15,-15)



                         , graphPaper 10 |> makeTransparent 0.4

                         ]


        myBackground = square 200 |> filled pink
    in (("CarefreeOats",myWord,"6"),("Stove top","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "cat" -- put your work here (in quotes) --
        myCode = 1979 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [              circle 45
                             |> filled darkGray
                             |> move (5,5)
                         , triangle 30
                             |> filled darkGray
                             |> move (45,-10)
                             |> rotate (degrees -210)
                         , triangle 30
                             |> filled darkGray
                             |> move (-20,50)
                             |> rotate (degrees -780)
                         , circle 8
                             |> filled black
                             |> move (22,10)
                         , circle 8
                             |> filled black
                             |> move (-15,10)
                         , triangle 5
                             |> filled pink
                             |> rotate (degrees -210)
                             |> move (5,-10)
                         , triangle 20
                             |> filled white
                             |> move (45,-10)
                             |> rotate (degrees -210)
                         , triangle 20
                             |> filled white
                             |> move (-20,50)
                             |> rotate (degrees -780)
                          , rect 2 20
                             |> filled black
                             |> rotate (degrees -450)
                             |> move (40,5)
                          , rect 2 20
                             |> filled black
                             |> rotate (degrees -450)
                             |> move (-35,-15)
                          , rect 2 20
                             |> filled black
                             |> rotate (degrees -660)
                             |> move (-35,5)
                          , rect 2 20
                             |> filled black
                             |> rotate (degrees -660)
                             |> move (40,-15)
                         ]
                           |> scale 0.8
                           |> move (0,-10)
                         ]

        myBackground = square 200 |> filled pink
    in (("VirtuousMallow",myWord,"6"),("cat","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "pet" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes)
        myShapes model = [square 10
                           |> filled darkGray
                           |> move (-10,-10)
                         , rect 35 65
                           |> filled darkGray
                           |> move(0,10)

                           , square 10
                           |> filled black
                           |> move(-7,-17)
                           , square 10
                           |> filled black
                           |> move(7,-17)
                           , rect 15 20
                           |> filled black
                           |> move(0,-1)
                           , circle 4
                           |> filled black
                           |> move(10,30)
                           , circle 4
                           |> filled black
                           |> move(-10,30)
                           , roundedRect 10 15 5
                             |> filled black
                             |> rotate (degrees -90)
                              |> move (0,20)
                              , square 10
                              |> filled black
                              |> rotate (degrees -90)
                              |> move (-22,37.5)
                              ,square 10
                              |> filled black
                              |> rotate (degrees -90)
                              |> move (22,37.5)
                              ,rect 10 10
                              |> filled black
                              |> move (22,37.5)
                              ,square 10
                              |> filled black
                              ,rect 10 15
                              |> filled black
                              |> move (-22,-15)
                              , rect 10 15
                              |> filled black
                              |> move (22,-15) ]
    in (("RoyalFig",myWord,"6"),("Best Bear","given to PedramMay2019",myShapes))

  ,    let
        myWord = "car" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ circle 10 |> filled black |> move (30,-20)
                         , circle 10 |> filled black |> move (-30,-20)
                         ,rect 80 30 |> filled red
                         ,square 40 |> filled red |> move (0,20)]
    in (("FamiliarTaro",myWord,"6"),("Fox","given to PedramMay2019",myShapes))

  ,    let
        myWord = "panda"--ur work here (in quotes) --
        myCode = 0-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [circle 35
          |> filled white |> addOutline (solid 1) black
         , wedge 10 0.5
          |> filled black
          |> rotate (degrees -450)
          |> move (0,-10)
           , circle 5
          |> filled black
          |> rotate (degrees -450)
          |> move (15,10)
           , circle 5
          |> filled black
          |> rotate (degrees -450)
          |> move (-15,10)
          , wedge 15 0.5
          |> filled white|> addOutline (solid 1) black
          |> rotate (degrees -300)
          |> move (15,25)
           , wedge 7 0.5
          |> filled black
          |> rotate (degrees -300)
          |> move (18,28)
          , wedge 15 0.5|> filled white|> addOutline (solid 1) black
          |> rotate (degrees -230)
          |> move (-15,25)
           , wedge 7 0.5|> filled black
          |> rotate (degrees -230)
          |> move (-18,28)]
    in (("FaithfulTapir",myWord,"6"),("Banana","given to PedramMay2019",myShapes))

  ,    let
        myWord = "cat" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [circle 30
          |> filled darkBrown
          , circle 5
          |> filled black
          |> move (10,5)
          ,circle 5
          |> filled black
          |> move (-10,5)
          ,oval 4 10
          |> filled pink
          |> rotate (degrees 90)
          ,wedge 10 0.5
          |> filled black
          |> rotate (degrees -90)
          |> move (-0,-5)
          ,triangle 15
          |> filled darkBrown
          |> move (-15,25)
          ,triangle 5
          |> filled pink
          |> move (-15,25)
          ,triangle 15
          |> filled darkBrown
          |> rotate (degrees -300)
          |> move (15,25)
          ,triangle 5
          |> filled pink
          |> rotate (degrees -300)
          |> move (15,25)
          ,circle 2
          |> filled white
          |> move (-10,8)
          ,circle 2
          |>filled white
          |>move (10,8)










                       ]





    in (("EnergeticSloth",myWord,"6"),("Cat","given to PedramMay2019",myShapes))

  ,    let
        myWord = "cat" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [circle 30
          |> filled darkBrown
          , circle 5
          |> filled black
          |> move (10,10)
          ,circle 5
          |> filled black
          |> move (-10,10)
          ,wedge 10 0.5
          |> filled black
          |> rotate (degrees -450)
          |> move (0,-10)
          ,oval 5 7
          |> filled pink
          |> rotate (degrees -270)
          ,triangle 10
          |> filled darkBrown
          |> rotate (degrees -300)
          |> move (15,25)
          ,triangle 10
          |> filled darkBrown
          |> rotate (degrees 0)
          |> move (-15,25)









                ]
    in (("DynamicSage",myWord,"6"),("scrunchy kid","given to PedramMay2019",myShapes))

  ,    let
        myWord = "hipster" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [group [ rect 600 150 |> filled purple
                  ,circle 20 |> filled white |> move (0,43)
                  ,rect 25 40 |> filled red |> move (0,3)
                  ,rect 26 48 |> filled blue |> move (0,-40)
                  ,rect 2 45 |> filled black |> move (0,-42)
                  ,square 10 |> filled red |> move (17,18)
                  ,square 10 |> filled red |> move (-17,18)
                  ,rect 10 20 |> filled white |> move (17,4)
                  ,rect 10 20 |> filled white |> move (-17,4)
                  ,square 15 |> filled green |> move (7,-62)
                  ,square 15 |> filled green |> move (-7,-62)
                  ,rect 8 1 |> filled black |> move (0, 30)
                  ,circle 4 |> filled black |> move (7, 45)
                  ,circle 4 |> filled black |> move (-7,45)
                  ,circle 2 |> filled white |> move (7,43)
                  ,circle 2 |> filled white |> move (-7,43)
                  ,rect 40 12 |> filled brown |> move (0,58)
                  ,rect 12 2 |> filled brown |> move (24,53)] |> scale 0.7]
    in (("DoubtfulRose",myWord,"6"),("hipster","given to PedramMay2019",myShapes))

  ,    let
        myWord = "tree" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [ rect 30 75
                          |> filled darkBrown
                          |> move (0,-30)
                        , oval 30 55
                          |> filled darkGreen
                          |> rotate (degrees 270)
                          |> move (-30,10)
                        , oval 30 55
                        |> filled darkGreen
                        |> rotate (degrees 270)
                        |> move (0,10)
                        , oval 30 55
                        |> filled darkGreen
                        |> rotate (degrees 270)
                        |> move (30,10)
                       , oval 30 55
                         |> filled darkGreen
                         |> rotate (degrees 270)
                         |> move (10,30)
                       , oval 30 55
                        |> filled darkGreen
                        |> rotate (degrees 270)
                        |> move (-10,30)
                       , oval 30 55
                         |> filled darkGreen
                         |> rotate (degrees 270)
                         |> move (0,50)] |> scale 0.7]
    in (("QuickDugong",myWord,"6"),("tree","given to PedramMay2019",myShapes))

  ,    let
        myWord = "cake" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [roundedRect 80 55 5
                         |> filled lightYellow
                         |> move (0,-30)
                       , roundedRect 60 45 5
                         |> filled darkRed
                         |> move (0,10)
                       , roundedRect 50 35 5
                         |> filled lightBlue
                         |> move (0,30)] |> scale 0.7]



    in (("QuickDugong",myWord,"6"),("cake","given to PedramMay2019",myShapes))

  ,    let
        myWord = "house" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [rect 100 30
                          |> filled darkBrown
                          |> move (0,-50)
                        , rect 100 10
                         |> filled darkGreen
                         |> move (0,-50)
                        , circle 10
                          |> filled yellow
                          |> move (40,40)
                        , square 50
                            |> filled red
                            |> move (-19,-10)
                        , rect 25 35
                          |> filled charcoal
                          |> move (-20,-18)
                        , circle 3
                         |> filled orange
                         |> move (-24,-20)
                        , triangle 30
                          |> filled charcoal
                          |> rotate (degrees -30)
                          |> move (-19,30)]  |> scale 0.75]

















    in (("QuickDugong",myWord,"6"),("summer","given to PedramMay2019",myShapes))

  ,    let
        myWord = "droplet" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in15 quotes) --

        myShapes model = [ group [ circle 30
                |> filled lightBlue
                |> move (0,-20)
            ,   ngon 3 30
                |> filled lightBlue
                |> rotate (degrees 90)
                |> move (0,10)
                        ] |> scale 0.8
                          |> move(0,3)
                        ]
    in (("HappyArmadillo",myWord,"6"),("condensation","given to PedramMay2019",myShapes))

  ,    let
        myWord = "lion" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [circle 40
          |> filled darkBrown
          |> rotate (degrees 570)
          |> move (5, 0)
          ,circle 30
          |> filled lightBrown
            , oval 50 30
          |> filled lightBrown
          |> move (-12,-12)
          , oval 5 10
          |> filled darkCharcoal
          |> rotate (degrees 90)
          |> move (-30,-7)
          , oval 30 16
          |> filled lightBlue
          |> rotate (degrees 270)
          |> move (-10, 5)
          , oval 10 20
          |> filled darkCharcoal
          |> rotate (degrees 360)
          |> move (-13,5)
           , curve (0,0) [Pull (10,0) (20,-10)]
          |> filled black
          |> rotate (degrees 570)
          |> move (-14,-16)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> filled lightBrown
          |> rotate (degrees 360)
          |> move ( -14,-11)
          , wedge 15 0.5
          |> filled lightBrown
          |> rotate (degrees 400)
          |> move (20,20)
          , roundedRect 60 70 40
          |> filled lightBrown
          |> rotate (degrees 360)
          |> move (5,-60)
           , openPolygon [(0,0),(0,-10),(30,0)]
          |> filled lightBrown
          |> rotate (degrees -30)
          |> move (15,10)
          , openPolygon [(0,0),(0,-10),(30,0)]
          |> filled lightBrown
          |> rotate (degrees -30)
          |> move (15,13)
          , openPolygon [(0,0),(0,-10),(30,0)]
          |> filled lightBrown
          |> rotate (degrees -30)
          |> move (15,15)
            , openPolygon [(0,0),(0,-10),(30,0)]
          |> filled lightBrown
          |> rotate (degrees -30)
          |> move (15,17)
          , openPolygon [(0,0),(0,-10),(30,0)]
          |> filled lightBrown
          |> rotate (degrees -30)
          |> move (15,19)
            , openPolygon [(0,0),(0,-10),(30,0)]
          |> filled lightBrown
          |> rotate (degrees -30)
          |> move (15,21)
            , openPolygon [(0,0),(0,-10),(30,0)]
          |> filled lightBrown
          |> rotate (degrees -30)
          |> move (15,19)
            , openPolygon [(0,0),(0,-10),(30,0)]
          |> filled lightBrown
          |> rotate (degrees -30)
          |> move (15,23)
            , openPolygon [(0,0),(0,-10),(30,0)]
          |> filled lightBrown
          |> rotate (degrees -30)
          |> move (15,25)
            , openPolygon [(0,0),(0,-10),(30,0)]
          |> filled lightBrown
          |> rotate (degrees -30)
          |> move (15,27)
            , openPolygon [(0,0),(0,-10),(30,0)]
          |> filled lightBrown
          |> rotate (degrees -30)
          |> move (15,19)
            , openPolygon [(0,0),(0,-10),(30,0)]
          |> filled lightBrown
          |> rotate (degrees -30)
          |> move (15,29)
            , openPolygon [(0,0),(0,-10),(30,0)]
          |> filled lightBrown
          |> rotate (degrees -30)
          |> move (15,31)
            , openPolygon [(0,0),(0,-10),(30,0)]
          |> filled lightBrown
          |> rotate (degrees -30)
          |> move (15,33)
           , openPolygon [(0,0),(0,-10),(30,0)]
          |> filled lightBrown
          |> rotate (degrees -30)
          |> move (15,33)
           , openPolygon [(0,0),(0,-10),(30,0)]
          |> filled lightBrown
          |> rotate (degrees -30)
          |> move (15,35)
          , curve (0,0) [Pull (10,0) (20,-10)]
          |> filled lightBrown |> scaleY 4
          |> rotate (degrees -950)
          |> move (40,-66)
          , circle 9
          |> filled darkBrown
          |> rotate (degrees -690)
          |> move (58,-30)






          ] |> scale 0.75 |> move (-10,20) ]

    in (("SilentGoldfish",myWord,"6"),("lion","given to PedramMay2019",myShapes))

  ,    let
        myWord = "watermelon" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [
          triangle 59
          |> filled red
          |> rotate (degrees 90)
          |> move (0,-13)
          ,rect 100 20
          |> filled darkGreen
          |> rotate (degrees 360)
          |> move (0,-50)
          ,oval 20 10
          |> filled darkCharcoal
          |> rotate (degrees 270)
          |> move (0,-10)
          , oval 20 10
          |> filled darkCharcoal
          |> rotate (degrees 270)
          |> move (-20,-10)
          , oval 20 10
          |> filled darkCharcoal
          |> rotate (degrees 270)
          |> move (20,0)
          , oval 20 10
          |> filled darkCharcoal
          |> rotate (degrees 270)
          |> move (0,30)
          , oval 20 10
          |> filled darkCharcoal
          |> rotate (degrees 270)
          |> move (-10,-20)
          ] |> scale 0.75  ]

    in (("DramaticRue",myWord,"6"),("watermelon","given to PedramMay2019",myShapes))

  ,    let
        myWord = "pencil" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [rect 10 35
                           |> filled orange
                           |> scaleY 2
                          ,triangle 6
                            |> filled darkBrown
                            |> scaleX 1.5
                            |> rotate (degrees 270) |> move (0,-39)
                               ]
    in (("ExcellentSorghum",myWord,"6"),("cat","given to PedramMay2019",myShapes))

  ,    let
        myWord = "milk"  -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [roundedRect 10 15 0
          |> outlined (solid 0.5) black
          |> scale 2
          |> scaleX 2
          |> scaleY 2
          |> move (0,-20) , triangle 10
          |> outlined (solid 0.5) black
          |> scale 1
          |> scaleX 2
          |> scaleY 2
          |> rotate (degrees -30)
          |> move (0,20) , rect 30 50
          |> filled blue
          |> move (0,-20) , rect 30 20
          |> filled white
          |> move (0,-20)              ]

    in (("ShrillGazelle",myWord,"6"),("milk","given to PedramMay2019",myShapes))

  ,    let
        myWord = "bear" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ circle 40 |>filled darkBrown
                         , circle 5
                        |> filled black
                        |> rotate (degrees -30)
                        |> move (20,20)
                         , circle 5
                        |> filled black
                        |> rotate (degrees -30)
                        |> move (-20,20)
                        ,oval 10 15
                         |> filled black
                         |> rotate (degrees -90)
                         ,oval 10 15
                         |> filled black
                         |> rotate (degrees -90)
                         ,wedge 15 0.5
                         |> filled black
                         |> rotate (degrees -90)
                         |>move (0,-10)
                         ,wedge 10 0.5
                          |> filled darkBrown
                           |> rotate (degrees 30)
                           |> move (25,26)
                         ,wedge 10 0.5
                          |> filled darkBrown
                           |> rotate (degrees -210)
                           |> move (-25,26)




                         ]
    in (("DutifulSaffron",myWord,"6"),("grizly bear","given to PedramMay2019",myShapes))

  ,    let
        myWord = "cartoon" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [group [square 2000
                          |> filled blue
                          ,circle 50
                          |> filled yellow
                            ,circle 10
                          |> filled black
                          |> move (20,20)
                          ,circle 10
                          |> filled black
                          |> move (-20,20)
                           ,wedge 10 0.5
                          |> filled black
                          |> scaleY 2
                          |> rotate (degrees -90)
                          |> move (0,-30)
                           ,circle 10
                          |> filled red
                          |> rotate (degrees 90)
                          |> move (30,-10)
                           ,circle 10
                          |> filled red
                          |> rotate (degrees 90)
                          |> move (-30,-10)
                           ,oval 50 15
                          |> filled yellow
                          |> scaleX 2
                          |> rotate (degrees 120)
                          |> move (-50,80)
                           ,oval 50 15
                          |> filled yellow
                          |> scaleX 2
                          |> rotate (degrees 60)
                          |> move (50,80)
                           ,triangle 5
                          |> filled black
                          |> rotate (degrees 90)
                          |> move (0,-10)
                           ,circle 3
                          |> filled white
                          |> rotate (degrees 90)
                          |> move (20,25)
                           ,circle 3
                          |> filled white
                          |> rotate (degrees 90)
                          |> move (-20,25)
                 ] |> scale 0.5 |> move (0,-20) ]

    in (("KeenCherry",myWord,"6"),("Pikachu","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "shapes" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model =[ group [ square 30
                             |> filled red
                             |> rotate model.time
                           , circle 20
                             |> filled blue
                             |> rotate (degrees 30)
                             |> move (30,30)
                           ,  rect 40 15
                             |> filled blue
                             |> rotate (degrees 90)
                             |> move (-30,-30)
                                            ] |> scale 0.9
                                              |> move(-5,0)

                                            ]

    in (("HushedCaper",myWord,"6"),("Shapes","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "bird" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         ,  group[  triangle 10
                                |> filled yellow
                                |> scaleX 2
                                |> rotate (degrees 25)
                                |> move (30, 20)
                         , circle 15
                                |> filled lightOrange
                                |> move (15 , 14)
                         ,  oval 20 30
                                |> filled lightOrange
                                |> scaleX 2
                                |> scaleY 2
                                |> rotate (degrees -75)
                                |> move (-15 ,0)
                         , wedge 7 0.5
                                |> filled (rgb 211 99 0)
                                |> scaleX 2
                                |> scaleY 2
                                |> rotate (degrees -70)
                                |> move (-20,5)
                                |> rotate (sin(model.time))
                         , circle 2
                                |> filled black
                                |> move (20, 20)
                         ] |> move(-1,-4)
                         ]

        myBackground = square 200 |> filled (rgb 175 175 255)
    in (("ExoticTurtle",myWord,"6"),("Bird","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "hammerhead shark" -- put your work here (in quotes) --
        myCode = 50006 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [group [
                curve (10, 40) [Pull (-10.82,40) (-11.52,40),Pull (-12,39.294) (-12.47,38.588),Pull (-13.17,37.647) (-13.88,36.705),Pull (-14.11,36.470) (-14.35,36.235),Pull (-14.58,35.058) (-14.82,33.882),Pull (-15.05,32.470) (-15.29,31.058),Pull (-15.52,30.117) (-15.76,29.176),Pull (-16,28.705) (-16.23,28.235),Pull (-16.47,26.823) (-16.70,25.411),Pull (-17.64,24.705) (-18.58,24),Pull (-19.76,24) (-20.94,24),Pull (-22.11,24) (-23.29,24),Pull (-24,23.764) (-24.70,23.529),Pull (-26.58,23.764) (-28.47,24),Pull (-30.11,23.764) (-31.76,23.529),Pull (-33.41,22.823) (-35.05,22.117),Pull (-36.47,21.882) (-37.88,21.647),Pull (-37.64,22.352) (-37.41,23.058),Pull (-37.17,24) (-36.94,24.941),Pull (-36,25.647) (-35.05,26.352),Pull (-34.58,26.823) (-34.11,27.294),Pull (-33.64,28) (-33.17,28.705),Pull (-32.47,29.176) (-31.76,29.647),Pull (-32.47,30.117) (-33.17,30.588),Pull (-34.11,31.058) (-35.05,31.529),Pull (-36.23,31.764) (-37.41,32),Pull (-38.82,32.470) (-40.23,32.941),Pull (-41.41,32.941) (-42.58,32.941),Pull (-43.52,32.470) (-44.47,32),Pull (-45.64,31.058) (-46.82,30.117),Pull (-46.58,29.176) (-46.35,28.235),Pull (-46.82,28) (-47.29,27.764),Pull (-48.23,27.764) (-49.17,27.764),Pull (-50.11,26.823) (-51.05,25.882),Pull (-52,24.941) (-52.94,24),Pull (-53.64,23.294) (-54.35,22.588),Pull (-55.52,21.882) (-56.70,21.176),Pull (-57.88,20) (-59.05,18.823),Pull (-59.52,16.941) (-60,15.058),Pull (-61.64,13.176) (-63.29,11.294),Pull (-63.52,10.352) (-63.76,9.4117),Pull (-63.76,8.2352) (-63.76,7.0588),Pull (-64,5.4117) (-64.23,3.7647),Pull (-64.47,2.3529) (-64.70,0.9411),Pull (-64.23,0.2352) (-63.76,-0.470),Pull (-64.70,-1.176) (-65.64,-1.882),Pull (-65.41,-2.352) (-65.17,-2.823),Pull (-64.23,-3.764) (-63.29,-4.705),Pull (-61.64,-4.705) (-60,-4.705),Pull (-58.82,-4.705) (-57.64,-4.705),Pull (-56.23,-4.470) (-54.82,-4.235),Pull (-53.88,-3.529) (-52.94,-2.823),Pull (-52.23,-1.647) (-51.52,-0.470),Pull (-51.29,0.4705) (-51.05,1.4117),Pull (-50.82,3.2941) (-50.58,5.1764),Pull (-47.76,4.4705) (-44.94,3.7647),Pull (-44,3.7647) (-43.05,3.7647),Pull (-42.35,2.5882) (-41.64,1.4117),Pull (-40.94,1.1764) (-40.23,0.9411),Pull (-38.82,0.7058) (-37.41,0.4705),Pull (-35.29,0.4705) (-33.17,0.4705),Pull (-32,0.2352) (-30.82,0),Pull (-29.64,0) (-28.47,0),Pull (-26.35,-0.470) (-24.23,-0.941),Pull (-23.52,-1.647) (-22.82,-2.352),Pull (-22.35,-3.294) (-21.88,-4.235),Pull (-21.64,-5.647) (-21.41,-7.058),Pull (-21.17,-9.176) (-20.94,-11.29),Pull (-20.47,-12.47) (-20,-13.64),Pull (-18.58,-16.23) (-17.17,-18.82),Pull (-16.23,-20.70) (-15.29,-22.58),Pull (-14.11,-23.29) (-12.94,-24),Pull (-11.76,-22.82) (-10.58,-21.64),Pull (-10.82,-20) (-11.05,-18.35),Pull (-11.05,-17.17) (-11.05,-16),Pull (-11.05,-15.05) (-11.05,-14.11),Pull (-10.82,-12) (-10.58,-9.882),Pull (-10.11,-8.941) (-9.647,-8),Pull (-9.411,-7.058) (-9.176,-6.117),Pull (-8.235,-4.470) (-7.294,-2.823),Pull (-5.647,-2.588) (-4,-2.352),Pull (-2.588,-2.117) (-1.176,-1.882),Pull (0,-1.647) (1.1764,-1.411),Pull (2.8235,-1.411) (4.4705,-1.411),Pull (5.4117,-1.411) (6.3529,-1.411),Pull (8,-1.647) (9.6470,-1.882),Pull (12.235,-2.117) (14.823,-2.352),Pull (16.705,-2.352) (18.588,-2.352),Pull (19.764,-3.058) (20.941,-3.764),Pull (21.176,-4.470) (21.411,-5.176),Pull (21.882,-6.352) (22.352,-7.529),Pull (23.529,-8.705) (24.705,-9.882),Pull (25.411,-9.882) (26.117,-9.882),Pull (26.588,-8.470) (27.058,-7.058),Pull (27.294,-6.352) (27.529,-5.647),Pull (28,-5.176) (28.470,-4.705),Pull (30.117,-3.764) (31.764,-2.823),Pull (33.647,-3.764) (35.529,-4.705),Pull (34.352,-5.647) (33.176,-6.588),Pull (31.764,-7.294) (30.352,-8),Pull (28.941,-9.411) (27.529,-10.82),Pull (26.588,-11.76) (25.647,-12.70),Pull (25.647,-12.70) (25.647,-12.70),Pull (24.470,-13.41) (23.294,-14.11),Pull (22.117,-15.29) (20.941,-16.47),Pull (22.823,-16.70) (24.705,-16.94),Pull (27.058,-16.23) (29.411,-15.52),Pull (30.823,-15.76) (32.235,-16),Pull (33.882,-16) (35.529,-16),Pull (37.882,-16.47) (40.235,-16.94),Pull (40,-17.88) (39.764,-18.82),Pull (40.705,-19.52) (41.647,-20.23),Pull (42.588,-21.17) (43.529,-22.11),Pull (44,-23.05) (44.470,-24),Pull (45.411,-25.64) (46.352,-27.29),Pull (47.294,-28.47) (48.235,-29.64),Pull (48.705,-28.23) (49.176,-26.82),Pull (48.941,-24.23) (48.705,-21.64),Pull (47.764,-20) (46.823,-18.35),Pull (45.882,-16.70) (44.941,-15.05),Pull (44.235,-13.17) (43.529,-11.29),Pull (43.058,-9.647) (42.588,-8),Pull (43.058,-5.882) (43.529,-3.764),Pull (43.058,-2.117) (42.588,-0.470),Pull (41.647,1.4117) (40.705,3.2941),Pull (39.058,5.1764) (37.411,7.0588),Pull (36.470,8) (35.529,8.9411),Pull (33.411,10.823) (31.294,12.705),Pull (28.705,14.352) (26.117,16),Pull (23.294,17.647) (20.470,19.294),Pull (17.882,20.235) (15.294,21.176),Pull (13.176,21.647) (11.058,22.117),Pull (7.5294,22.823) (4,23.529),Pull (1.8823,23.764) (-0.235,24),Pull (-3.294,27.294) (-6.352,30.588),Pull (-7.058,32.941) (-7.764,35.294),Pull (-8.235,36.941) (-8.705,38.588),Pull (-9.647,39.294) (-10.58,40)]
         |> filled darkGrey
              , circle 2
              |> filled black
              |> move (-40, 30)
                , circle 0.8
              |> filled white
              |> move (-39.5, 31)
               ,   curve (3.5294,-12.23) [Pull (2.8235,-13.17) (2.1176,-14.11),Pull (1.4117,-14.82) (0.7058,-15.52),Pull (-0.705,-16.23) (-2.117,-16.94),Pull (-2.588,-17.64) (-3.058,-18.35),Pull (-3.294,-19.29) (-3.529,-20.23),Pull (-4.235,-19.05) (-4.941,-17.88),Pull (-4.705,-16.70) (-4.470,-15.52),Pull (-3.764,-15.05) (-3.058,-14.58),Pull (-2.352,-14.35) (-1.647,-14.11),Pull (-0.705,-13.88) (0.2352,-13.64),Pull (1.6470,-13.41) (3.0588,-13.17)]
         |> filled darkRed
         |> move (-40, 25)
                         ] |> scale 0.75]

        myBackground = square 200 |> filled pink
    in (("SincereOak",myWord,"6"),("hammerhead shark","given to WRDSBGiftedReplacementsAndNew",myShapes))

  ,    let
        myWord = "coral trout"
        myCode = 50006 -- put your code number here, which came with your word (not in quotes) --

        myShapes model =


            [group [

            curve (-65.02,25.559) [Pull (-63.18,22.900) (-61.34,20.242),Pull (-59.09,16.357) (-56.84,12.472),Pull (-57.25,10.223) (-57.66,7.9744),Pull (-58.88,3.8849) (-60.11,-0.204),Pull (-61.34,-3.271) (-62.56,-6.338),Pull (-64.61,-5.520) (-66.65,-4.702),Pull (-69.31,-3.476) (-71.97,-2.249),Pull (-74.42,-1.635) (-76.88,-1.022),Pull (-78.51,-1.840) (-80.15,-2.658),Pull (-82.19,0.6134) (-84.24,3.8849),Pull (-88.53,8.7923) (-92.83,13.699),Pull (-92.42,15.335) (-92.01,16.971),Pull (-89.96,17.789) (-87.92,18.607),Pull (-83.42,20.651) (-78.92,22.696),Pull (-77.29,23.514) (-75.65,24.332),Pull (-73.20,24.536) (-70.74,24.741),Pull (-68.90,25.150) (-67.06,25.559),Pull (-66.45,25.150) (-65.02,25.559)]
             |> filled (rgb 237 83 59 )
          ,
            curve (-70.55,14.628) [Pull (-72.99,14.171) (-75.42,13.714),Pull (-76.80,14.780) (-78.17,15.847),Pull (-78.01,17.523) (-77.86,19.2),Pull (-76.64,20.723) (-75.42,22.247),Pull (-73.14,21.942) (-70.85,21.638),Pull (-70.09,20.114) (-69.33,18.590),Pull (-69.63,16.304) (-69.94,14.019),Pull (-72.22,13.561) (-70.55,14.628)]
             |> filled (rgb 247 77 39)
             |> addOutline (solid 1.29876543) black

          ,
            curve (-79.23,-3.961) [Pull (-83.80,1.8285) (-88.38,7.6190),Pull (-90.97,10.819) (-93.56,14.019),Pull (-94.47,13.104) (-95.39,12.190),Pull (-93.56,10.666) (-91.73,9.1428),Pull (-90.36,7.7714) (-88.99,6.4),Pull (-87.31,4.4190) (-85.63,2.4380),Pull (-83.35,0) (-81.06,-2.438),Pull (-80.15,-3.352) (-79.23,-3.961)]
             |> filled (rgb 255 255 255)
          ,
             curve (-74.01,13.699) [Pull (-73.20,13.904) (-72.38,14.108),Pull (-71.97,15.130) (-71.56,16.153),Pull (-72.38,16.971) (-73.20,17.789),Pull (-74.22,17.993) (-75.24,18.198),Pull (-75.85,17.993) (-76.47,17.789),Pull (-76.47,16.357) (-76.47,14.926),Pull (-75.04,14.517) (-73.61,14.108),Pull (-72.99,14.108) (-74.01,13.699)]
             |> filled (rgb 0 0 0)
          ,
             curve (-76.47,-5.520) [Pull (-77.69,-4.498) (-78.92,-3.476),Pull (-77.90,-2.862) (-76.88,-2.249),Pull (-75.04,-2.453) (-73.20,-2.658),Pull (-71.36,-3.067) (-69.52,-3.476),Pull (-67.68,-4.498) (-65.84,-5.520),Pull (-64.20,-5.725) (-62.56,-5.929),Pull (-60.11,-6.747) (-57.66,-7.565),Pull (-55.61,-8.178) (-53.57,-8.792),Pull (-52.34,-8.178) (-51.11,-7.565),Pull (-50.09,-6.952) (-49.07,-6.338),Pull (-48.25,-7.974) (-47.43,-9.610),Pull (-47.64,-13.29) (-47.84,-16.97),Pull (-55.61,-14.31) (-63.38,-11.65),Pull (-64.20,-10.83) (-65.02,-10.01),Pull (-68.49,-9.201) (-71.97,-8.383),Pull (-73.40,-7.565) (-76.47,-5.520)]
             |> filled (rgb 244 119 66)
          ,
             curve (-76.06,-5.929) [Pull (-78.31,-4.907) (-80.56,-3.884),Pull (-79.33,-2.862) (-78.10,-1.840),Pull (-76.88,-1.840) (-75.65,-1.840),Pull (-73.40,-2.044) (-71.15,-2.249),Pull (-69.31,-3.271) (-67.47,-4.293),Pull (-65.22,-5.111) (-62.97,-5.929),Pull (-62.36,-6.747) (-76.06,-5.929)]
             |> filled (rgb 244 119 66)
          ,
             curve (-79.33,-3.884) [Pull (-81.17,-3.067) (-83.01,-2.249),Pull (-84.85,-1.226) (-86.69,-0.204),Pull (-88.33,0.8178) (-89.96,1.8402),Pull (-92.62,4.0894) (-95.28,6.3386),Pull (-95.07,8.9968) (-94.87,11.654),Pull (-92.62,9.6102) (-90.37,7.5654),Pull (-88.33,5.3162) (-86.28,3.0670),Pull (-83.62,0.6134) (-80.97,-1.840),Pull (-79.74,-2.862) (-78.51,-3.884),Pull (-78.10,-4.907) (-79.33,-3.884)]
             |> filled (rgb 244 119 66)
          ,

            curve (-61.75,-6.747) [Pull (-58.47,-7.769) (-55.20,-8.792),Pull (-53.98,-8.792) (-52.75,-8.792),Pull (-50.30,-7.565) (-47.84,-6.338),Pull (-46.41,-4.907) (-44.98,-3.476),Pull (-43.96,-2.044) (-42.93,-0.613),Pull (-41.09,0.8178) (-39.25,2.2492),Pull (-39.66,4.2939) (-40.07,6.3386),Pull (-41.09,8.7923) (-42.12,11.246),Pull (-39.87,12.881) (-37.62,14.517),Pull (-32.92,14.926) (-28.21,15.335),Pull (-25.55,15.335) (-22.90,15.335),Pull (-17.78,12.881) (-12.67,10.428),Pull (-9.405,8.7923) (-6.134,7.1565),Pull (-2.658,5.7252) (0.8178,4.2939),Pull (2.4536,5.3162) (4.0894,6.3386),Pull (5.9297,7.3610) (7.7699,8.3833),Pull (9.2012,10.019) (10.632,11.654),Pull (11.041,13.699) (11.450,15.744),Pull (3.6805,18.198) (-4.089,20.651),Pull (-9.405,22.083) (-14.72,23.514),Pull (-19.22,24.536) (-23.71,25.559),Pull (-27.19,25.559) (-30.67,25.559),Pull (-33.73,25.968) (-36.80,26.376),Pull (-39.05,26.581) (-41.30,26.785),Pull (-44.57,26.990) (-47.84,27.194),Pull (-51.11,26.990) (-54.38,26.785),Pull (-58.07,26.785) (-61.75,26.785),Pull (-63.38,25.763) (-65.02,24.741),Pull (-63.38,21.674) (-61.75,18.607),Pull (-60.31,16.562) (-58.88,14.517),Pull (-58.47,11.859) (-58.07,9.2012),Pull (-58.88,5.9297) (-59.70,2.6581),Pull (-61.13,-0.817) (-62.56,-4.293),Pull (-60.93,-5.929) (-61.75,-6.747)]
             |> filled (rgb 239 71 45)
          ,
             curve (-42.53,-2.249) [Pull (-40.48,0.4089) (-38.44,3.0670),Pull (-40.07,6.1341) (-41.71,9.2012),Pull (-41.30,10.632) (-40.89,12.063),Pull (-39.87,12.677) (-38.84,13.290),Pull (-37.00,13.699) (-35.16,14.108),Pull (-33.73,13.904) (-32.30,13.699),Pull (-31.07,14.926) (-29.85,16.153),Pull (-27.60,16.153) (-25.35,16.153),Pull (-22.69,15.539) (-20.03,14.926),Pull (-17.99,13.495) (-15.94,12.063),Pull (-12.67,11.246) (-9.405,10.428),Pull (-7.361,9.6102) (-5.316,8.7923),Pull (-4.293,7.7699) (-3.271,6.7476),Pull (-1.226,5.7252) (0.8178,4.7028),Pull (2.2492,6.1341) (3.6805,7.5654),Pull (5.9297,8.7923) (8.1789,10.019),Pull (9.4057,12.268) (10.632,14.517),Pull (13.495,13.495) (16.357,12.472),Pull (18.811,11.450) (21.265,10.428),Pull (23.718,9.6102) (26.172,8.7923),Pull (28.217,7.5654) (30.261,6.3386),Pull (33.124,4.7028) (35.987,3.0670),Pull (37.418,0.6134) (38.849,-1.840),Pull (39.054,-3.680) (39.258,-5.520),Pull (40.485,-6.543) (41.712,-7.565),Pull (43.348,-9.201) (44.984,-10.83),Pull (46.006,-13.08) (47.028,-15.33),Pull (46.824,-17.78) (46.619,-20.24),Pull (47.233,-20.03) (47.846,-19.83),Pull (49.073,-20.24) (50.300,-20.65),Pull (52.345,-20.65) (54.389,-20.65),Pull (55.003,-19.22) (55.616,-17.78),Pull (56.638,-17.38) (57.661,-16.97),Pull (58.274,-17.58) (58.888,-18.19),Pull (59.706,-18.81) (60.523,-19.42),Pull (62.364,-20.24) (64.204,-21.06),Pull (65.840,-22.28) (67.476,-23.51),Pull (69.725,-23.92) (71.974,-24.33),Pull (72.792,-24.94) (73.610,-25.55),Pull (72.587,-28.21) (71.565,-30.87),Pull (69.520,-32.10) (67.476,-33.32),Pull (65.226,-37.62) (62.977,-41.91),Pull (60.115,-39.87) (57.252,-37.82),Pull (55.616,-36.80) (53.980,-35.78),Pull (53.367,-35.57) (52.753,-35.37),Pull (50.709,-34.55) (48.664,-33.73),Pull (46.006,-33.12) (43.348,-32.51),Pull (41.712,-32.30) (40.076,-32.10),Pull (37.418,-31.28) (34.760,-30.46),Pull (32.715,-30.46) (30.670,-30.46),Pull (29.853,-30.26) (29.035,-30.05),Pull (26.990,-29.85) (24.945,-29.64),Pull (22.696,-29.23) (20.447,-28.83),Pull (18.198,-27.60) (15.948,-26.37),Pull (11.450,-25.55) (6.9520,-24.74),Pull (5.9297,-24.12) (4.9073,-23.51),Pull (2.0447,-23.10) (-0.817,-22.69),Pull (-4.293,-22.28) (-7.769,-21.87),Pull (-8.383,-21.67) (-8.996,-21.46),Pull (-8.996,-21.46) (-8.996,-21.46),Pull (-12.47,-20.44) (-15.94,-19.42),Pull (-16.76,-19.22) (-17.58,-19.01),Pull (-21.67,-17.78) (-25.76,-16.56),Pull (-28.01,-14.72) (-30.26,-12.88),Pull (-31.89,-10.83) (-33.53,-8.792),Pull (-33.73,-5.929) (-33.94,-3.067),Pull (-36.19,-3.680) (-38.44,-4.293),Pull (-40.28,-4.089) (-42.53,-2.249)]
              |> filled (rgb 237 94 42)
          ,
             curve (15.130,11.654) [Pull (14.108,12.268) (13.086,12.881),Pull (11.246,13.290) (9.4057,13.699),Pull (9.8146,14.108) (10.223,14.517),Pull (11.859,15.335) (13.495,16.153),Pull (16.971,15.744) (20.447,15.335),Pull (22.696,14.926) (24.945,14.517),Pull (27.399,14.517) (29.853,14.517),Pull (31.897,14.313) (33.942,14.108),Pull (35.987,13.290) (38.031,12.472),Pull (39.463,11.654) (40.894,10.837),Pull (42.734,9.6102) (44.575,8.3833),Pull (46.210,6.9520) (47.846,5.5207),Pull (49.277,2.6581) (50.709,-0.204),Pull (52.753,-3.067) (54.798,-5.929),Pull (54.185,-8.587) (53.571,-11.24),Pull (53.980,-12.88) (54.389,-14.51),Pull (55.616,-15.94) (56.843,-17.38),Pull (57.456,-18.60) (58.070,-19.83),Pull (57.456,-20.44) (56.843,-21.06),Pull (53.571,-20.85) (50.300,-20.65),Pull (48.664,-20.65) (47.028,-20.65),Pull (46.824,-19.83) (46.619,-19.01),Pull (46.619,-17.99) (46.619,-16.97),Pull (46.006,-14.72) (45.392,-12.47),Pull (44.575,-11.65) (43.757,-10.83),Pull (43.348,-10.42) (42.939,-10.01),Pull (41.303,-8.996) (39.667,-7.974),Pull (37.623,-5.520) (35.578,-3.067),Pull (33.942,-0.817) (32.306,1.4313),Pull (30.261,3.6805) (28.217,5.9297),Pull (28.012,6.1341) (27.808,6.3386),Pull (24.536,7.5654) (21.265,8.7923),Pull (17.175,10.428) (15.130,11.654)]
              |> filled ( rgb 188 46 15)
           ,
             curve (57.661,-20.65) [Pull (56.843,-19.42) (56.025,-18.19),Pull (55.616,-16.97) (55.207,-15.74),Pull (57.661,-16.15) (60.115,-16.56),Pull (62.773,-16.56) (65.431,-16.56),Pull (68.702,-17.17) (71.974,-17.78),Pull (75.246,-17.78) (78.517,-17.78),Pull (82.198,-18.40) (85.878,-19.01),Pull (89.354,-19.42) (92.830,-19.83),Pull (93.853,-20.03) (94.875,-20.24),Pull (95.284,-25.55) (95.693,-30.87),Pull (95.079,-30.87) (94.466,-30.87),Pull (91.399,-31.89) (88.332,-32.92),Pull (86.900,-34.76) (85.469,-36.60),Pull (84.242,-39.46) (83.015,-42.32),Pull (83.220,-45.59) (83.424,-48.86),Pull (83.220,-52.34) (83.015,-55.82),Pull (82.811,-58.27) (82.607,-60.72),Pull (81.380,-60.93) (80.153,-61.13),Pull (79.130,-60.72) (78.108,-60.31),Pull (76.472,-60.11) (74.837,-59.91),Pull (73.201,-58.68) (71.565,-57.45),Pull (69.111,-54.59) (66.658,-51.73),Pull (64.613,-48.86) (62.568,-46.00),Pull (62.364,-43.55) (62.159,-41.09),Pull (63.182,-39.66) (64.204,-38.23),Pull (65.840,-35.98) (67.476,-33.73),Pull (68.907,-32.92) (70.338,-32.10),Pull (71.156,-31.07) (71.974,-30.05),Pull (72.996,-28.42) (74.019,-26.78),Pull (72.587,-25.76) (71.156,-24.74),Pull (69.316,-24.53) (67.476,-24.33),Pull (66.658,-23.10) (65.840,-21.87),Pull (65.022,-21.46) (64.204,-21.06),Pull (63.386,-20.85) (62.568,-20.65),Pull (61.546,-20.44) (60.523,-20.24),Pull (59.092,-20.44) (57.661,-20.65)]
             |> filled ( rgb 188 46 15)
           ,
              curve (45.801,-35.37) [Pull (43.961,-35.16) (42.121,-34.96),Pull (40.281,-34.35) (38.440,-33.73),Pull (36.600,-33.53) (34.760,-33.32),Pull (32.102,-33.32) (29.444,-33.32),Pull (25.968,-33.73) (22.492,-34.14),Pull (19.629,-34.35) (16.766,-34.55),Pull (14.517,-34.76) (12.268,-34.96),Pull (10.428,-34.76) (8.5878,-34.55),Pull (8.3833,-36.19) (8.1789,-37.82),Pull (8.9968,-39.46) (9.8146,-41.09),Pull (13.699,-45.80) (17.584,-50.50),Pull (19.424,-51.32) (21.265,-52.14),Pull (22.900,-52.75) (24.536,-53.36),Pull (26.172,-53.57) (27.808,-53.77),Pull (30.875,-52.95) (33.942,-52.14),Pull (37.827,-46.82) (41.712,-41.50),Pull (43.348,-41.09) (44.984,-40.69),Pull (45.597,-38.64) (45.801,-35.37)]
             |> filled (rgb 132 97 45)
           ,
             curve (-38.44,-4.293) [Pull (-37.62,-6.543) (-36.80,-8.792),Pull (-35.98,-11.45) (-35.16,-14.10),Pull (-33.12,-16.56) (-31.07,-19.01),Pull (-29.03,-20.44) (-26.99,-21.87),Pull (-25.76,-23.10) (-24.53,-24.33),Pull (-23.92,-26.99) (-23.30,-29.64),Pull (-22.28,-33.12) (-21.26,-36.60),Pull (-21.46,-37.82) (-21.67,-39.05),Pull (-24.94,-39.25) (-28.21,-39.46),Pull (-28.62,-39.25) (-29.03,-39.05),Pull (-30.87,-37.62) (-32.71,-36.19),Pull (-33.73,-34.35) (-34.76,-32.51),Pull (-34.76,-32.51) (-34.76,-32.51),Pull (-38.03,-29.23) (-41.30,-25.96),Pull (-43.14,-24.12) (-44.98,-22.28),Pull (-45.80,-20.65) (-46.61,-19.01),Pull (-46.82,-15.74) (-47.02,-12.47),Pull (-47.02,-10.63) (-47.02,-8.792),Pull (-46.82,-7.361) (-46.61,-5.929),Pull (-45.39,-4.293) (-44.16,-2.658),Pull (-42.32,-3.067) (-40.48,-3.476),Pull (-39.05,-4.089) (-38.44,-4.293)]
             |> filled (rgb 132 97 45)
          ,
             curve (-32.71,-5.929) [Pull (-33.12,-4.907) (-33.53,-3.884),Pull (-34.96,-3.884) (-36.39,-3.884),Pull (-36.80,-4.293) (-37.21,-4.702),Pull (-37.00,-5.725) (-36.80,-6.747),Pull (-37.00,-8.383) (-37.21,-10.01),Pull (-37.00,-12.26) (-36.80,-14.51),Pull (-35.57,-15.74) (-34.35,-16.97),Pull (-32.30,-18.81) (-30.26,-20.65),Pull (-28.01,-21.87) (-25.76,-23.10),Pull (-23.10,-23.92) (-20.44,-24.74),Pull (-19.01,-25.15) (-17.58,-25.55),Pull (-15.53,-26.37) (-13.49,-27.19),Pull (-11.24,-28.21) (-8.996,-29.23),Pull (-7.156,-29.85) (-5.316,-30.46),Pull (-3.067,-31.07) (-0.817,-31.69),Pull (0.8178,-32.92) (2.4536,-34.14),Pull (5.7252,-35.37) (8.9968,-36.60),Pull (11.246,-36.39) (13.495,-36.19),Pull (14.926,-35.98) (16.357,-35.78),Pull (18.607,-35.78) (20.856,-35.78),Pull (24.536,-35.78) (28.217,-35.78),Pull (30.875,-35.37) (33.533,-34.96),Pull (35.578,-34.76) (37.623,-34.55),Pull (40.076,-35.16) (42.530,-35.78),Pull (45.597,-35.98) (48.664,-36.19),Pull (51.118,-37.41) (53.571,-38.64),Pull (55.616,-41.30) (57.661,-43.96),Pull (58.683,-44.57) (59.706,-45.18),Pull (61.137,-45.59) (62.568,-46.00),Pull (62.773,-44.37) (62.977,-42.73),Pull (62.568,-41.71) (62.159,-40.69),Pull (61.137,-39.25) (60.115,-37.82),Pull (57.865,-36.60) (55.616,-35.37),Pull (54.185,-34.76) (52.753,-34.14),Pull (51.118,-33.53) (49.482,-32.92),Pull (48.051,-32.51) (46.619,-32.10),Pull (44.370,-31.48) (42.121,-30.87),Pull (41.099,-30.67) (40.076,-30.46),Pull (37.418,-29.44) (34.760,-28.42),Pull (33.533,-28.21) (32.306,-28.01),Pull (30.466,-27.80) (28.626,-27.60),Pull (28.217,-27.60) (27.808,-27.60),Pull (26.172,-27.19) (24.536,-26.78),Pull (20.447,-25.76) (16.357,-24.74),Pull (12.881,-23.51) (9.4057,-22.28),Pull (7.9744,-22.08) (6.5431,-21.87),Pull (6.5431,-21.87) (6.5431,-21.87),Pull (3.2715,-21.26) (0,-20.65),Pull (-3.680,-19.83) (-7.361,-19.01),Pull (-10.01,-18.60) (-12.67,-18.19),Pull (-12.67,-18.19) (-12.67,-18.19),Pull (-15.33,-16.97) (-17.99,-15.74),Pull (-21.67,-14.31) (-25.35,-12.88),Pull (-28.21,-10.42) (-32.71,-5.929)]
             |> filled (rgb 229 151 50)

              ]
                  |>scale 0.5  ]

        myBackground = square 200 |> filled white
    in (("SuccessfulCinnamon",myWord,"6"),("Coral Trout","Saginaw",myShapes))

  ,    let
        myWord = "loggerhead turtle" -- put your work here (in quotes) --
        myCode = 50006 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [
                          square 100
                          |> filled (rgb 0 166 185)
                          ,curve (-87.51,32.511) [Pull (-93.25,23.718) (-82.19,14.926),Pull (-74.01,8.7488) (-65.84,16.971),Pull (-59.29,25.215) (-52.75,21.060),Pull (-43.09,11.859) (-65.43,2.6581),Pull (-71.80,1.9642) (-63.38,-5.929),Pull (-54.10,-12.65) (-56.02,1.0223),Pull (-56.34,7.6805) (-48.25,6.3386),Pull (-40.19,5.7865) (-42.93,-7.565),Pull (-39.43,-16.01) (-33.53,6.3386),Pull (-31.21,16.023) (-41.30,14.108),Pull (-53.46,19.656) (-37.62,27.603),Pull (-30.25,34.644) (-58.47,31.284),Pull (-66.04,30.466) (-73.61,29.648),Pull (-81.88,29.533) (-80.15,37.418),Pull (-80.82,44.276) (-87.10,42.734),Pull (-92.17,42.076) (-93.23,37.418),Pull (-91.39,32.605) (-89.55,36.191),Pull (-81.92,37.746) (-86.69,32.102),Pull (-87.30,31.693) (-87.92,31.284)]
                          |> filled (rgb 100 250 100)
                          |> move (70,0)
                          ,group [
                          curve (-40.07,-1.840) [Pull (-38.62,3.8492) (-35.57,6.3386),Pull (-32.71,8.9968) (-29.85,11.654),Pull (-27.80,13.495) (-25.76,15.335),Pull (-23.51,15.539) (-21.26,15.744),Pull (-19.22,16.153) (-17.17,16.562),Pull (-14.51,18.607) (-11.85,20.651),Pull (-8.996,22.287) (-6.134,23.923),Pull (-3.271,24.332) (-0.408,24.741),Pull (3.2715,25.354) (6.9520,25.968),Pull (10.428,26.172) (13.904,26.376),Pull (16.153,26.581) (18.402,26.785),Pull (21.469,25.150) (24.536,23.514),Pull (27.603,21.674) (30.670,19.833),Pull (32.511,18.198) (34.351,16.562),Pull (36.191,14.108) (38.031,11.654),Pull (35.036,4.7028) (38.440,-2.249),Pull (34.555,-6.952) (30.670,-11.65),Pull (28.217,-15.74) (25.763,-19.83),Pull (23.309,-22.08) (20.856,-24.33),Pull (17.584,-25.76) (14.313,-27.19),Pull (11.246,-27.80) (8.1789,-28.42),Pull (3.8849,-28.62) (-0.408,-28.83),Pull (-3.680,-28.01) (-6.952,-27.19),Pull (-10.63,-25.96) (-14.31,-24.74),Pull (-17.99,-22.49) (-21.67,-20.24),Pull (-23.71,-18.19) (-25.76,-16.15),Pull (-30.05,-14.92) (-34.35,-13.69),Pull (-36.60,-11.45) (-38.84,-9.201),Pull (-39.05,-6.134) (-39.25,-3.067)]
                          |> filled (rgb 50 0 0)
                          ,curve (26.990,-19.42) [Pull (31.079,-15.53) (35.169,-11.65),Pull (42.063,-13.92) (43.757,-18.19),Pull (44.166,-23.10) (44.575,-28.01),Pull (42.325,-30.05) (40.076,-32.10),Pull (37.827,-34.96) (35.578,-37.82),Pull (33.738,-39.25) (31.897,-40.69),Pull (28.830,-43.34) (25.763,-46.00),Pull (23.309,-48.25) (20.856,-50.50),Pull (17.993,-52.54) (15.130,-54.59),Pull (12.881,-55.20) (10.632,-55.82),Pull (10.837,-53.16) (11.041,-50.50),Pull (12.677,-48.46) (14.313,-46.41),Pull (16.562,-44.16) (18.811,-41.91),Pull (20.242,-39.46) (21.674,-37.00),Pull (23.105,-34.76) (24.536,-32.51),Pull (26.581,-30.26) (28.626,-28.01),Pull (28.421,-25.55) (28.217,-23.10),Pull (28.012,-21.46) (27.808,-19.83)]
                          |> filled (rgb 250 150 150)
                          |> rotate (0.1*sin model.time)
                          ,curve (24.536,-19.01) [Pull (27.399,-13.69) (30.261,-8.383),Pull (35.373,-11.65) (40.485,-14.92),Pull (34.964,-17.78) (29.444,-20.65),Pull (26.990,-20.44) (24.536,-20.24)]
                          |> filled (rgb 250 150 150)
                          |> rotate (0.1*sin model.time)
                          ,curve (29.853,21.060) [Pull (32.715,17.789) (35.578,14.517),Pull (42.699,15.807) (46.619,22.696),Pull (46.570,28.626) (42.121,34.555),Pull (38.645,38.849) (35.169,43.143),Pull (30.057,44.779) (24.945,46.415),Pull (23.923,44.575) (22.900,42.734),Pull (24.127,40.281) (25.354,37.827),Pull (27.194,33.738) (29.035,29.648),Pull (30.670,28.012) (32.306,26.376),Pull (31.488,24.741) (30.670,23.105),Pull (29.444,22.287) (28.217,21.469),Pull (29.648,20.447) (31.079,19.424)]
                          |> filled (rgb 250 150 150)
                          |> rotate (-0.1*sin model.time)
                          ,curve (38.440,12.472) [Pull (34.445,4.4984) (38.849,-3.476),Pull (43.348,-4.089) (47.846,-4.702),Pull (50.300,-5.520) (52.753,-6.338),Pull (55.412,-6.134) (58.070,-5.929),Pull (59.910,-4.293) (61.750,-2.658),Pull (64,-0.613) (66.249,1.4313),Pull (67.067,3.2715) (67.884,5.1118),Pull (66.658,7.5654) (65.431,10.019),Pull (62.773,11.859) (60.115,13.699),Pull (57.047,13.904) (53.980,14.108),Pull (51.527,13.086) (49.073,12.063),Pull (48.460,11.041) (47.846,10.019),Pull (43.552,10.632) (39.258,11.246)]
                          |> filled (rgb 250 150 150)
                          ,curve (-33.94,7.1565) [Pull (-36.19,8.1789) (-38.44,9.2012),Pull (-38.64,10.632) (-38.84,12.063),Pull (-38.44,14.108) (-38.03,16.153),Pull (-37.62,17.789) (-37.21,19.424),Pull (-35.37,19.833) (-33.53,20.242),Pull (-31.89,20.447) (-30.26,20.651),Pull (-27.19,18.811) (-24.12,16.971),Pull (-25.96,15.335) (-27.80,13.699),Pull (-31.28,10.632) (-34.76,7.5654)]
                          |> filled (rgb 250 150 150)
                          ,curve (-21.67,-19.42) [Pull (-32.92,-24.12) (-44.16,-28.83),Pull (-47.43,-27.60) (-50.70,-26.37),Pull (-48.86,-22.49) (-47.02,-18.60),Pull (-46.21,-17.38) (-45.39,-16.15),Pull (-42.73,-14.51) (-40.07,-12.88),Pull (-37.41,-12.47) (-34.76,-12.06),Pull (-29.23,-13.90) (-23.71,-15.74),Pull (-22.08,-17.99) (-20.44,-20.24)]
                          |> filled (rgb 250 150 150)
                          ,curve (60.932,1.4313) [Pull (60.115,0.6134) (59.297,-0.204),Pull (60.319,-1.022) (61.341,-1.840),Pull (62.364,-0.613) (63.386,0.6134),Pull (62.568,1.0223) (61.750,1.4313)]
                          |> filled (rgb 0 0 0)
                          ,curve (62.568,9.2012) [Pull (61.341,9.4057) (60.115,9.6102),Pull (60.932,10.223) (61.750,10.837),Pull (62.977,9.2012) (64.204,7.5654)]
                          |> filled (rgb 0 0 0)
                          ]
                          |> scale 0.65

                          ]


        myBackground = square 200 |> filled pink
    in (("GratefulParrot",myWord,"6"),("loggerhead turtle","Northlake Woods",myShapes))

  ,    let
        myWord = "pencil" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         ,pencil |> scale (3/4)


                        ]

        pencil = group [rect 20 80
                  |> filled orange

                  , square 20
                  |> filled pink
                  |> rotate (degrees 810)
                  |> move (0,-30)
                  , triangle 12


                  |> filled  lightBrown
                  |> rotate (degrees 810)
                  |> move (0,45)
                  , triangle 5
                  |> filled black
                  |> rotate (degrees 810)
                  |> move (0,52)


                  ]


        myBackground = square 200 |> filled white


    in (("KindChestnut",myWord,"6"),("The Pencil","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "stove" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         ,square 70
                         |> filled lightCharcoal
                         |> move (0,-30)
                         ,rect 70 20
                         |> filled charcoal
                         |> move (0,-50)
                         ,rect 50 25
                         |> filled darkCharcoal
                         |> move (0,-20)
                         |> makeTransparent 0.5
                         ,polygon [(-35,1),(-31,31),(31,31),(35,1)]
                         |> filled charcoal
                         ,circle 5.8
                         |> filled lightCharcoal
                         |> move (-16,22.5)
                         ,circle 5.8
                         |> filled lightCharcoal
                         |> move (16,22.5)
                         ,circle 6.3
                         |> filled (if (sin model.time) > 0 then red else lightCharcoal)
                         |> move (16,8)
                         ,circle 6.3
                         |> filled lightCharcoal
                         |> move (-16,8)
                         ,rect 63 13
                         |> filled lightCharcoal
                         |> move (0,36.5)
                         ,circle 2.5
                         |> filled charcoal
                         |> move (-11,37)
                         ,circle 2.5
                         |> filled charcoal
                         |> move (-22,37)
                         ,circle 2.5
                         |> filled charcoal
                         |> move (11,37)
                         ,circle 2.5
                         |> filled charcoal
                         |> move (22,37)
                         ,rect 12 5
                         |> filled charcoal
                         |> move (0,37)
                         ]
        myBackground = square 200 |> filled lightBrown
    in (("LoudCitron",myWord,"6"),("stove","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "gnome" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [group [ circle 50
          |> filled lightYellow
          ,oval 15 30
          |> filled red
          |> rotate (degrees 90)
          |> move (0,-30)
          ,circle 10
          |> filled black
          |> move (20,15)
          ,  circle 10
          |> filled black
          |> move (-20,15)
          ,triangle 10
          |> filled darkGray
          |> rotate (degrees 90)
          |> move (0,0)
          ,triangle 50
          |> filled red
          |> rotate (degrees 90)
          |> move (0,55)
          ,oval 10 20
          |> filled darkYellow
          |> rotate (degrees 180)
          |> move ( 50,0)
          ,oval 10 20
          |> filled darkYellow
          |> rotate (degrees 180)
          |> move (-50,0)
          ,wedge 40 0.75
          |> filled blue
          |> rotate (degrees 270)
          |> move (0,-60)
          ] |> scale 0.6
            |> move(0,-15)

          ]
    in (("PowerfulCoral",myWord,"6"),("Gnome","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "hammerhead shark" -- put your work here (in quotes) --
        myCode = 50006 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [group [ myBackground
                         , curve (21.878,13.290) [Pull (23.105,13.904) (24.332,14.517),Pull (22.083,16.153) (19.833,17.789),Pull (13.904,19.424) (7.9744,21.060),Pull (7.9744,22.492) (7.9744,23.923),Pull (10.019,24.741) (12.063,25.559),Pull (14.517,25.968) (16.971,26.376),Pull (21.878,25.150) (26.785,23.923),Pull (34.146,21.674) (41.507,19.424),Pull (48.869,15.948) (56.230,12.472),Pull (59.910,7.7699) (63.591,3.0670),Pull (62.977,2.6581) (62.364,2.2492),Pull (59.501,1.6357) (56.638,1.0223),Pull (55.003,1.8402) (53.367,2.6581),Pull (49.482,4.2939) (45.597,5.9297),Pull (39.872,1.2268) (34.146,-3.476),Pull (27.603,-5.929) (21.060,-8.383),Pull (21.265,-14.92) (21.469,-21.46),Pull (20.856,-25.35) (20.242,-29.23),Pull (16.357,-22.90) (12.472,-16.56),Pull (9.2012,-14.10) (5.9297,-11.65),Pull (-0.408,-11.04) (-6.747,-10.42),Pull (-17.38,-14.31) (-28.01,-18.19),Pull (-20.44,-13.29) (-12.88,-8.383),Pull (-22.90,-5.929) (-32.92,-3.476),Pull (-39.87,-1.022) (-46.82,1.4313),Pull (-54.38,4.9073) (-61.95,8.3833),Pull (-67.27,3.8849) (-72.58,-0.613),Pull (-75.24,-1.431) (-77.90,-2.249),Pull (-75.24,4.4984) (-72.58,11.246),Pull (-78.92,26.581) (-85.26,41.916),Pull (-85.46,43.757) (-85.67,45.597),Pull (-74.42,31.079) (-63.18,16.562),Pull (-44.57,16.357) (-25.96,16.153),Pull (-16.97,17.789) (-7.974,19.424),Pull (-6.338,21.878) (-4.702,24.332),Pull (-4.089,30.057) (-3.476,35.782),Pull (-2.658,38.236) (-1.840,40.690),Pull (1.4313,35.169) (4.7028,29.648),Pull (5.3162,25.763) (5.9297,21.878),Pull (7.9744,21.469) (10.019,21.060),Pull (11.041,20.651) (12.063,20.242)]
              |> filled (rgb 150 152 156)

          , curve (31.897,9.6102) [Pull (34.555,9.4057) (37.214,9.2012),Pull (39.463,7.9744) (41.712,6.7476),Pull (40.894,6.7476) (40.076,6.7476),Pull (37.827,7.1565) (35.578,7.5654),Pull (33.329,8.3833) (31.079,9.2012)]
             |> filled black

          , circle 2
             |> filled black
             |> move (15,23)

             , circle 2
             |> filled black
             |> move (60,5)


                         ] |> scale 0.6 |> move (10,0) ]

        myBackground = square 200 |> filled blue
    in (("GlamorousCuckoo",myWord,"6"),("Hammerhead Shark","given to WRDSBGiftedReplacementsAndNew",myShapes))

  ,    let
        myWord = "squid" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [group [ circle 40
          |> filled lightBlue
          |> move (0,20)
          ,square 40
          |> filled lightBlue
          |> move (0,-15)
          ,oval 15 80
          |> filled lightBlue
          |> rotate (degrees 90)
          |> move (0,-40)
          ,circle 10
          |> filled lightYellow
          |> move (20,20)
          ,circle 10
          |> filled lightYellow
          |> move (-20,20)
          ,circle 5
          |> filled red
          |> move (20,20)
          ,circle 5
          |> filled red
          |> move (-20,20)
          ,
          oval 5 50
          |> filled black
          |> rotate (degrees 90)
          |> move (0,-40)
          ,oval 60 20
          |> filled blue
          |> rotate (degrees 90)
          |> move (0,-20)
          ,oval 5 20
          |> filled black
          |> rotate (degrees 90)
          |> move (20,30)
          ,oval 5 20
          |> filled black
          |> rotate (degrees 90)
          |> move (-20,30)
          ] |> scale 0.75 ]
    in (("PowerfulCoral",myWord,"6"),("squidward","given to StephanieLMay2019",myShapes))

  ,    let
        myWord = "crab" -- put your work here (in quotes) --
        myCode = 50006 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [
                  group [
                  rect 100 10
                    |> filled red
                  , rect 100 10
                    |> filled yellow
                    |> move(0,-10)
                  , rect 100 10
                    |> filled red
                    |> move(0,-20)
                  , rect 100 10
                    |> filled yellow
                    |> move(0,-30)
                  , rect 100 10
                    |> filled yellow
                    |> move(0,10)
                  , rect 100 10
                    |> filled red
                    |> move(0,20)
                  , rect 100 10
                    |> filled yellow
                    |> move(0,30)
                  ]
                    |> clip
                      (
                        curve (-78.58,13.935) [Pull (-78.77,-4.645) (-78.96,-23.22),Pull (-68.90,-24.77) (-58.83,-26.32),Pull (-58.45,-6.193) (-58.06,13.935),Pull (-52.64,10.838) (-47.22,7.7419),Pull (-44.70,11.032) (-42.19,14.322),Pull (-47.80,19.548) (-53.41,24.774),Pull (-67.35,22.662) (-81.29,27.870),Pull (-87.67,23.225) (-94.06,18.580),Pull (-90.19,13.935) (-86.32,9.2903),Pull (-83.22,11.225) (-78.58,13.935),Pull (-46.64,-19.35) (-14.70,-52.64)]
                          |> filled black
                          |> move(60,0)

                      )

                  {-group [
                          curve (1.1612,21.290) [Pull (-4.084,21.870) (-9.290,21.290),Pull (-12.96,20.903) (-16.64,20.516),Pull (-20.70,19.161) (-24.77,17.806),Pull (-27.48,16.645) (-30.19,15.483),Pull (-31.74,12.387) (-33.29,9.2903),Pull (-31.74,6.1935) (-30.19,3.0967),Pull (-27.29,1.5483) (-24.38,0),Pull (-21.09,-0.967) (-17.80,-1.935),Pull (-12.19,-2.903) (-6.580,-3.870),Pull (0.1935,-4.451) (6.9677,-5.032),Pull (10.838,-4.645) (14.709,-4.258),Pull (19.161,-3.483) (23.612,-2.709),Pull (29.225,-0.580) (34.838,1.5483),Pull (36.387,3.8709) (37.935,6.1935),Pull (38.129,8.1290) (38.322,10.064),Pull (36,12.580) (33.677,15.096),Pull (29.806,16.838) (25.935,18.580),Pull (21.870,19.548) (17.806,20.516),Pull (9.4838,20.903) (1.1612,21.290)]
                          |> outlined (solid 3) (rgb 226 111 22)
                          ,
                          rect 10 10
                          |> filled (rgb 226 111 22)
                          ]
                          |> move (20,20)-}
                         ]


    in (("unknown",myWord,"6"),("crab","unknown",myShapes))

  ,    let
        myWord = "penguin" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [
           oval 5 10
          |> outlined (solid 1) (rgb 0 0 0)
          |> scale 2
          |> scaleX 2
          |> scaleY 2 ,
          oval 12 12
          |> filled (rgb 0 0 0)
          |> scaleY 2
          |> rotate (degrees 88)
          |> move (7,22),
          oval 10 3
          |> filled black
          |> scale 3
          |> scaleX 1
          |> scaleY 1
          |> rotate (degrees 70)
           |> move (-10 ,0) ,

                oval 10 3
          |> filled black
          |> scale 3
          |> scaleX 1
           |> move (-5, -12)
           |> rotate (degrees 105) ,

          circle 2
          |> filled white
          |> move (2, 24),

          triangle 5
          |> filled yellow
          |> rotate (degrees 30)
           |> move (-5, -22),

           triangle 5

          |> filled yellow
          |> rotate (degrees 30)
          |> move (5, -22)
                    ]

        myBackground = square 200 |> filled black
    in (("GloriousZebra",myWord,"6"),("Penguin","given to PedramMay2019",myShapes))

  ,    let
        myWord = "bird" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [bird model |> move (0,22*sin(1*model.time))
                               |> rotate (100*sin(model.time))
                            ]

        bird model = group [ square 300 |> filled hotPink
            ,polygon [(-20,0),(0,-10),(50,0)]
            |> filled yellow
            |> rotate (degrees 30)
            |> move (5,15)


            ,curve (0,0) [Pull (-113,123) (121,163)]
            |> filled purple
            |> move (55,3)
            |> scale 0.50
            |> rotate (720)
          , circle 20
            |> filled blue
            |> rotate (degrees 30)
            |> move (-10,0)
            ,circle 5
          |> filled black
          |> move (0,5 )

          ,curve (0,0) [Pull (-100,68) (-61,-37) ]
          |> filled green
           |> move (-45,-50)
           |> scale 0.5
            ]

    in (("GarrulousWalnut",myWord,"6"),("crazy hummingbird","given to PedramMay2019",myShapes))

  ,    let
        myWord = "sack" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ wedge 10 0.5
          |> filled lightBrown
          |> scale 3
          |> rotate (degrees -90)
          |> move (0,-10)

          ,wedge 10 0.5
          |> filled lightBrown
          |> scale 3
          |> rotate (degrees 90)
          |> move (0,-10)

          ,triangle 34
          |> filled lightBrown
          |> rotate (degrees 90)
          |> move (0,13)

          ,text "$"
          |> filled green
          |>scale 3
          |> move (-10,-15)]
    in (("HopefulBear",myWord,"6"),("Sack","given to PedramMay2019",myShapes))

  ,    let
        myWord = "cherry" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         ,circle 20
          |> filled red
          ,
          curve (0,0) [Pull (10,0) (20,-10)]
          |> filled green
          |> scale 2
          |> rotate (degrees 90)
          |> move(10,9)


          ]


        myBackground = square 200 |> filled pink

    in (("WittyOrchid",myWord,"6"),("cherry","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "basket" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , wedge 15 0.50
                             |> outlined (solid 1) black
                             |> rotate (degrees -270)
                             |> move (0,14)

                         , square 30
                             |> filled lightBrown


                        ]

        myBackground = square 200 |> filled white


    in (("WigglyOlive",myWord,"6"),("basket","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "cherries" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [group [ myBackground


                        , curve (0,0) [Pull (10,0) (20,-10)]
          |> filled brown
          |> scale 1.5
          |> scaleX 1.5
          |> rotate (degrees 750)
          |> move (-32, 33)
                              ,   curve (0,0) [Pull  (10,0) (20,-10)]
                              |> filled brown
                              |> scale 1.5
                              |> scaleX 1.5
                  |> rotate (degrees 511)

                             ,  circle 40
          |> filled red
          |> scale 0.5
          |> rotate (degrees 420)
          |> move (22, 33)

                           , circle 40
          |> filled red
          |> scale 0.5
          |> rotate (degrees 420)

               , wedge 20 0.5
          |> filled white
          |> scale 0.4
          |> scaleX 1
          |> rotate (degrees 948)
          |> move (-5, -5)
                     ] |> scale 0.75 ]

        myBackground = square 200 |> filled pink

    in (("StudiousMarigold",myWord,"6"),("cherrys","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "metal"
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [
                            circle 10

                              |> filled (rgb 230 125 50)




                         , wedge 13 0.75
                          |> filled black
                          |> rotate (degrees 90)
                          |> move (0,10)
                          ,circle 10

                          |> filled lightOrange

                          ,wedge 11 0.65
                              |> filled white
                              |> rotate (degrees 90)
                              |> move (0,10)
                       ,circle 10

                          |> filled lightOrange

                          ,curve (0,0) [Pull (10,0) (20,-10)]
                         |> filled white
                         |> scaleX 0.45
                         |> scaleY 0.45
                         |> rotate (degrees 330)
                         |> move (3,7)

                         ,rect 5 13
                        |> filled black
                        |> scaleX 0.75
                        |> scaleY 0.75
          , rect 30 10
          |> filled black
          |> scaleX 0.30
          |> scaleY 0.30
          |> move (0,-5)

          ,rect 10 8
          |> filled black
          |> scaleX 0.7
          |> scaleY 0.3
          |> rotate (degrees 510)
          |> move (0.8,5)
                         ]

        myBackground = square 200 |> filled white




    in (("AmusedParrot",myWord,"6"),("Badge","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "caterpillar" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ circle 27
                           |> filled pink
                           , triangle 23
                           |> filled blue
                           |> rotate model.time
                           |> rotate (degrees 90)
                           , circle 10
                           |> filled green
                           |> move (sin model.time*(20),0)
                           |> rotate model.time
                           |> rotate (degrees 90)
                           , circle 10
                           |> filled green
                            , circle 10
                           |> filled green
                           |> move (sin model.time*(20),0)
                           |> rotate model.time
                           |> rotate (degrees -90)
                           , eye
                           |> move (4 + 20 * (sin model.time)^2,-3)
                           |> rotate model.time
                           |> rotate (degrees 90)
                           , eye
                           |> move (4 + 20 * (sin model.time)^2,3)
                           |> rotate model.time
                           |> rotate (degrees 90)

                           ]

        eye = group [ circle 2
                        |> filled white
                     , circle 1.1
                        |> filled black
                     , circle 0.5
                        |> filled white
                        |> move (0.3,-0.3)

                  ]

        mybackround = square 200 |> filled blue

    in (("LittleChicory",myWord,"6"),("moving shapes","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "turtle" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
          ,oval 10 15
          |> filled darkGreen
          |> scale 1
          |> rotate (degrees 30)
          |> move (20,-20)
          ,oval 10 15
          |> filled darkGreen
          |> scale 1
          |> rotate (degrees 150)
          |> move (-20,-20)
          ,oval 10 15
          |> filled darkGreen
          |> scale 1
          |> rotate (degrees 240)
          |> move (-20,20)
          ,oval 10 15
          |> filled darkGreen
          |> scale 1
          |> rotate (degrees 120)
          |> move (20,20)
          ,circle 10
          |> filled darkBrown
          |> scale 2.25
          |> rotate (degrees 120)
          |> move (0,0)
          ,circle 10
          |> filled darkGreen
          |> rotate (degrees 30)
          |> move (0,30)
          ,circle 10
          |> filled white
          |> move (-15,130)
          |> scale 0.25
          ,circle 10
          |> filled white
          |> move (15,130)
          |> scale 0.25
          ,curve (0,0) [Pull (10,0) (20,-10)]
          |> filled black
          |> rotate (degrees -330)
          |> move (-10,74)
          |> scale 0.5
          ,circle 10
          |> filled black
          |> move (-17,215)
          |> scale 0.15
          ,circle 10
          |> filled black
          |> move (32,215)
          |> scale 0.15
          ]

        myBackground = square 200 |> filled lightBlue
    in (("SmilingLion",myWord,"6"),("turtle","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "boot" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , wedge 10 0.75
          |> filled brown
          |> scale 2
          |> scaleY 2
          |> rotate (degrees -90)


           , rect 20 15
          |> filled brown
          |> scale 1.75
          |> scaleX 1.75
          |> rotate (degrees 90)
          |> move (25,10)

         ]


        myBackground = square 200 |> filled white






















































































    in (("KeenCherry",myWord,"6"),("boot","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "cherries" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [ myBackground
                       ,curve (-5,0) [Pull (10,0) (20,-10)]
          |> filled lightGreen
          |> scale 1.75
          |> rotate (degrees -270)
          |> move (0,0)
                      ,curve (-5,0) [Pull (10,0) (20,-10)]
          |> filled lightGreen
          |> scale 1.75
          |> rotate (degrees -390)
          |> move (11,30)
                        ,circle 13
          |> filled lightRed
          |> rotate (degrees -90)
          |> move (0,0)
                        ,circle 13
          |> filled lightRed
          |> rotate (degrees -390)
          |> move (30,0)
                        ,roundedRect 10 15 5
          |> filled lightGreen
          |> scale 1.08
          |> rotate (degrees -450)
          |> move (12,30)
                         ] |> move (-15,-10)
                    ]

        myBackground = square 200 |> filled pink
    in (("AdventurousPanther",myWord,"6"),("cherries","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "bushes"-- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground

                          ,rect 30 15
          |> filled green
          |> scale 2
          |> scaleX 2
          |> rotate (degrees -360)
          |> move (0,-40)
          ,circle 30
          |> filled green
          |> move (0,-20)
          ,circle 30
          |> filled green
          |> move (-30,-20)
          ,circle 30
          |> filled green
          |> move (30,-20)


                         ]

        myBackground = square 200 |> filled pink
    in (("StrongMaple",myWord,"6"),("Sugar","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "soccerball"

        soccerBall = group
                      [circle 40
                       |>  outlined (solid 1) black
                       ,ngon 5 20 |> filled black
                       ,glassPattern |> move(0,12) |> scale 1.5
                       ,lines
                       ,block
                       ,block2 |> move(-1,0) |> rotate (degrees -72)
                       ,block3
                       ,block |> rotate (degrees 69)
                       ,block3 |> rotate (degrees -75)
                      ]
        block3 = group [block  |> move(0,0.25) |> rotate (degrees -145)
                       ,rect 15 2 |> filled black |> move (0,-32)

                 ]
        block = group [polygon [(13,38), (30,26), (24.5,22) , (12,31) ] |> filled black
                   ,curve (13.5,39) [Pull (23,38) (30,28)] |> filled black |> rotate (degrees -2) |> move(0,-2)]
        block2 = group [polygon [(13,39), (30,27), (24.5,22) , (12,31) ] |> filled black
                   ,curve (13.5,40) [Pull (23,38) (30,29)] |> filled black |> rotate (degrees -2) |> move(0,-2)]


        lines = group [rect 1 8 |> filled black |> move(12.5,34) |> rotate (degrees -10)
                       ,rect 1 8 |> filled black |> move(-12.5,34) |> rotate (degrees 10)
                       ,rect 1 8 |> filled black |> move(8.5,-34.5) |> rotate (degrees 15)
                       ,rect 1 8 |> filled black |> move(-8.5,-34.5) |> rotate (degrees -15)
                       ,rect 1 8 |> filled black |> move(27.5,23.5) |> rotate (degrees -55)
                       ,rect 1 8 |> filled black |> move(-27.5,23.5) |> rotate (degrees 55)
                       ,rect 1 8 |> filled black |> move(35.5,-1.25) |> rotate (degrees -80)
                       ,rect 1 8 |> filled black |> move(-35.5,-1.25) |> rotate (degrees 80)
                       ,rect 1 8 |> filled black |> move(31,-18) |> rotate (degrees -125)
                       ,rect 1 8 |> filled black |> move(-31,-18) |> rotate (degrees 125)]
        hex2 = ngon 6 5  |> filled white |> addOutline (solid 0.5) black |> scaleX 2 |> scaleY 1.5

        glassPattern = group[hex2 |> rotate (degrees 36)|> move (-8.5,0)
                       ,hex2 |> rotate (degrees -36) |> move (8.5,0)
                       ,hex2 |> rotate (degrees 72) |> move (13.5,-16)
                       ,hex2 |> rotate (degrees -72) |> move (-13.5,-16)
                       ,hex2 |> move (0,-26)
                      ]

        myShapes model = [soccerBall]
    in (("ZealousPanda",myWord,"6"),("baby face","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "fangs" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [square 200 |> filled black
                        , fangs |> rotate model.time
                      ]

        fangs = group [   rect 5 90
                             |> filled red
                             |> rotate 300
                         ,triangle 10
                              |> filled white
                              |> scale 2
                              |> rotate (degrees 30)
                              |> move (25 ,-12)
                               ,triangle 10
                              |> filled white
                              |> scale 2
                              |> rotate (degrees 30)
                              |> move (-25 ,-12)

                         ]

    in (("FamiliarWatermelon",myWord,"6"),("Fangs","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "crown" -- put your work here (in quotes) --
        myCode = 5 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ circle 25
                         |> outlined (dotdash 1) (rgb 230 125 50)
                         |> rotate (degrees -60)
                         |> move (0,0)
                         , triangle 10
                         |> filled orange
                         |> rotate (degrees -75)
                         |> move (20,20)

                         , triangle 10
                         |> filled orange
                         |> rotate (degrees 130)
                         |> move (-20,20)
                         , triangle 10
                         |> filled orange
                         |> rotate (degrees 90)
                         |> move (0,30)


                        ]
    in (("SmartHawk",myWord,"6"),("crown","given to PedramMay2019",myShapes))

  ,    let
        myWord = "smoke" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ circle 30
          |> filled darkGray
          |> makeTransparent 0.5

          ,
           rect 30 45
           |> filled black
           |> move (0,-40)

           ,
            circle 30
            |> filled darkGray
            |> move (-20,-20)
            |> makeTransparent 0.5

            ,
             circle 30
             |> filled darkGray
             |> move (20,-20)
             |> makeTransparent 0.5

             ,
              circle 30
              |> filled darkGray
              |> move (20,20)
              |> makeTransparent 0.5

              ,
               circle 30
               |> filled darkGray
               |> move (-20,20)
               |> makeTransparent 0.5


                         ]


        myBackground = square 200 |> filled white
    in (("PuzzledFlamingo",myWord,"6"),("smoke","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "solar system" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [
                        circle 20
                          |> filled yellow
                          |> scale 1
                          |> move (-30,40)
                          |>addOutline (solid 1) darkYellow
                          ,

                          circle 5
                          |> filled grey
                          |> move (-10,10)
                          |>addOutline (solid 1) darkGrey
                          ,
                          circle 5
                          |> filled darkYellow
                          |> move (-5,-5)
                          |>addOutline (solid 1) yellow
                          ,
                          circle 5
                            |> filled blue
                            |> move (-5,-20)
                            |>addOutline (solid 1) darkBlue
                            ,
                            circle 5
                              |> filled red
                              |> move (-5,-30)
                              |>addOutline (solid 1) darkRed


















                         ]

        myBackground = square 200 |> filled pink
    in (("RadiantGalangal",myWord,"6"),("\"solar system\"","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "girafe" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [giraffe  |> move ((sin model.time)*10, 0)
          ]




        giraffe = group [ roundedRect 20 60 35
                             |> filled yellow
                             |> move (10,5)
                           ,
                           roundedRect 20 30 25
                             |> filled yellow
                             |> rotate (degrees -90)
                             |> move (0,30)
                           ,
                           roundedRect 20 40 20
                             |> filled yellow
                             |> rotate (degrees -90)
                             |> move (20,-20)

                             ,
                             roundedRect 10 40 10
                             |> filled yellow
                             |> rotate (degrees -180)
                             |> move (10,-30)

                             ,
                             roundedRect 10 38 10
                             |> filled yellow
                             |> move (30,-31)

                             ,
                             circle 10
                             |> filled black
                             |> scale 0.25
                             |> move (-10,35)

                             ,
                             circle 10
                             |> filled darkBrown
                             |> scale 0.5
                             |> move (10,10)

                            ,
                            circle 10
                           |> filled darkBrown
                           |> scale 0.5
                           |> move (5,-5)

                            ,
                              circle 10
                           |> filled darkBrown
                           |> scale 0.5
                           |> move (15,-20)

                            ]


    in (("unknown",myWord,"6"),("giraffe","unknown",myShapes))

  ,    let
        myWord = "bird" -- put your work here (in quotes) --
        myCode = 0-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [group [curve (85,47) [Pull (0,-84) (0,0) ]
                            |> filled red
                            ,curve (85,47) [Pull (0,-84) (0,0) ]
                            |> filled red
                            |> rotate (degrees 30)
                             ,curve (85,47) [Pull (0,-84) (0,0) ]
                            |> filled red
                            |> rotate (degrees -30)
                            ,curve (85,47) [Pull (0,-84) (0,0) ]
                            |> filled (rgb 250 150 0)
                            |> rotate (degrees 10)
                             ,curve (85,47) [Pull (0,-84) (0,0) ]
                            |> filled (rgb 250 150 0)
                            |> rotate (degrees -10)
                            ,
                            circle 30
                            |> filled orange
                            |> scaleX 1.25
                            |> scaleY 1.25
                            |> rotate (degrees 30)
                            ,
                            curve (59,0) [Pull (0,51) (0,0) ]
                            |> filled (rgb 250 150 0)
                            |> rotate (degrees -30)
                            ,
                            circle 30
                            |> filled red
                            |> scaleX 0.30
                            |> scaleY 0.20
                            |> rotate (degrees 30)
                            |> move (-10,20)
                            ,circle 5
                            |> filled red
                            |> scale 1
                            |> scaleX 1
                            |> scaleY 1
                            |> move (-33,0)
                            ]
           |> scale 0.6 |> move (-10,0)
           ]
























    in (("SparklingJellyfish",myWord,"6"),("bird","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "pizza" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [triangle 60
          |> filled lightBrown
          ,
          triangle 50
          |> filled lightRed
          ,
         triangle 50
          |> filled yellow
          |> makeTransparent 0.5
         ,

         circle 10
          |> filled darkRed
          ,
          wedge 10 0.5
          |> filled darkRed
          |> rotate (degrees 225)
          |> move (30,5)

          ] |> scale 0.9  |> move (-10,0)



          ]
    in (("ResonantGoldfish",myWord,"6"),("pizza","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "lock" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [wedge 40 0.5
                         |> filled black
                         |> rotate (degrees 90)
                         ,
                         wedge 10 1
                         |> filled black
                         |> move (15,5)
                         ,

                         wedge 30 0.75
                         |> filled red
                         |> rotate (degrees 270)
                         ,

                         wedge 30 1
                         |> filled red
                         |> rotate (degrees 270)
                         ,
                         wedge 30 0.5
                         |> filled black
                         |> rotate (degrees 270)
                          ,


                           wedge 20 1
                         |> filled (rgb 230 125 50)
                         |> rotate (degrees 30)
                         |> move (-30,100)
                         ,

                          wedge 40 0.5
                         |> filled black
                         |> rotate (degrees 270)
                         ,
                         wedge 10 0.5
                         |> filled black
                         |> rotate (degrees -270)
                         |> move (40,40)
                         ,
                         wedge 10 0.5
                         |> filled red
                         |> rotate (degrees -90)
                         ,
                         wedge 10 0.5
                        |> filled black
                        |> rotate (degrees -270)
                        |> move (-40,40)
                        ,
                        wedge 10 0.5
                        |> filled red
                        |> rotate (degrees -90)
                        |> move (-40,40)
                        ,
                        wedge 10 0.5
                       |> filled red
                       |> rotate (degrees -450)
                       |> move (40,40)
                       ,
                       wedge 10 0.5
                      |> filled red
                      |> rotate (degrees -630)
                      |> move (40,-40)
                      ,
                      wedge 10 0.5
                      |> filled black
                      |> rotate (degrees -810)
                      |> move (40,-40)
                      ,
                      wedge 10 0.5
                      |> filled black
                      |> rotate (degrees -810)
                      |> move (-40,-40)
                      ,
                      wedge 10 0.5
                      |> filled red
                      |> rotate (degrees -630)
                      |> move (-40,-40)




































                                 ]
        myBackground = square 200 |> filled pink
    in (("ResponsibleGrape",myWord,"6"),("lock","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "cactus" -- put your work here (in quotes)--
        myCode = 0 -- put your code numbers here, which came with your word (not in quotes)--

        myShapes model = [oval 20 55
          |> filled darkGreen
          |> move (25,0)
          ,
          oval 20 50
          |> filled darkGreen
           |> move (-25,0)
           ,
           oval 20 75
          |> filled darkGreen
          |> move (0,10)
          ,
          oval 20 75
          |> filled darkGreen
          |> rotate (degrees 90)
          |> move (0,-20)
          ,
          oval 20 75
          |> filled darkGreen
          |> move (0,-20)
          ]
    in (("unknown",myWord,"6"),("cactus","unknown",myShapes))

  ,    let
        myWord = "castle" -- put your work here (in quotes) --
        myCode = 0 -- put your  code number here, which came with your word (not in quotes) --

        myShapes model = [ group [
         rect 30 25
          |> filled darkGray
          |> scale 2.5
          |> move (0,-20)
          ,
          rect 30 5
          |> filled darkGray
          |> scale 2.5
          |> rotate (degrees 90)
          ,
          rect 50 5
          |> filled darkGray
          |> scale 2.5
          |> rotate (degrees 90)
          |> move (20,-20)
          ,
          rect 30 5
          |> filled darkGray
          |> scale 2.5
          |> rotate (degrees 90)
          |> move (-20,20)
          ,
          triangle 30
          |> filled red
          |> scale 0.25
          |> rotate (degrees 90)
          |> move (20,45)
          ,
          triangle 30
          |> filled red
          |> scale 0.25
          |> rotate (degrees 90)
          |> move (0,40)
          ,
          triangle 30
          |> filled red
          |> scale 0.25
          |> rotate (degrees 90)
          |> move (-20,60)
          ,
          square 20
          |> filled white
          |> scale 0.75
          |> rotate (degrees 90)
          |> move (-20,0)
          ,
          square 20
          |> filled white
          |> scale 0.75
          |> rotate (degrees 90)
          |> move (0,0)
          ,
          square 20
          |> filled white
          |> scale 0.75
          |> rotate (degrees 90)
          |> move (20,0)

         ] |> scale 0.9   |> move (0,-10)





                         ]

    in (("unknown",myWord,"6"),("castle","unknown",myShapes))

  ,    let
        myWord = "bunny" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [

           ngon 7 25
          |> filled lightPurple
          ,

         oval 20 50
          |> filled lightPurple
          |> rotate (degrees -45)
          |> move (30,30)
         ,oval 20 50
          |> filled lightPurple
          |> rotate (degrees -130)
          |> move (-30,30)
          ,
          circle 5
          |> filled black
          |> move(-10,10)
          ,
          circle 5
          |> filled black
          |> move (10,10)


         ,
         curve (0,0) [Pull (10,0) (20,-10)]
          |> filled black
          |> move (50,80)


         ]

    in (("unknown",myWord,"6"),("purple bunny","unknown",myShapes))

  ,    let
        myWord = "duck" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ square 100 |> filled blue,

            geese |> move((sin (model.time*10)*(10)),-20)
                      ]

        geese= group[roundedRect 40 15 5
                          |> filled brown,
                          roundedRect 60 15 5
                         |> filled brown
                          |> rotate (degrees 90)
                          |> move (20,23),


                      circle 3
                      |> filled black
                      |> move (20,40)
                      ,


                          triangle 10
                          |> filled brown
                          |> move (30,40)]

        myBackground = square 200 |> filled pink
    in (("StormyLentil",myWord,"6"),("Duck","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "dress" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [square 200 |> filled blue, dress|>move((sin(model.time*10)*15),0) |> scale 0.7

                      ]

        dress= group[


                  triangle 40
                    |> filled hotPink
                    |> rotate (degrees -270)
                    |> move (0,-20)
          ,ngon 5 20
          |> filled white
          |> rotate (degrees -270)
          |> move(0,15)
          , rect 10 30
          |> filled purple
          |> rotate (degrees -270)
          |> move (0,-0)   ]

        myBackground = square 200 |> filled pink
    in (("SkillfulIncense",myWord,"6"),("dress","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "tea cup" -- put your work here (in qoutes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [rect 50 25
                          |> filled red
                          |> move (0,25)
                         ,wedge 25 0.5
                          |> filled red
                          |> rotate (degrees -450)

                         |> move (0,15)
                         ,
                          oval 25 15
                            |> outlined (solid 2) red
                            |> rotate (degrees -460)
                            |> move (30,17)
                         ,


                        wedge 35 0.5
                          |> filled red
                          |> rotate (degrees -450)
                          |> move (0,-5)
                         ,rect 70 30
                          |> filled white
                          |> move (0,-30)


                         ]


    in (("SillyHyena",myWord,"6"),("tea cup","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "cake" -- put your work here (in quotes) --
        myCode = 5 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [roundedRect 90 60 5
          |> filled darkBrown
          |> rotate (degrees 0)
          |> move (0,0)
          ,roundedRect 10 30 5
          |> filled pink
          |> rotate (degrees 180)
          |> move (0,40)
          ,
         roundedRect 10 30 5
          |> filled pink
          |> rotate (degrees 180)
          |> move (-20,40)
          ,
         roundedRect 10 30 5
          |> filled pink
          |> rotate (degrees 180)
          |> move (-40,40)
          ,roundedRect 10 30 5
          |> filled pink
          |> rotate (degrees 180)
          |> move (20,40)
          ,roundedRect 10 30 5
          |> filled pink
          |> rotate (degrees 180)
          |> move (40,40)


         ] |> move (0,-15)









         ]







    in (("unknown",myWord,"6"),("cake","unknown",myShapes))

  ,    let
        myWord = "car" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [group[rect  20 30 |> filled red
          |> scale 2
          |> scaleY 2
          |> rotate (degrees 90)
          ,
          circle 10
          |> filled black
          |> scale 2
          |> move (-40,-30)
          ,
          circle 10
          |> filled black
          |> scale 2
          |> move (40,-30)
          ,
          rect 20 80
          |> filled black
          |> scale 0.75
          |> rotate (degrees -150)
          |> move (38,30)
          ,
          rect 20 100
          |> filled black
          |> scale 0.75
          |> rotate (degrees -270)
          |> move (10,56)
          ,
         square 15
          |> filled black
          |> scale 3
          |> rotate (degrees -270)
          |> move (-40,41)
         ] |> scale 0.75 |> move (0,-5)
                ]
    in (("unknown",myWord,"6"),("car","unknown",myShapes))

  ,    let
        myWord = "pan" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [circle 30
          |> filled black
            ,rect 70 15
          |> filled red
          |> rotate (degrees 0)
          |> move (40,0)
           ,circle 20
          |> filled yellow
          |> rotate (degrees 0)
          |> move (0,0)

            ]
    in (("unknown",myWord,"6"),("pan","unknown",myShapes))

  ,    let
        myWord = "cloud" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [myBackground,group [circle 40
          |> filled white
          |> move (-60,0),
           circle 50
          |> filled white
          |> move (20,0),
          circle 50
          |> filled white
          |> move (-10,30),
          circle 40
          |> filled white
          |> move (-30,-10)
          ]
         |> scale 0.5 |> move (5,0) ]
        myBackground = square 200 |> filled blue
    in (("RaspyGazelle",myWord,"6"),("Cloud","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "rocket" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground,rocket
                           |>move(0,sin(model.time*10)*(50))
                         ]





        rocket = group [
          wedge 10 0.625
          |> filled red
          |> rotate (degrees 60)
          |> move (7,-20)
          ,wedge 10 0.625
          |> filled red
          |> rotate (degrees 120)
          |> move (-7,-20)
          ,oval 20 55
          |> filled blue
          ,square 10
          |> filled white
          |> rotate (degrees 410)
          |> move (0,10)
          ,roundedRect 10 15 5
          |> filled (rgb 230 125 50)
          |> move (0,-30)
          ,roundedRect 10 15 5
          |> filled (rgb 230 125 50)
          |> rotate (degrees 30)
          |> move (3,-30)
          ,roundedRect 10 15 5
          |> filled (rgb 230 125 50)
          |> rotate (degrees -30)
          |> move (-3,-30)]

        myBackground = square 200 |> filled darkBlue
    in (("unknown",myWord,"6"),("The Rocket","unknown",myShapes))

  ,    let
        myWord = "stickman" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --
        myShapes model = [ stickman |> rotate (sin model.time)


                         ]
        stickman= group [circle 10
          |> outlined (solid 1) black

          ,
           rect 2 25
          |> filled black
          |> move (0,-22)

          ,
           rect 2 15
           |> filled black
           |> rotate (degrees 120)
           |> move (6,-15)

           ,
            rect 2 15
            |> filled black
            |> rotate (degrees 241)
            |> move (-6,-15)

            ,
             rect 2 15
             |> filled black
             |> rotate (degrees 150)
             |> move (-4,-40)

             ,
              rect 2 15
              |> filled black
              |> rotate (degrees 30)
              |> move (4,-40)
                                   ]

        myBackground = square 200 |> filled pink
    in (("PuzzledFlamingo",myWord,"6"),("stickman","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "smile" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ circle 50
          |> filled yellow

          ,
           circle 10
           |> filled black
           |> move (-20,10)

           ,
           circle 10
           |> filled black
           |> move (20,10)

            ,
             curve (-20,-11) [Pull (0,-39) (20,-11) ]
             |> filled (rgb 229 3 1)


                         ]


        myBackground = square 200 |> filled pink
    in (("PuzzledFlamingo",myWord,"6"),("smile","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "plane" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [
          group [oval 30 55
          |> filled black
          |> scaleY 2
          |> rotate (degrees 270),square 10
          |> filled yellow
          |> rotate (degrees 270),square 10
          |> filled yellow
          |> rotate (degrees 270)
          |> move (40,0),square 10
          |> filled yellow
          |> rotate (degrees 270)
          |> move (20,0),square 10
          |> filled yellow
          |> rotate (degrees 270)
          |> move (-20,0),square 10
          |> filled yellow
          |> rotate (degrees 270)
          |> move (-40,0),triangle 15
          |> filled black
          |> scaleX 2
          |> rotate (degrees 840)
          |> move (-40,7),triangle 20
          |> filled black
          |> scaleX 2
          |> rotate (degrees 1170)
          |> move (-5,30),triangle 20
          |> filled black
          |> scaleX 2
          |> rotate (degrees 1350)
          |> move (-5,-30)]
          |> scale 0.7
          ]


        myBackground = square 200|> filled white

    in (("unknown",myWord,"6"),("plane","unknown",myShapes))

  ,    let
        myWord = "games" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ rect 100 100
                           |> filled lightBlue
                           , group [
                           roundedRect 80 65 5
                           |> filled white
                           |> rotate (degrees -630)

                           ,
                           roundedRect 80 65 5
                           |> outlined (solid 1) darkRed
                           |> rotate (degrees -630)

                           ,
                           circle 4
                           |> filled black
                           |> move (0,10)

                           ,
                           circle 4
                           |> filled black
                           |> move (-3,3)

                           ,
                           circle 4
                           |> filled black
                           |> move (3,3)

                           ,
                           triangle 3
                           |> filled black
                           |> rotate (degrees -630)
                           |> move (0,-3)

                           ,
                           text "A"
                           |> filled black
                           |> move (-30,30)

                           ,
                           text "A"
                           |> filled black
                           |> rotate (degrees -900)
                           |> move (30,-30)

                           ,
                           square 30
                           |> filled white
                           |> move (-40,-30)

                           ,
                           square 30
                           |> outlined (solid 1) black
                           |> move (-40,-30)

                           ,
                           square 30
                           |> filled white
                           |> move (-40,0)

                           ,
                           square 30
                           |> outlined (solid 1) black
                           |> move (-40,0)

                           ,
                           circle 3
                           |> filled black
                           |> move (-40,0)

                           ,
                           circle 3
                           |> filled black
                           |> move (-40,-30)

                           ,
                           circle 3
                           |> filled black
                           |> move (-30,-40)

                           ,
                           circle 3
                           |> filled black
                           |> move (-50,-20)

                           ]
                           |> move (10,0)
                           ]



        myBackground = square 200 |> filled pink

    in (("StripedLily",myWord,"6"),("game","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "month" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ rect 100 70
                         |> outlined (solid 1) black,

                         text "May"
                         |> outlined (solid 1) black
                         |> move(-10,37)
                         |> scale 0.7
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-45,15)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-35,15)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-25,15)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-15,15)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-5,15)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (5,15)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (15,15)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (25,15)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (35,15)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (45,15)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-45,5)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-35,5)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-25,5)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-15,5)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-5,5)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (5,5)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (15,5)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (25,5)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (35,5)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (45,5)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-45,-5)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-35,-5)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-25,-5)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-15,-5)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-5,-5)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (5,-5)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (15,-5)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (25,-5)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (35,-5)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (45,-5)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-45,-15)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-35,-15)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-25,-15)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-15,-15)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-5,-15)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (5,-15)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (15,-15)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (25,-15)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (35,-15)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (45,-15)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-45,-25)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-35,-25)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-25,-25)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-15,-25)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (-5,-25)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (5,-25)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (15,-25)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (25,-25)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (35,-25)
                         ,
                         square 100
                         |> outlined (solid 1) black
                         |> scale 0.100
                         |> move (45,-25)















                         ]
















        myBackground = square 200 |> filled pink
    in (("SlipperyIris",myWord,"6"),("Month","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "poison" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ roundedRect 60 40 10
                            |> filled lightGray
                            |> rotate (degrees 90)
                            ,
                            roundedRect 60 40 10
                            |> outlined (solid 1) black
                            |> rotate (degrees 90)
                            ,
                            rect 30 10
                             |> filled lightRed
                             |> move (0,35)
                            ,
                            roundedRect 40 40 10
                             |> filled darkGreen
                             |> rotate (degrees 90)
                             |> move (0,-10)
                             ,


                              circle 10
                              |> filled black
                              |> rotate (degrees 180)
                              |> move (0,-10)
                              ,
                             oval 30 20
                              |> filled black
                              |> rotate (degrees 180)
                              |> move (0,0)
                              ,


                              roundedRect 45 5 5
                               |> filled black
                               |> rotate (degrees 40)
                               |> move (0,0)
                               ,
                               roundedRect 45 5 5
                                |> filled black
                                |> rotate (degrees -30)
                                |> move (0,0)
                                , oval 10 10
                              |> filled white
                              |> move (5,0)
                              ,
                              oval 10 10
                              |> filled white
                              |> move (-5,0)
                         ]

        myBackground = square 200 |> filled pink
    in (("SquealingLemon",myWord,"6"),("poison","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "car" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [wedge 26 0.5
          |> filled darkRed
          |> rotate (degrees 90), roundedRect 25 75 5
          |> filled darkRed
          |> rotate (degrees 90)
          |> move (0,-10), circle 13
          |> filled black
          |> move (-20,-25),circle 13
          |> filled black
          |> move (20,-25) ]


        myBackground = square 200 |> filled pink
    in (("unknown",myWord,"6"),("car","unknown",myShapes))

  ,    let
        myWord = "orca" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , square 10
                             |> filled blue
                             |> rotate model.time
                         --, graphPaper 10 |> makeTransparent 0
                                   , oval 10 25
                               |> filled black
                               |> scale 2
                               |> scaleX 3
                               |> scaleY 3
                               |> rotate (degrees -90)
                               |> move (50,0)
                             , oval 10 25
                               |> filled white
                               |> scale 2
                               |> rotate (degrees -90)
                               |> move (25,10)
                            ,       wedge 10 0.5
                              |> filled white
                              |> scale 2
                              |> scaleY 4
                              |> rotate (degrees 270)
                              |> move (60,-10.9)
                            , circle 10
                              |> filled charcoal
                              |> rotate (degrees 270)
                              |> scale 0.3
                              |> move (-4,5)



                         ]

        myBackground = square 200 |> filled blue
    in (("GenerousWalrus",myWord,"6"),("orca","given to PedramMay2019",myShapes))

  ,    let
        myWord = "lamp" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ rect 60 15
          |> filled black
          |> rotate (degrees 630)
          |> move (0,-30)
          ,
          square 60
          |> filled pink
          ,
          square 40
          |>filled lightYellow
          |> rotate (degrees 630)
          |> move (0,-30)
          |> makeTransparent 0.625
          |> move (0,3)


                          ]



        myBackground = square 200 |> filled pink
    in (("SmoothJasmine",myWord,"6"),("Lamp","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "north" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ circle 50
                           |> filled blue
                           ,
                           circle 50
                           |> outlined (solid 1) black
                           , text "N" |> centered |> filled red |> move (0,41)

                           , text "E" |> centered |> filled black |> move (45,-4)

                           , text "S" |> centered |> filled black |> move (0,-49)

                           , text "W" |> centered |> filled black |> scaleX 0.8 |> move (-45,-4)

                           ,
                           circle 40
                           |> filled lightYellow
                           ,
                           circle 40
                           |> outlined (solid 1) black
                           ,
                           isosceles 15 50
          |> filled (rgb 0 0 0)


                         ]


        myBackground = square 200 |> filled pink
    in (("ShortHibiscus",myWord,"6"),("North","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "honey bee" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ oval 10 15
                          |> filled yellow
                          |> scale 3
                          |> move (0,-20),
                          triangle 10
                          |> filled yellow
                          |> scale 1.05
                          |> rotate (degrees 30)
                          |> move (0,-37),
                          oval 5 25
          |> filled black
          |> scale  1
          |> scaleX 1
          |> scaleY 1
          |> rotate (degrees -90)
          |> move (0,-30),
          oval 5 23
          |> filled black
          |> scale 0.9
          |> scaleX 1
          |> scaleY 1
          |> rotate (degrees -90)
          |> move (0,-5),
           oval 5 23
          |> filled black
          |> scale 1.23
          |> scaleX 0.95
          |> scaleY 1.05
          |> rotate (degrees -90)
          |> move (0,-19),
          circle 10.5
          |> filled yellow
          |> scale 1
          |> scaleX 1
          |> scaleY 1
          |> rotate (degrees -90)
          |> move (0,10),
          wedge 10 0.25
          |> filled lightBlue
          |> scale 1.3
          |> scaleX 1.25
          |> scaleY 1.25
          |> rotate (degrees -180)
          |> move (-13,-10)
          |> makeTransparent 0.29,
           wedge 10 0.25
          |> filled lightBlue
          |> scale 1.3
          |> scaleX 1.25
          |> scaleY 1.25
          |> rotate (degrees 0)
          |> move (13,-10)
          |> makeTransparent 0.29,
          circle 10
          |> filled white
          |> scale 0.35
          |> scaleX 0.75
          |> scaleY 0.75
          |> rotate (degrees 0)
          |> move (-5,10),
           circle 10
          |> filled white
          |> scale 0.35
          |> scaleX 0.75
          |> scaleY 0.75
          |> rotate (degrees 0)
          |> move (5,10),
           circle 10
          |> filled black
          |> scale 0.19
          |> scaleX 0.75
          |> scaleY 0.75
          |> rotate (degrees 0)
          |> move (5,10),
            circle 10
          |> filled black
          |> scale 0.19
          |> scaleX 0.75
          |> scaleY 0.75
          |> rotate (degrees 0)
          |> move (-5,10),
          roundedRect 10 75 25
          |> filled black
          |> scale 0.25
          |> scaleX 0.5
          |> scaleY 0.5
          |> rotate (degrees 0)
          |> move (5,23),
           roundedRect 10 75 25
          |> filled black
          |> scale 0.25
          |> scaleX 0.5
          |> scaleY 0.5
          |> rotate (degrees 0)
          |> move (-5,23),
           curve (0,0) [Pull (10,0) (20,-10)]
          |> filled black
          |> scale 0.28
          |> scaleX 0.75
          |> scaleY 0.75
          |> rotate (degrees -150)
          |> move (5,5)










                         ]

        myBackground = square 200 |> filled grey
    in (("ShiningCrocodile",myWord,"6"),("honey bee","given to ChitwanMay2019",myShapes))

  ,    let
        myWord = "panda" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model =[ square 10
          |> filled gray
          |> scale 100
          |> scaleX 100
          |> scaleY 100
          ,circle 10
          |> filled black
          |> scaleX 1.6
          |> scaleY 1.6
          |> rotate (degrees 30)
          |> move (35,33)
          ,circle 10
          |> filled black
          |> scaleX 1.6
          |> scaleY 1.6
          |> rotate (degrees 30)
          |> move (-35,33)
          ,circle 10
          |> filled white
          |> scale 2
          |> scaleX 2
          |> scaleY 2
          ,roundedRect 10 15 5
          |> filled black
          |> scale 1
          |> scaleX 1.5
          |> scaleY 2
          |> rotate (degrees 30)
          |> move (20,7)
          ,roundedRect 10 15 5
          |> filled black
          |> scale 1
          |> scaleX 1.5
          |> scaleY 2
          |> rotate (degrees -30)
          |> move (-20,7)
          ,wedge 10 0.5
          |> filled black
          |> scale 1
          |> scaleX 1.5
          |> rotate (degrees 270)
          |> move (0,-4)
          ,roundedRect 10 15 5
          |> filled black
          |> scale 0.5
          |> scaleY 2
          |> rotate (degrees 0)
          |> move (0,-18)
          ,circle 10
          |> filled (rgb 35 35 35)
          |> scale 0.5
          |> move (18,10)
          ,circle 10
          |> filled (rgb 35 35 35)
          |> scale 0.5
          |> move (-18,10)
          ,wedge 10 0.5
          |> filled red
          |> scale 0.3
          |> scaleX 1.5
          |> rotate (degrees 270)
          |> move (0,-25+(sin(5*model.time)))
          ,roundedRect 10 15 5
          |> filled black
          |> scale 0.4
          |> scaleY 2
          |> rotate (degrees -39)
          |> move (-3,-27)
          ,roundedRect 10 15 5
          |> filled black
          |> scale 0.4
          |> scaleY 2
          |> rotate (degrees 39)
          |> move (3,-27)
          ,wedge 10 0.5
          |> filled (rgb 35 35 35)
          |> scale 0.3
          |> rotate (degrees 230)
          |> move (-4,-8)
          ,wedge 10 0.5
          |> filled (rgb 35 35 35)
          |> scale 0.3
          |> rotate (degrees -410)
          |> move (4,-8)
          ,circle 20
          |> filled black
          |> scale 0.2
          |> move (18,10)
          ,circle 10
          |> filled white
          |> scale 0.1
          |> move (17,11)
          ,circle 20
          |> filled black
          |> scale 0.2
          |> move (-18,10)
          ,circle 10
          |> filled white
          |> scale 0.1
          |> move (-17,11)



           ]
    in (("ZealousBanana",myWord,"6"),("PANDA","given to StLuke",myShapes))

  ,    let
        myWord = "hummingbird" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         ,wedge 15 0.5
                            |> filled lightBlue
                            |> rotate (degrees -40)
                            |> move (0,6)
                         ,roundedRect 20 90 15
                            |> filled lightBlue
                            |> scale 0.5
                            |> scaleY 0.5
                            |> rotate (degrees -30)
                            |> move (5,10)
                         ,wedge 10 0.125
                            |> filled lightBlue
                            |> scale 1.5
                            |> scaleX 2.5
                            |> rotate (degrees 50)
                            |> move (-30,-30)
                          ,wedge 10 0.25
                            |> filled blue
                            |> scale 1.5
                            |> scaleX 1.5
                            |> rotate (degrees 120)
                            |> move (-1,5)
                          ,wedge 10 0.25
                            |> filled darkBlue
                            |> scale 1.2
                            |> scaleX 1.2
                            |> rotate (degrees 125)
                            |> move (-3,10)
                          ,wedge 10 0.25
                            |> filled blue
                            |> scale 1.5
                            |> scaleX 1.5
                            |> rotate (degrees 150)
                            |> move (3,-1)
                           ,wedge 10 0.25
                            |> filled darkBlue
                            |> scale 1.2
                            |> scaleX 1.5
                            |> rotate (degrees 150)
                            |> move (1,0)
                           ,oval 40 90
                            |> filled lightBlue
                            |> scale 0.4
                            |> scaleY 0.4
                            |> rotate (degrees 40)
                            |> move (10,20)
                           ,wedge 90 0.125
                            |> filled darkBrown
                            |> scale -0.25
                            |> scaleY -0.25
                            |> rotate (degrees 30)
                            |> move (35,35)
                           ,circle 10
                            |> filled black
                            |> scale -0.20
                            |> move (10,23)
                         ]

        myBackground = square 750 |> filled lightGreen
    in (("GratefulAlmond",myWord,"6"),("hummingbird","given to PedramMay2019",myShapes))

  ,    let
        myWord = "crib" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ baby
                          ,
                          crib
                          ,
                           teardrop
                             |>move (0, sin model.time*(-10) - 10)
                          ,
                          teardrop
                             |>move (0, sin model.time*(-17) - 20)
                          ,
                          teardrop
                             |>move (0, sin model.time*(-22) - 30)
                          ]
        baby = group [  circle 10
                            |> filled (rgb 238 203 173)
                            |> move (25,-10)
                          ,
                           roundedRect 40 19 5
                            |> filled lightBlue
                            |> move (-3.6,-10)]

        crib = group [  roundedRect 85 15 5
                            |> filled darkBrown
                            |> move (1,-25)
                          ,
                           roundedRect 80 16 0
                            |> filled darkBrown
                            |> move (0,-30)
                          ,
                           roundedRect 60 11 5
                            |> filled darkBrown
                            |> move (5,-45)
                            |> rotate (degrees 270)
                          ,
                           roundedRect 60 10 5
                            |> filled darkBrown
                            |> move (5,45)
                            |> rotate (degrees 270)
                          ,
                           roundedRect 60 5 5
                            |> filled darkBrown
                            |> move (5,-30)
                            |> rotate (degrees 270)
                          ,
                           roundedRect 60 5 5
                            |> filled darkBrown
                            |> move (5,-15)
                            |> rotate (degrees 270)
                          ,
                           roundedRect 60 5 5
                            |> filled darkBrown
                            |> move (5,0)
                            |> rotate (degrees 270)
                          ,
                           roundedRect 60 5 5
                            |> filled darkBrown
                            |> move (5,15)
                            |> rotate (degrees 270)
                          ,
                           roundedRect 60 5 5
                            |> filled darkBrown
                            |> move (5,30)
                            |> rotate (degrees 270)
                          ,
                           roundedRect 100 9 5
                            |> filled darkBrown
                            |> move (0,15)
                          ,
                           roundedRect 70 10 5
                            |> filled darkBrown
                            |> move (20,45)
                            |> rotate (degrees 270)
                          ,
                           roundedRect 70 10 5
                            |> filled darkBrown
                            |> move (20,-45)
                            |> rotate (degrees 270)
                         ]

        teardrop = group [triangle 2.5
                            |> filled lightBlue
                            |> rotate (degrees -270)
                            |> move (28,-11)
                           ,
                          circle 2.5
                            |> filled lightBlue
                            |> rotate (degrees -270)
                            |> move (28,-13)]




        myBackground = square 200 |> filled pink
    in (("unknown",myWord,"6"),("crib","unknown",myShapes))

  ,    let
        myWord = "bear" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground

           , circle 40
          |> filled (rgb 100 50 0)
            , circle 20
          |> filled (rgb 100 50 0)
          |> move (28,30)
           , circle 20
          |> filled (rgb 100 50 0)
          |> move (-28,30)

             , circle 10
          |> filled black
          |> move (28,30)
            , circle 10
          |> filled black
          |> move (-28,30)

             , circle 7
          |> filled white
          |> move (18,10)

           , circle 7
          |> filled white
          |> move (-18,10)

            , circle 5
          |> filled black
          |> move (-18,10)

            , circle 5
          |> filled black
          |> move (18,10)

             , oval 50 30
          |> filled lightBrown
          |> move (0,-15)

             , oval 20 15
          |> filled black
          |> move (0,-6)





                               ]

        myBackground = square 200 |> filled (rgb 100 150 0)

    in (("GentleWasabi",myWord,"6"),("Grizzly Bear","given to PedramMay2019",myShapes))

  ,    let
        myWord = "ball" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ circle 40
          |> filled darkBlue, circle 30
          |> filled black, circle 20
          |> filled darkBlue, circle 10
          |> filled black ]

        myBackground = square 200 |> filled pink
    in (("unknown",myWord,"6"),("ball","unknown",myShapes))

  ,    let
        myWord = "bear" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [myBackground ]

        myBackground  =
              polygon [(-41.16,24.327),(-40.42,25.076),(-50.15,17.216),(-55.76,6.3625),(-55.01,0.7485),(-53.89,-4.865),(-52.39,-11.22),(-52.77,-19.08),(-54.26,-26.94),(-56.51,-31.81),(-52.02,-35.18),(-40.42,-37.05),(-44.53,-32.93),(-41.16,-28.07),(-36.30,-37.42),(-18.71,-40.79),(-23.95,-35.55),(-26.57,-25.07),(-27.69,-12.35),(-16.09,-11.97),(-17.21,-20.21),(-15.71,-28.07),(-12.35,-34.05),(-8.982,-37.80),(0,-38.92),(0.3742,-34.80),(-5.614,-34.05),(-4.865,-26.57),(-1.497,-21.33),(4.1169,-22.45),(11.976,-23.95),(19.087,-24.70),(23.204,-29.94),(30.690,-26.57),(23.953,-19.83),(18.713,-17.21),(14.596,-13.47),(12.725,-9.730),(16.467,-7.111),(19.087,-6.736),(19.836,-11.97),(23.578,-14.59),(29.567,-15.71),(28.818,-20.21),(34.807,-20.58),(36.304,-13.84),(38.549,-6.362),(38.923,0),(41.918,4.4912),(43.040,7.1111),(38.549,2.6198),(35.555,7.1111),(32.561,6.3625),(22.081,19.087),(14.970,20.959),(4.8654,24.327),(-7.859,23.578),(-16.09,28.444),(-25.45,28.070),(-36.67,26.573),(-43.78,23.578),(-50.90,15.345),(-14.97,3.7426)]
              |> filled brown |> move (8,0)
    in (("ShinyCrocus",myWord,"6"),("bear","given to ChitwanMay2019",myShapes))

  ,    let
        myWord = "bear" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground

                         ,square 400
                         |> filled lightBlue



                             ,circle 40
                             |> filled brown

                             ,circle 20
                             |> filled brown


                               ,circle 20
                               |> filled brown
                               |> move (25,30)

                               ,circle 9
                               |> filled lightBrown
                               |> move (25,30)

                               ,circle 20
                               |> filled brown
                               |> move(-25,30)

                               ,circle 9
                               |> filled lightBrown
                               |> move (-25,30)


                             ,oval 50 30
                               |> filled lightBrown
                               |> move (0,-15)


                               ,circle 7
                               |> filled white
                               |> move (20,10)

                                ,circle 7
                               |> filled white
                               |> move (-20,10)

                                ,circle 5
                               |> filled black
                               |> move (20,10)

                                ,circle 5
                               |> filled black
                               |> move (-20,10)


                              ,text "I smell berries!" |> centered
                              |> filled (rgb 100 0 100)
                              |> move (0, -50)


                           ,oval 20 15
                              |> filled black
                              |> move (2*cos(model.time) , 0)
                              |> move(0,-15)

                         ]



        myBackground = square 200 |> filled white
















































    in (("GoodAardvark",myWord,"6"),("Brown Bear","given to PedramMay2019",myShapes))

  ,    let
        myWord = "can"
        myCode = 6042 -- put your code number here, which came with your word (not in quotes

        myShapes model = [can |> scale (sin model.time)


                               ]







        can = group [roundedRect 40 65 5
           |> filled lightBlue
          |> addOutline (solid 1) black
         , triangle 20
          |> filled black
          |> rotate (degrees -30)

            ,oval 20 15
          |> filled lightGreen
                     ,oval 10 15
          |> filled black

          ,oval 40 15
          |> filled black
          |> move (0,30)

            ,oval 10 5
          |> filled darkGray
          |> move (0,30)








          ]



        myBackground = square 200 |> filled pink
    in (("RemarkableGiraffe",myWord,"6"),("can","given to YumnaMay2019",myShapes))

  ,    let
        myWord = "orca" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myBackground = square 200|> filled lightBlue
        myShapes model = [ myBackground, group [whale
         , oval 4 13
          |> filled white
          |> rotate (degrees 120)
          |> move (-30, -1)
          , oval 5 14
          |> filled white
          |> rotate (degrees 103)
          |> move (-30, -13)
          , oval 4 30
          |> filled white
          |> rotate (degrees 110)
          |> move (10, 4)
          ] |> scale 0.9 |> move (-7,0)
         ]





        whale =
          curve (1.8713,0) [Pull (-1.122,-2.432) (-4.116,-4.865),Pull (-6.362,-7.672) (-8.608,-10.47),Pull (-10.29,-12.91) (-11.97,-15.34),Pull (-12.91,-17.96) (-13.84,-20.58),Pull (-13.66,-23.01) (-13.47,-25.45),Pull (-10.66,-26.01) (-7.859,-26.57),Pull (-4.865,-25.63) (-1.871,-24.70),Pull (1.1228,-23.95) (4.1169,-23.20),Pull (6.1754,-22.08) (8.2339,-20.95),Pull (10.292,-21.52) (12.350,-22.08),Pull (15.906,-22.26) (19.461,-22.45),Pull (22.643,-21.33) (25.824,-20.21),Pull (25.263,-18.71) (24.701,-17.21),Pull (23.017,-16.09) (21.333,-14.97),Pull (23.953,-14.40) (26.573,-13.84),Pull (29.192,-13.28) (31.812,-12.72),Pull (34.432,-11.78) (37.052,-10.85),Pull (39.859,-9.918) (42.666,-8.982),Pull (45.099,-8.046) (47.532,-7.111),Pull (49.964,-6.175) (52.397,-5.239),Pull (55.204,-4.678) (58.011,-4.116),Pull (61.567,-3.742) (65.122,-3.368),Pull (67.181,-4.304) (69.239,-5.239),Pull (72.795,-5.801) (76.350,-6.362),Pull (78.783,-6.175) (81.216,-5.988),Pull (82.713,-6.736) (84.210,-7.485),Pull (86.269,-9.730) (88.327,-11.97),Pull (88.888,-11.41) (89.450,-10.85),Pull (87.578,-8.795) (85.707,-6.736),Pull (83.836,-5.052) (81.964,-3.368),Pull (79.719,-1.684) (77.473,0),Pull (75.415,2.0584) (73.356,4.1169),Pull (67.555,6.7368) (61.754,9.3567),Pull (55.391,10.666) (49.029,11.976),Pull (43.415,12.725) (37.801,13.473),Pull (34.245,13.660) (30.690,13.847),Pull (29.005,15.719) (27.321,17.590),Pull (26.760,21.707) (26.198,25.824),Pull (24.888,23.578) (23.578,21.333),Pull (22.643,18.713) (21.707,16.093),Pull (21.146,14.222) (20.584,12.350),Pull (18.713,10.853) (16.842,9.3567),Pull (13.286,7.6725) (9.7309,5.9883),Pull (6.1754,3.3684) (1.8713,0),Pull (-32,-25.82) (1.8713,0)]
          |> filled black
          |> move (-30, 10)

    in (("GlamorousWolverine",myWord,"6"),("whale","given to PedramMay2019",myShapes))

  ,    let
        myWord = "panda" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         ,circle 10
          |> filled black
          |> scale 1.20
          |> move (-20,30),
           circle 10
          |> filled black
          |> scale 1.20
          |> move (20,30),
           circle 15
          |> filled white
          |> scale 2,
          circle 15
          |> outlined (solid 1) black
          |> scale 2,
          circle 10
          |> filled black
          |> scale 0.7
          |> move (-10,10)
         ,  circle 10
          |> filled black
          |> scale 0.7
          |> rotate (degrees -90)
          |> move (10,10),
          circle 10
          |> filled white
          |> scale 0.20
          |> rotate (degrees -90)
          |> move (-10,15),
            circle 10
          |> filled white
          |> scale 0.20
          |> rotate (degrees -90)
          |> move (10,15),
          oval 5 10
          |> filled lightOrange
          |> rotate (degrees -90)
          |> move (-10,0),
            oval 5 10
          |> filled lightOrange
          |> rotate (degrees -90)
          |> move (10,0),
            oval 10 15
          |> filled black
          |> scale 0.5
          |> rotate (degrees -90)
          |> move (0,0),
          curve (0,0) [Pull (10,0) (20,-10)]
          |> filled black
          |> scale 0.4
          |> rotate (degrees -90)
          |> move (0,0),
            curve (0,0) [Pull (10,0) (20,-10)]
          |> filled black
          |> scale 0.4
          |> rotate (degrees -390)
          |> move (0,0)

                         ]

        myBackground = square 200 |> filled pink
    in (("FantasticToad",myWord,"6"),("Panda","given to PedramMay2019",myShapes))

  ,    let
        myWord = "heart" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model =
          [heart
          |>move((sin(model.time*(10))*(10)),0)

          ]

        heart= group[  circle 12
          |> filled red
          |> rotate (degrees -60)
          |> move (10,10)
          ,circle 12
          |> filled red
          |> rotate (degrees 60)
          |> move (-10,10),
          square 24
          |> filled red
          |> rotate (degrees 45)
          |>move(0,0)
          ]
    in (("unknown",myWord,"6"),("heart","unknown",myShapes))

  ,    let
        myWord = "blue whale" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , oval 30 42
                          |> filled blue
                          |> scaleY 2
                          |> rotate (degrees 90) ,
                          fins |> move (0 , 5*sin(model.time)) ,
                          oval 4 22
                          |> filled blue
                          |> scaleX 2
                          |> rotate (degrees -120)
                          |> move (-5,-15),
                            oval 4 22
                          |> filled blue
                          |> scaleX 2
                          |> rotate (degrees -60)
                          |> move (-5,15) ,
                          circle 3
                          |> filled black
                          |> move (-25,4),
                          circle 1.75
                          |> filled white
                          |> move (-25,4),
                          curve (0,0) [Pull (-7,18) (0,25), Pull (0,0) (0,0), Pull (0,0) (0,0), Pull (0,0) (0,0) ]
                          |> filled white
                          |> rotate (degrees 90)
                          |> move (-17,-2),
                          text "Blue Whale"
                          |> filled black
                          |> move (-10,40)

                          ]

        fins = group [ triangle 12
                          |> filled blue
                          |> scaleX 2
                          |> rotate (degrees 50)
                          |> move (35,5) ,
                          triangle 12
                          |> filled blue
                          |> scaleX 2
                          |> rotate (degrees -50)
                          |> move (35,-5) ]







        myBackground = square 200 |> filled (rgb 0 150 200)
    in (("GleamingWren",myWord,"6"),("Blue Whale","given to PedramMay2019",myShapes))

  ,    let
        myWord = "pond" -- put your work here (in quotes) --
        myCode = 0 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                          ,rect 100 55
          |> filled green
          |> move (0,-40)
           ,oval 10 100
          |> filled blue
          |> rotate (degrees -90)
          |> move (0,-30)
          , wedge 10 0.5
          |> filled darkBrown
          |> rotate (degrees -90)
          |> move (0,-20)
          , circle 5
          |> filled darkGreen
          |> move (-8,-20)





                         ]

        myBackground = square 200 |> filled lightBlue
    in (("ExoticStarfish",myWord,"6"),("pond","given to PedramMay2019",myShapes))

  ]
