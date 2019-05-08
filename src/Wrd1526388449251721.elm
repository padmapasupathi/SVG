{- regex patterns for fixing sextuples
in \(([a-zA-Z"]*),(myWord),([a-zA-Z"0-9]*),([a-zA-Z" !?.,']*),([a-zA-Z" ]*)[\n ]*,(myShapes)\)
in (($1,$2,$3),($4,$5,$6))
-}

module Wrd1526388449251721 exposing(words)
import GraphicSVG exposing(..)
words = [
      let
        myWord = "ball"
        myCode = 510
        myShapes model = [ball |> rotate (66*model.time)
         |> move (sin(10*model.time),0)]


        ball=group [

          circle 50
          |> filled (rgb 0 100 100),
          ngon 15 20
          |> filled (rgb 100 100 100),
          text "you'll never know what this says!"
          |> filled (rgb 255 125 74)
          |> scale 0.5
          |> move (-18,0),
          wedge 10 0.75
          |> filled (rgb 146 250 76)
          |> scale 1.25
          |> rotate (degrees 45)
          |> move (30,20),
          wedge 10 0.75
          |> filled (rgb 146 250 76)
          |> scale 1.25
          |> rotate (degrees 180)
          |> move (20,30),
            wedge 10 0.75
          |> filled (rgb 146 250 76)
          |> scale 1.25
          |> rotate (degrees 45)
          |> move (-20,-30),
          wedge 10 0.75
          |> filled (rgb 146 250 76)
          |> scale 1.25
          |> rotate (degrees 180)
          |> move (-30,-20)
                         ]
    in (("ThankfulTurtle",myWord,"6"),("Rotating Ball of Death","given to StLuke",myShapes))

  ,    let
        myWord = "CobWeb"-- put your work here (in quotes) --
        myCode = 553-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground

                         ,cobweb
                         |> rotate model.time
                         ]

        myBackground = square 200 |> filled black

        cobweb=group[ myBackground,
         roundedRect 5 15 5
          |> filled white
          |> scaleY 10,
         roundedRect 5 15 5
          |> filled white
          |> scaleY 10
          |> rotate (degrees 90),
           roundedRect 5 15 5
          |> filled white
          |> scaleY 10
          |> rotate (degrees 45),
          roundedRect 5 15 5
          |> filled white
          |> scaleY 10
          |> rotate (degrees -45),
          roundedRect 5 21 5
          |> filled white
          |> scaleY 2
          |> rotate (degrees 35)
          |> move (-10, -40),
          roundedRect 5 21 5
          |> filled white
          |> scaleY 2
          |> rotate (degrees -35)
          |> move (10, -40),
          roundedRect 5 21 5
          |> filled white
          |> scaleY 2
          |> rotate (degrees 35)
          |> move (-10, -40),
          roundedRect 5 21 5
          |> filled white
          |> scaleY 2
          |> rotate (degrees -35)
          |> move (-10, -40)
                  ]
    in (("TerrificTurmeric",myWord,"6"),("CobWEb","given to StLuke",myShapes))

  ,    let
        myWord = "bird"
        myCode = 523

        myShapes model = [ birb |> scale 0.5
                                |> move (0, sin(666*model.time))
                                |> move (sin(666*model.time), 0)]


        myBackground = square 200 |> filled lightBlue

        birb = group
         [triangle 10
          |> filled (rgb 255 101 0)
          |> scaleX 2
          |> rotate (degrees 184)
          |> move (-50,6),
          roundedRect 10 15 5
          |> filled darkYellow
          |> scale 2
          |> scaleX 2
          |> rotate (degrees 180)
          |> move (-40,0),
          roundedRect 15 20.25 5.25
          |> filled darkYellow
          |> scale 2
          |> scaleX 2
          |> rotate (degrees 180)
          |> move (-15,0),
          curve (0,0) [Pull (-10,0) (20,-10)]
          |> filled darkYellow
          |> scaleX 2
          |> scaleY 2
          |> rotate (degrees 60),
          curve (0,0) [Pull (8,0) (20,-10)]
          |> filled darkYellow
          |> scale 3
          |> scaleX 2
          |> scaleY 2
          |> rotate (degrees 60)
          |> move (-26.5,0),
          circle 10
          |> filled white
          |> move (-50,15),
          circle 10
          |> filled black
          |> scale 0.75
          |> scaleX 0.75
          |> scaleY 0.75
          |> move (-50,20)
          ]
    in (("WoebegoneArmadillo",myWord,"6"),("Birb","given to StLuke",myShapes))

  ,    let
        myWord = "fishes"
        myCode = 557

        myShapes model = [ myBackground
                         , square 10
                             |> filled red
                             |> rotate model.time
                         ,cracker
                         |> move(sin(-10*sin(model.time)),sin(10*sin(model.time))),
          mouth
          |> move(sin(-10*sin(model.time)),sin(10*sin(model.time))),
          cracker2
          |> move (sin(10*sin(model.time)),-40+sin(10*sin(model.time))),
          mouth
          |> move (sin(10*sin(model.time)),-40+sin(10*sin(model.time)))


                         ]

        myBackground = square 200 |> filled lightBlue

        cracker=group[wedge 6 0.75
          |> filled green
          |> scale 2
          |> scaleX 2.5
          |> scaleY 2
          |> move (-30,10),
          circle 7
          |> filled green
          |> scale 2
          |> scaleX 2.5
          |> scaleY 2
          |> move (10,10)]

        cracker2=group[wedge 6 0.75
          |> filled red
          |> scale 2
          |> scaleX 2.5
          |> scaleY 2
          |> move (-30,10),
          circle 7
          |> filled red
          |> scale 2
          |> scaleX 2.5
          |> scaleY 2
          |> move (10,10)]


        mouth=group[ curve (0,0) [Pull (10,0) (20,-10)]
          |> filled black
          |> move (16,6),
           circle 6
          |> filled black
          |> move (21,19)]
    in (("SuccessfulTiger",myWord,"6"),("fishy crackers","given to StLuke",myShapes))

  ,    let
        myWord = "spoon" -- put your work here (in quotes)
        myCode = 720-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group [rect 10 20
                                    |> filled darkGray
                                    |> scale 2
                                    |> scaleY 2
                                    |> move (0,-30)
                                 , oval 10 12
                                    |> filled darkGray
                                    |> scale 2
                                    |> scaleX 2
                                    |> scaleY 2
                                    |> move (0,10)
                                 ]
                        ]




        myBackground = square 200 |> filled blue


    in (("BrilliantBumblebee",myWord,"6"),("Spoon","given to Saginaw",myShapes))

  ,    let
        myWord = "owl" --put your work here (in quotes) --
        myCode = 665 --put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , oval 40 65
                             |> filled darkBrown
                             |> move (0, -10)
                         , wedge 13 0.55
                             |> filled (rgb 101 55 3)
                             |> rotate (degrees 343)
                             |> move (14, -25)
                         , wedge 13 0.55
                             |> filled (rgb 101 55 3)
                             |> rotate (degrees 190)
                             |> move (-14, -25)
                         , wedge 30 0.90
                             |> filled (rgb 245 175 95)
                             |> rotate (degrees 270)
                             |> move (0, 10)
                         , triangle 7
                             |> filled (rgb 255 255 38)
                             |> rotate (degrees 30)
                             |> move (0, 0)
                         , isosceles 20 30
                             |> filled darkBrown
                             |> rotate (degrees 180)
                             |> move (0, 38.5)
                         , circle 8.5
                             |> filled white
                             |>move (11, 10)
                         , circle 8.5
                             |> filled white
                             |> move (-11, 10)
                         , circle 6.5
                             |> filled black
                             |> move (12, 10)
                         , circle 6.5
                             |> filled black
                             |> move (-10, 10)
                         , circle 3
                             |> filled (rgb 245 245 255)
                             |> move (9, 12)
                         , circle 3
                             |> filled (rgb 245 245 255)
                             |> move (-14, 12)
                         , circle 1.5
                             |> filled (rgb 245 245 255)
                             |> move (-13, 6)
                         , circle 1.5
                             |> filled (rgb 245 245 255)
                             |> move (11, 6)
                         , oval 5 7
                             |> filled yellow
                             |> rotate (degrees 90)
                             |> move (6, -43)
                         , oval 5 7
                             |> filled yellow
                             |> rotate (degrees 90)
                             |> move (-6, -43)
                         ,triangle 7
                             |> filled darkBrown
                             |> rotate (degrees 90)
                             |> move (0, -20)

                         --, graphPaper 10 |> makeTransparent 0.4

                         ]

        myBackground = square 200 |> filled (rgb 0 255 255)
    in (("CharmingCaraway",myWord,"6"),("Cute Owlet","given to Saginaw",myShapes))

  ,    let
        myWord = "cat"
        myCode = 541

        myShapes model = [ myBackground
                         , group [oval 23 20
                             |> filled (rgb 255 255 255)
                             |> move (10,10)
                         , triangle 6
                             |> filled (rgb 255 255 255)
                             |> rotate (degrees -360)
                             |> move (2,17)
                         --, graphPaper 10 |> makeTransparent 0.4
                         , triangle 6
                             |> filled (rgb 255 255 255)
                             |> rotate (degrees 180)
                             |> move (18,17)
                         , circle 1
                             |> filled black
                             |> move (16,11)
                         , circle 1
                             |> filled black
                             |> move (4,11)
                         , circle 2
                             |> filled white
                             |> move (4,3 * (sin model.time) + 14)
                         , circle 2
                             |> filled white
                             |> move (16,3 * (sin model.time) + 14)
                         , triangle 1
                             |> filled (rgb 255 209 209)
                             |> rotate (degrees -570)
                             |> move (10,8)
                         , triangle 1
                             |> filled (rgb 255 209 209)
                             |> rotate (degrees -570)
                             |> move (10,8)
                         , oval 16 6
                             |> filled white
                             |> rotate (degrees 360)
                             |> move (-6,-28)
                         , oval 45 25
                             |> filled white
                             |> rotate (degrees 53)
                             |> move (-5,-11)
                         , oval 27 20
                             |> filled white
                             |> rotate (degrees 53)
                             |> move (9,-5)
                         , oval 7 40
                             |> filled white
                             |> move (6,-10)
                         , circle 3
                             |> filled white
                             |> move (7,-28)
                         , oval 7 40
                             |> filled white
                             |> move (16,-10)
                         , circle 3
                             |> filled white
                             |> move (17,-27)
                              ] |> scale 1.4


                         ]

        myBackground = square 200 |> filled (rgb 209 242 255)



    in (("CooperativeCheetah",myWord,"6"),("Meow","given to Saginaw",myShapes))

  ,    let
        myWord = "Mother"
        myCode = 658

        myShapes model = [ myBackground
                         , roundedRect 50 80 5
                           |> filled red
                           |> move (0,0)

                         , roundedRect 40 40 5
                           |> filled lightYellow
                           |> move (0,10)

                         ,triangle 20
                           |> filled lightYellow
                           |> rotate (degrees 90)
                           |> move (0,-20)

                         ,roundedRect 70 60 5
                           |> filled hotPink
                           |> rotate (degrees 90)
                           |> move (0,-60)
                         , circle 5 |> filled (rgb 0 0 250) |> move (12,15)

                         , circle 5 |> filled (rgb 0 0 250) |> move (-12,15)

                         --,graphPaper 10
                         --|> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled charcoal
    in (("DustyCuckoo",myWord,"6"),("mother","given to Saginaw",myShapes))

  ,    let
        myWord = "water"
        myCode = 760
        myShapes model = [ myBackground

                         , rect 100 10
                                 |> filled blue
                                 |> move (0,0)
                         , rect 100 10
                                 |> filled blue
                                 |> move (0,-10)
                         , rect 100 10
                                 |> filled blue
                                 |> move (0,-20)
                         ,  rect 100 10
                                 |> filled blue
                                 |> move (0,-30)
                         ,  rect 100 10
                                 |> filled blue
                                 |> move (0,-40)
                         ,  rect 100 10
                                 |> filled blue
                                 |> move (0,-50)

                        ,fish
                        |>move(28 * (sin model.time),-10)
                         ]

        fish= group [ oval 20 10
                                 |> filled orange
                                 |> move (-20,-20)
                         ,  triangle 10
                                 |> filled orange
                                 |> move (-30,-20)
                         , circle 1 |> filled black |> move (-15,-19)
          ]


        myBackground = square 200 |> filled pink
    in (("DisciplinedCricket",myWord,"6"),("Water","given to Saginaw",myShapes))

  ,    let
        myWord = "space"
        myCode = 718
        rocket model = group [

                                 rect 10 20
          |> filled darkGray
          |> scale 1
          |> rotate (degrees -420)
          |> move (-50,-50)


                   ,triangle 10
          |> filled blue
          |> scale 1
          |> rotate (degrees -330)
          |> move (-40,-45)

                   ,circle 10
          |> filled (rgb 0 93 255)
          |> scale 0.3
          |> rotate (degrees -330)
          |> move (-50,-50)

                   ,triangle 10
          |> filled orange
          |> scale 0.5
          |> rotate (degrees -260)
          |> move (-60,-60)

                   ,triangle 10
          |> filled orange
          |> scale 0.5
          |> rotate (degrees -260)
          |> move (-60,-55)

                  ,triangle 10
          |> filled orange
          |> scale 0.5
          |> rotate (degrees -260)
          |> move (-60,-58)






                         ]
        myShapes model = [ myBackground
                         ,circle 10
                             |> filled blue
                             |> scale 1.75
                             |> move (-20,30)

                         ,oval 10 20
                             |> filled green
                             |> scale 1.3
                             |> move (-15,30)

                         ,circle 10
                             |> filled green
                             |> scale 0.75
                             |> move (-30,25)
                         ,circle 10
          |> filled yellow
          |> scale 0.3
          |> move (0,50)

                         ,circle 10
          |> filled yellow
          |> scale 0.3
          |> move (20,30)

                         ,circle 10
          |> filled yellow
          |> scale 0.3
          |> move (0,0)

                         ,circle 10
          |> filled yellow
          |> scale 0.3
          |> move (20,-30)

                                 ,circle 10
          |> filled yellow
          |> scale 0.3
          |> move (-20,-30)

                                 ,circle 10
          |> filled yellow
          |> scale 0.3
          |> move (-50,30)
          ,rocket model |> rotate (degrees 12)
          |> move (2*model.time,2*model.time)

          --, graphPaper 10 |> makeTransparent 0.4
         ]



        myBackground = square 200 |> filled black

    in (("GladHeron",myWord,"6"),("Space By:Jessica","given to Saginaw"

       ,myShapes))

  ,    let
        myWord = "doctor" -- "doctor" put your work here (in quotes) --
        myCode = 574 --   put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                             ,circle 6
                             |> filled (rgb 128 128 128)
                             |> move (-4,15)
                              ,circle 6
                             |> filled (rgb 128 128 128)
                             |> move (4,15)
                            ,rect 13 10
                             |> filled (rgb 255 188 0)
                             |> rotate (degrees 90)
                             |> move (0,15)
                         , circle 15
                             |> filled (rgb 255 188 0)
                             |> move (0,30)
                             ,circle 5
                             |> filled white
                             |> rotate model.time
                             |> move (0,35)
                             ,oval 5 6
                             |> filled white
                             |> addOutline (solid 1) black
                             |> rotate model.time
                             |> move (0,35)
                             ,rect 2 8
                             |> filled white
                             |> rotate (degrees -250)
                             |> move (9,37)
                              ,rect 2 8
                             |> filled white
                             |> rotate (degrees 250)
                             |> move (-9,37)
                             ,circle 2
                             |> filled black
                             |> move (-7,30)
                             ,circle 2
                             |> filled black
                             |> move (7,30)
                             ,rect 20 10
                             |> filled white
                             |> addOutline (solid 1) black
                             |> move (10,6)
                             ,rect 20 10
                             |> filled white
                             |> addOutline (solid 1) black
                             |> move (-10,6)
                             ,rect 20 30
                             |> filled white
                             |> addOutline (solid 1) black
                             |> move (0,-4)
                             ,rect 10 20
                             |> filled white
                             |> addOutline (solid 1) black
                             |> move (-5,-28)
                             ,rect 10 20
                             |> filled white
                             |> addOutline (solid 1) black
                             |> move (5,-28)
                             ,rect 10 20
                             |> filled white
                             |> move (5,-4)
                            ,rect 5 20
                             |> filled (rgb 128 128 128)
                             |> move (7,4)
                             ,circle 4
                             |> filled (rgb 128 128 128)
                             |> move (7,-8)
                             ,rect 5 20
                             |> filled (rgb 128 128 128)
                             |> move (-7,4)
                             ,rect 3 10
                             |> filled (rgb 128 128 128)
                             |> rotate (degrees 45)
                             |> move (-4,-6)
                            ,rect 3 10
                             |> filled (rgb 128 128 128)
                             |> rotate (degrees -45)
                             |> move (-10,-6)
                            ,circle 2
                             |> filled (rgb 128 128 128)
                             |> move (-14,-10)
                             ,circle 2
                             |> filled (rgb 128 128 128)
                             |> move (0,-10)





                         ]

        myBackground = square 200 |> filled (rgb 20 255 240)



    in (("CalmButterfly",myWord,"6"),("doctor","given to Saginaw",myShapes))

  ,    let
        myWord = "sack"--
        myCode = 697--
        myShapes model = [ myBackground
                         ,circle 30
                         |> filled brown
                         ,triangle 10
                         |> filled brown
                         |> rotate (degrees 30)
                         |> move (0,35)
                         --, graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled pink
    in (("EagerCypress",myWord,"6"),("sack","given to Saginaw",myShapes))

  ,    let
        myWord = "grape" -- put your work here (in quotes) --
        myCode = 611-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , roundedRect 40 22.5 2.5
                         |> filled brown
                         |> move (45,-20)
                         , roundedRect 30 15 5
                         |> filled brown
                         |> rotate (degrees -90)
                         |> move (34.75,-40.25)
                         , roundedRect 30 15 5
                         |> filled brown
                         |> rotate (degrees -90)
                         |> move (54.75,-40.25)
                         , roundedRect 15 10 5
                         |> filled brown
                         |> rotate (degrees -60)
                         |> move (25,-10)
                         , oval 5 17.5
                         |> filled brown
                         |> rotate (degrees 90)
                         |> move (17.75,-5)
                         , circle 3
                         |> filled darkPurple
                         |> move (5,1)
                         , circle 3
                         |> filled darkPurple
                         |> move (10,1)
                         , circle 3
                         |> filled darkPurple
                         |> move (0,1)
                         , circle 3
                         |> filled darkPurple
                         |> move (-5,1)
                         , circle 3
                         |> filled darkPurple
                         |> move (15,1)
                         , circle 3
                         |> filled darkPurple
                         |> move (2.5,-4)
                         , circle 3
                         |> filled darkPurple
                         |> move (7.5,-4)
                         , circle 3
                         |> filled darkPurple
                         |> move (12.5,-4)
                         , circle 3
                         |> filled darkPurple
                         |> move (-2.5,-4)
                         , circle 3
                         |> filled darkPurple
                         |> move (0,-9)
                         , circle 3
                         |> filled darkPurple
                         |> move (5,-9)
                         , circle 3
                         |> filled darkPurple
                         |> move (10,-9)
                         , circle 3
                         |> filled darkPurple
                         |> move (2.5,-14)
                         , circle 3
                         |> filled darkPurple
                         |> move (7.5,-14)
                         , circle 3
                         |> filled darkPurple
                         |> move (5,-19)
                         , roundedRect 55 5 5
                         |> filled lightGreen
                         |> rotate (degrees 45)
                         |> move (-25,20)
                         , rect 100 7.5
                         |> filled lightGreen
                         |> rotate (degrees 90)
                         |> move (-44,1)
                         ,curve (0,0) [Pull (20,0) (25,-10)]
                         |> filled lightGreen
                         |> move (-20,20)
                         ,rect 7.5 3
                         |> filled darkBrown
                         |> rotate (degrees 90)
                         |> move (5,7)
                         ]

        myBackground = circle 200 |> filled lightBlue


    in (("ComfortableCedar",myWord,"6"),("Grape Eater","given to Saginaw",myShapes))

  ,    let
        myWord = "rabbit" -- put your work here (in quotes) --
        myCode = 686 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group [oval 40 20
                             |> filled white
                         , oval 20 14
                             |> filled white
                             |> move (-20, 12.5)
                         , oval 7 28
                             |> filled white
                             |> rotate (degrees -30)
                             |> move (-8, 28)
                         , oval 5 20
                             |> filled pink
                             |> rotate (degrees -30)
                             |> move (-8, 28)
                         , oval 7 28
                             |> filled white
                             |> rotate (degrees -50)
                             |> move (-3, 25)
                         , oval 5 20
                             |> filled pink
                             |> rotate (degrees -50)
                             |> move (-3, 25)
                         , circle 1
                             |> filled pink
                             |> move (-30, 12)
                         , circle 5
                             |> filled white
                             |> move (24, 0)
                         , circle 1
                             |> filled black
                             |> move (-20, 15)
                         , rect 5 7
                             |> filled white
                             |> rotate (degrees 30 * (sin model.time))
                             |> move (-10, -11)
                         , rect 5 7
                             |> filled white
                             |> rotate (degrees <| 60 + 30 * (sin model.time))
                             |> move (10, -11)
                         ] |> scale 1.1 |> move (0,-20)
                         ]

        myBackground = square 200 |> filled blue
    in (("FunnyGrape",myWord,"6"),("rabbit","given to Saginaw",myShapes))

  ,    let
        myWord = "cherries" -- put your work here (in quotes) --
        myCode = 544 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , circle 10
                             |> outlined (solid 1.7) black
                             |> rotate model.time
                             |> move (10,5)

                         ,circle 10
                             |> filled darkRed
                             |> move (10,5)
                             |> makeTransparent 0.9

                                          , circle 10
                             |> outlined (solid 1.7) black
                             |> rotate model.time
                             |> move (0,0)

                         ,circle 10
                             |> filled darkRed
                             |> move (0,0)
                             |> makeTransparent 0.9

                                              , circle 10
                             |> outlined (solid 1.7) black
                             |> rotate model.time
                             |> move (-10,5)

                         ,oval 20 20
                             |> filled darkRed
                             |> move (-10,5)
                             |> makeTransparent 0.9

                         ,curve (0,0) [Pull (20,10) (20,20)]
                             |> filled darkBrown
                             |> rotate (degrees 45 + model.time)
                             |> move (10,10)

                         ,curve (0,0) [Pull (20,10) (20,20)]
                             |> filled darkBrown
                             |> rotate (degrees 25 + model.time)
                             |> move (0,10)

                         ,curve (0,0) [Pull (20,10) (20,20)]
                             |> filled darkBrown
                             |> rotate (degrees 7 + model.time)
                             |> move (-10,10)
                         ]

        myBackground = square 200 |> filled white
    in (("DapperChicory",myWord,"6"),("Cherries","given to Saginaw",myShapes))

  ,    let
        myWord = "kite"-- put your work here (in quotes) --
        myCode = 720-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [myBackground, kite
                             |> move (20 * (cos model.time), -20)]


        kite = group [ square 10
                              |> filled lightPurple
                              |> scale 4
                              |> rotate (degrees 50)
                              |> move (-10,40)
                           , rect 10 25
                              |> filled lightGreen
                              |> scaleY 2
                              |> rotate (degrees 40)
                           , rect 10 25
                              |> filled lightBlue
                              |> scaleY 2
                              |> rotate (degrees 50)
                              |> move (0,1)
                              |> move (0, 10)
                      ]


        myBackground = square 200 |> filled blue


    in (("BrilliantBumblebee",myWord,"6"),("flying kite in the wind","given to Saginaw",myShapes))

  ,    let
        myWord = "plant"
        myCode = 678
        myShapes model = [ myBackground
                         , rect 10 70
          |> filled green
                         ,triangle 10
          |> filled green
          |> scaleX 3
          |> rotate (degrees 30)
          |> move (10,0)
                         , triangle 10
          |> filled green
          |> scaleX 3
          |> rotate (degrees 150)
          |> move (-10,3)
                         , rect 10 100
          |> filled darkBrown
          |> scaleX 3
          |> rotate (degrees 90)
          |> move (0,-35)
                         ]

        myBackground = square 200 |> filled pink
    in (("DistinctCrocodile",myWord,"6"),("Plant","given to Saginaw",myShapes))

  ,    let
        myWord = "pot"-- put your work here (in quotes) --
        myCode = 681-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group [square 10
                             |> filled charcoal
                             |> scale 2
                        -- , graphPaper 10 |> makeTransparent 0.2
                         ,rect 4 5
                             |> outlined (solid 1) black
                             |> move (8,12)
                          ,rect 4 5
                             |> outlined (solid 1) black
                             |> move (-8,12)
                         ] |> scale 3 ]

        myBackground = square 400 |> filled white



    in (("FantasticGalangal",myWord,"6"),("pot","given to Saginaw",myShapes))

  ,    let
        myWord = "light" -- put your work here (in quotes) --
        myCode = 639 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , circle 40
                             |> filled white
                         , circle 30
                             |> filled (rgb 255 255 160)
                         , circle 20
                             |> filled (rgb 255 255 120)
                         , rect 10 40
                             |> filled (rgb 255 255 120)
                             |> move (0, -30)
                         , rect 10 40
                             |> filled (rgb 255 255 120)
                             |> move (0, 30)
                         , rect 40 10
                             |> filled (rgb 255 255 120)
                             |> move (30, 0)
                         , rect 40 10
                             |> filled (rgb 255 255 120)
                             |> move (-30, 0)
                         , rect 10 40
                             |> filled (rgb 255 255 120)
                             |> rotate (degrees 45)
                             |> move (27, -28)
                         , rect 10 40
                             |> filled (rgb 255 255 120)
                             |> rotate (degrees 135)
                             |> move (-27, -28)
                         , rect 10 40
                             |> filled (rgb 255 255 120)
                             |> rotate (degrees 225)
                             |> move (-27, 28)
                         , rect 10 40
                             |> filled (rgb 255 255 120)
                             |> rotate (degrees 315)
                             |> move (27, 28)
                         ]

        myBackground = square 200 |> filled pink
    in (("FestiveGarlic",myWord,"6"),("I Can See The Light","given to Saginaw",myShapes))

  ,    let
        myWord = "kitten"-- put your work here (in quotes) --
        myCode = 636-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                          , kittenCat darkBrown
                             |> scale 1.5
                             |> move (-30,0)
                          , head darkBrown
                             |> scale 1.5
                             |> rotate (degrees 360 * (sin model.time))
                             |> move (-30,0)
                             |> move (0,3 - 7 * (sin model.time))
                          , head brown
                             |> rotate (degrees 360 * (sin model.time))
                             |> move (0,3 - 7 * (sin model.time))
                          , kittenCat brown
                          , triangle 10
                             |> filled red
                             |> rotate (degrees -30)
                             |> move (40,-35)

                             ]
        kittenCat fur = group [ oval 10 20
                             |> filled fur
                             |> scale 2
                             |> rotate (degrees 87)
                             |> move (27,0)
                         , curve (0,0) [Pull (10,0) (20,-10)]
                             |> filled fur
                             |> scale 0.75
                             |> rotate (degrees -70)
                             |> move (47,15)
                         , oval 5 17
                             |> filled fur
                             |> move (33,-17)
                         , oval 5 17
                             |> filled fur
                             |> move (40,-15)
                         , oval 5 17
                             |> filled fur
                             |> move (24,-17)
                         , oval 5 17
                             |> filled fur
                             |> move (16,-15)
                             ]



        head headFur = group [  circle 10
                             |> filled headFur
                         , triangle 7
                             |> filled headFur
                             |> move (-7,10)
                         , triangle 7
                             |> filled headFur
                             |> rotate (degrees -67)
                             |> move (7,10)
                         , triangle 3
                             |> filled white
                             |> move (-7,10)
                         , triangle 3
                             |> filled white
                             |> rotate (degrees -67)
                             |> move (7,10)
                         , circle 1.5
                             |> filled black
                             |> move (-5,5)
                         , circle 1.5
                             |> filled black
                             |> move (5,5)
                         , circle 2.4
                             |> outlined (solid 1) black
                             |> scale 1.5
                             |> move (-3.5,-2.7)
                         , wedge 10 0.75
                             |> filled headFur
                             |> scale 0.5
                             |> rotate (degrees -220)
                             |> move (-3,-2.7)
                         , circle 2.4
                             |> outlined (solid 1) black
                             |> scale 1.5
                             |> move (3.5,-2.7)
                         , wedge 10 0.75
                             |> filled headFur
                             |> scale 0.5
                             |> rotate (degrees -315)
                             |> move (3,-2.7)
                         , roundedRect 10 10 5
                             |> filled black
                             |> scale 0.5
                             |> scaleX 0.5
                             |> rotate (degrees -90)
                         , rect 17 0.5
                             |> filled black
                             |> rotate (degrees 25)
                         , rect 17 0.5
                             |> filled black
                         , rect 17 0.5
                             |> filled black
                             |> rotate (degrees -25)
                         ]

        myBackground = square 200 |> filled pink
    in (("FabulousFinch",myWord,"6"),("IT'S A...... KITTEN!!!!!!!","given to Saginaw"

       ,myShapes))

  ,    let
        myWord = "oatmeal"-- put your work here (in quotes) --
        myCode = 664-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                          ,group [rect 20 10
                          |> filled darkBrown
                          |> move (0,-3.5)
                          ,oval 50 20
                          |> filled darkBrown
                          |> scale 0.7
                          |> move (0,-2)
                          ,rect 35 5
                          |> filled darkBrown
                          |> move (0,2)
                          ,circle 50
                          |> filled lightBrown
                          |> scale 0.05
                          |> move (9,3)
                         ,circle 50
                          |> filled lightBrown
                          |> scale 0.05
                          |> move (-9,3)
                         ,circle 50
                          |> filled lightBrown
                          |> scale 0.05
                          |> move (0,0)
                         ,circle 50
                          |> filled lightBrown
                          |> scale 0.05
                          |> move (-8,-3)
                         ,circle 50
                          |> filled lightBrown
                          |> scale 0.05
                          |> move (8,-4)
                         ,circle 50
                          |> filled brown
                          |> scale 0.05
                          |> move (-4,1)
                         ,circle 50
                          |> filled brown
                          |> scale 0.05
                          |> move (4,1)
                         ,circle 50
                          |> filled brown
                          |> scale 0.05
                          |> move (14,-3)
                         ,circle 50
                          |> filled brown
                          |> scale 0.05
                          |> move (-14,3)



          ] |> scale 2.6


                         ]

        myBackground = square 200 |>  filled white
    in (("FantasticGalangal",myWord,"6"),("oatmeal","given to Saginaw",myShapes))

  ,    let
        myWord = "animal"
        myCode = 540
        myShapes model = [ myBackground
                         , square 20
                             |> filled red
                             |> move (0,30)
                         , rect 5 9
                             |> filled red
                             |> move (0,44)
                         , oval 16 8
                             |> filled black
                             |> move (0,25)
                         , rect 5 9
                             |> filled red
                             |> move (9,44)
                         , rect 5 9
                             |> filled red
                             |> move (-9,44)
                         , square 2
                             |> filled black
                             |> move (5,33)
                         , square 2
                             |> filled black
                             |> move (-5,33)
                         , rect 30 50
                             |> filled red
                             |> move (0,-5)
                         , rect 10 40
                             |> filled red
                             |> move (-15,-5 + 5 * sin model.time)
                         , rect 10 40
                             |> filled red
                             |> move (15,-5 + -5 * sin model.time)
                         , rect 40 10
                             |> filled lightCharcoal
                             |> move (0,-45)
                         , oval 40 20
                             |> filled charcoal
                             |> rotate (degrees -10 * sin model.time)
                             |> move (0,-40)
                         , rect 20 5
                             |> filled lightBrown
                             |> rotate (degrees -22.5)
                             |> move (-6,-25 + 5 * sin model.time)
                         , rect 20 5
                             |> filled lightBrown
                             |> move (6,-25 + -5 * sin model.time)
                             |> rotate (degrees 22.5)
                         , eighthNote
                             |> rotate (degrees -2 * sin model.time)
                         ]

        eighthNote = group [ rect 1 5
                             |> filled black
                             |> move (32,-27)
                         , rect 1 5
                             |> filled black
                             |> move (27,-27)
                         , rect 5 1
                             |> filled black
                             |> move (30,-25)
                         , circle 1
                             |> filled black
                             |> move (26,-29)
                         , circle 1
                             |> filled black
                             |> move (31,-29)
                         ]
        myBackground = square 200 |> filled darkGreen
    in (("DiligentCrane",myWord,"6"),("Animal","given to Saginaw",myShapes))

  ,    let
        myWord = "ant"
        myCode = 508
        myShapes model = [ myBackground
                         , group [ circle 6
                             |> filled black
                             |> rotate model.time
                             |> move (-15, 0)
                        , circle 7
                             |> filled black
                             |> rotate model.time
                             |> move (-4, 0)
                        , circle 8
                             |> filled black
                             |> rotate model.time
                             |> move (9, 0)
                        , roundedRect 15 3 5
                             |> filled black
                             |> rotate (degrees -90)
                             |> move (10,-5)
                             |> makeTransparent 0.5
                         , roundedRect 15 3 5
                             |> filled black
                             |> rotate (degrees -90)
                             |> move (-10,-5)
                             |> makeTransparent 0.5
                        , roundedRect 15 3 5
                             |> filled black
                             |> rotate (degrees -90)
                             |> move (-5,-5)
                             |> makeTransparent 0.5
                        , roundedRect 15 3 5
                             |> filled black
                             |> rotate (degrees -90)
                             |> move (5,-5)
                             |> makeTransparent 0.5
                      , roundedRect 15 3 5
                             |> filled black
                             |> rotate (degrees -90)
                             |> move (1,-5)
                             |> makeTransparent 0.5
                      , roundedRect 15 3 5
                             |> filled black
                             |> rotate (degrees -90)
                             |> move (14,-5)
                             |> makeTransparent 0.5
                     , roundedRect 15 3 5
                             |> filled black
                             |> rotate (degrees -90)
                             |> move (-15, 7)
                             |> makeTransparent 0.5
                     , roundedRect 15 3 5
                             |> filled black
                             |> rotate (degrees -90)
                             |> move (-18,7)
                             |> makeTransparent 0.5
                    ] |> scale 2 ]

        myBackground = square 200 |> filled pink
    in (("FortunateGiraffe",myWord,"6"),("ant","given to Saginaw",myShapes))

  ,    let
        myWord = "nest" -- --
        myCode = "660" -- --

        myShapes model = [ myBackground
                         , rect 30 100
                             |> filled darkBrown
                             |> move (-30,0)
                         , rect 50 10
                             |> filled darkBrown
                             |> move (0,-10)
                         , oval 25 15
                             |> filled brown
                             |> move (15,0)
                         , oval 20 10
                             |> filled darkBrown
                             |> move (15,0)
                         , oval 5 7
                             |> filled white
                             |> move (15,0)
                         , oval 5 7
                             |> filled white
                             |> move (10,0)
                         , oval 5 7
                             |> filled white
                             |> move (13,2)
                         , oval 5 7
                             |> filled white
                             |> move (20,0)
                         , oval 5 7
                             |> filled white
                             |> move (17,2)
                         , oval 20 30
                             |> filled black
                             |> move (-30,-10)
                         , rect 10 5
                             |> filled darkBrown
                             |> move (-45,20)
                         , circle 10
                             |> filled yellow
                             |> move (40,40)
                         , circle 5
                             |> filled white
                             |> move (35,35)
                         , circle 5
                             |> filled white
                             |> move (30,35)
                         , circle 5
                             |> filled white
                             |> move (33,40)
                         , circle 5
                             |> filled white
                             |> move (25,35)
                         , circle 5
                             |> filled white
                             |> move (27,40)
                         , circle 5
                             |> filled white
                             |> move (20,35)
                         , circle 3
                             |> filled darkBlue
                             |> move (0,20)
                         , oval 5 10
                             |> filled darkBlue
                             |> move (0,15)
                         , oval 3 5
                             |> filled blue
                             |> move (0,15)
                         , wedge 2 0.75
                             |> filled orange
                             |> rotate (degrees 210) |> move (3,20)
                         , circle 1
                             |> filled black
                             |> move (0,21)
                         , rect 30 5
                             |> filled darkBrown
                             |> move (-10,10)
                         , group [rect 2 10
                             |> filled black
                             |> move (30,-10)
                             |> rotate (degrees <| 180 + 45)
                         , triangle 2
                             |> filled black
                             |> move (27,-7)
                             |> rotate (degrees <| 12 )
                             ] |> move (3 * sin model.time, -3 * sin model.time)
                         , eigthNote
                         , quarterNote
                         ]

        eigthNote = group [ rect 1 5
                             |> filled black
                             |> move (28,33)
                         , rect 1 5
                             |> filled black
                             |> move (23,33)
                         , rect 5 1
                             |> filled black
                             |> move (26,35)
                         , circle 1
                             |> filled black
                             |> move (22,31)
                         , circle 1
                             |> filled black
                             |> move (27,31)
                         ]

        quarterNote = group [ rect 1 5
                             |> filled black
                             |> move (15,25)
                         , circle 1
                             |> filled black
                             |> move (14,23)
                         ]

        myBackground = square 200 |> filled lightBlue
    in (("DelightedCoral",myWord,"6"),("nest","given to Saginaw",myShapes))

  ,    let
        myWord = "star" -- put your work here (in quotes) --
        myCode = 723 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         ,polygon [(0,0),(-23,37),(23,36)]
                          |> filled (rgb 255 255 0)
                          |> scale 0.5
                          |> move (20,-1)
                         --, graphPaper 10 |> makeTransparent 0.4
                         ,polygon [(0,0),(-23,37),(23,36)]
                          |> filled (rgb 255 255 0)
                          |> scale 0.5
                          |> move (-20,-1)
                         ,polygon [(0,35),(-23,1),(23,1)]
                          |> filled (rgb 255 255 0)
                          |> move (0,15)
                          |> scale 0.5
                          ,polygon [(0,0),(-23,37),(23,36)]
                          |> filled (rgb 255 255 0)
                          |> scale 0.5
                          |> rotate (degrees 180) |> move (-20,0)
                          ,polygon [(0,0),(-23,37),(23,36)]
                          |> filled (rgb 255 255 0)
                          |> scale 0.5
                          |> rotate (degrees 180) |> move (20,0)
                          ,polygon [(0,0),(-23,37),(23,36)]
                          |> filled (rgb 255 255 0)
                          |> scale 0.5
                          |> move (1,-35)
                          ,ngon 6 20
                          |> filled (rgb 255 255 0)
                          |> move (0,0)
                         ]

        myBackground = square 200 |> filled white
    in (("FantasticGalangal",myWord,"6"),("star","given to Saginaw",myShapes))

  ,    let
        myWord ="wish" -- put your work here (in quotes) --
        myCode =765 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                        , wish
                          |> move (65 - 100*cos(0.7*model.time),55- 100*cos(0.7*model.time) )
                         ]

        wish = group [ triangle 10
          |> filled yellow
            , triangle 10
          |> filled yellow
          |> rotate (degrees 180) ]
        myBackground = square 200 |> filled blue
    in (("DoubtfulCrocus",myWord,"6"),("Shooting star","given to Saginaw",myShapes))

  ,    let
        myWord = "fog"-- put your work here (in quotes) --
        myCode = 597-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                             , rect 25 75
                             |> filled darkGray
                             |> move (30, -30)
                             |> makeTransparent 0.3
                             , rect 25 100
                             |> filled darkGray
                             |> move (-2, -30)
                             |> makeTransparent 0.3
                             , rect 25 25
                             |> filled darkGray
                             |> move (-30, -40)
                             |> makeTransparent 0.4
                             , triangle 20
                             |> filled darkGray
                             |> rotate (degrees 90)
                             |> move (-30, -17.5)
                             |> makeTransparent 0.4
                             , circle 30
                             |> filled yellow
                             |> move ((sin model.time)* 30 + 0, 30)
                             |> makeTransparent 0.5
                        -- , graphPaper 10 |> makeTransparent 0
                         ]

        myBackground = square 400 |> filled white

    in (("GloriousHorse",myWord,"6"),("fog","given to Saginaw",myShapes))

  ,    let
        myWord = "sea"-- put your work here (in quotes) --
        myCode = 702-- put your code number here, which came with your word (not in quotes) --
        fish model = group [

                          oval 20 15
                           |> filled (rgb 137 255 0)
                           |> move (30,-20)
                         , triangle 30
                           |> filled (rgb 137 255 0)
                           |> scaleX 0.25
                           |> scaleY 0.25
                           |> rotate (degrees 180)
                           |> move (45,-20)
                         , circle 30
                           |> filled (rgb 0 0 0)
                           |> scale 0.25
                           |> scaleX 0.25
                           |> scaleY 0.25
                           |> move (25,-18)
                           ]
        myShapes model = [ myBackground
                         , circle 30
                           |> filled (rgb 255 237 64)
                         , rect 100 50
                           |> filled (rgb 0 46 198)
                           |> move (0,-25)
                         , fish model
                           |> move (-4*model.time,0)
                         ]

        myBackground = square 200 |> filled (rgb 0 179 255)
    in (("GigglingHenna",myWord,"6"),("Fish in the Sea","given to Saginaw",myShapes))

  ,    let
        myWord = "woman"
        myCode = 766

        myShapes model = [ myBackground
                         ,circle 20
                             |> filled darkBrown
                             |> move (0,-2)
                         , circle 15
                             |> filled lightBrown
                             |> move (0,-2)
                         ,roundedRect 30 40 7
                             |> filled pink
                             |> move (0,-35)
                         ,circle 2
                             |> filled black
                             |> move (-5,0)
                         ,circle 2
                             |> filled black
                             |> move (5,0)
                         ,curve (0,0) [Pull (10,0) (20,-10)]
                             |> filled lightRed
                             |> rotate (degrees -150)
                             |> move (11,-10)
                         ,rect 10 35
                             |> filled pink
                             |> rotate (-150)
                             |> move (20,-30)
                         ,rect 10 35
                             |> filled pink
                             |> rotate (150)
                             |> move (-20,-30)
                         ]
        myBackground = square 200
                             |> filled hotPink

    in (("FamousFrankincense",myWord,"6"),("woman","given to Saginaw",myShapes))

  ,    let
        myWord = "ladybug"
        myCode =  637
        myShapes model =[ myBackground
                        , ladyBug |> scale 0.9 |> move (0,-10)
                        |>rotate (degrees model.time)

                       ]

        ladyBug = group [ rect 10 45
                       |> filled black
                       |> scale 0.5
                       |> rotate (degrees -45)
                       |> move (20,55)
                       ,rect 10 45
                       |> filled black
                       |> scale 0.5
                       |> rotate (degrees 45)
                       |> move (-20,55)
                       , circle 15
                        |> filled black
                        |> move (0,40)
                        , circle 40
                        |> filled black
                         ,wedge 40 0.95
                       |> filled red
                       |> rotate (degrees -450)
                        , wedge 40 0.15
                       |> filled black
                       |> rotate (degrees -450)
                        ,circle 30
                       |> filled black
                       |> scale -0.25
                       |> move (20,20)
                        , circle 30
                       |> filled black
                       |> scale -0.25
                       |> move (-20,20)
                       , circle 8
                       |> filled black
                       |> move (-30,-10)
                       , circle 8
                       |> filled black
                       |> move (30, -10)
                       ]

        myBackground = square 200
                       |> filled white
    in (("GarrulousGrasshopper",myWord,"6"),("ladybug","given to Saginaw",myShapes))

  ,    let
        myWord = "desk"
        myShapes model = [ myBackground

                         ,group [rect 5 50
          |> filled darkGray
          |>move (-50,5)
                         ,rect 5 50
          |> filled darkGray
          |>move (-30,-25)
                         ,rect 5 50
          |> filled darkGray
          |>move (30,-25)
                         ,rect 5 50
          |> filled darkGray
          |>move (10,5)
          , polygon [(-50,30),(-30,0),(30,0),(10,30)]
                             |> filled yellow
          ] |> move (9,5) ]
        myBackground = square 200 |> filled red
        myCode = 569
    in (("DramaticCrow",myWord,"6"),("desk","given to Saginaw",myShapes))

  ,    let
        myWord = "alarm"-- put your work here (in quotes) --
        myCode = 503 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                        , group [circle 50
                        |> filled red
                        |> move (0,0)
                        ,circle 20
                        |> filled darkOrange
                        |> move (0,0)
                        ,circle 10
                        |> filled charcoal
                        |> move (0,0)
          ] |> scale 0.9 |> move (3*sin(model.time*50),0)

                         ]

        myBackground = square 200 |> filled white
    in (("EcstaticDate",myWord,"6"),("alarm","given to Saginaw",myShapes))

  ,    let
        myWord = "chicken"--put your work here (in quotes) --
        myCode = 546 --put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group [triangle 10
                             |> filled red
                             |> scaleX 2
                             |> rotate (degrees -450)
                             |> move (0,40)
                         , circle 40
                             |> filled white
                             |> move (0,-10)
                         , circle 10
                             |> filled red
                             |> move (0,45)
                         , triangle 15
                             |> filled orange
                             |> rotate (degrees -450)
                             |> move (0,-10)
                         , circle 8
                             |> filled black
                             |> move (10,10)
                         , circle 8
                             |> filled black
                             |> move (-10,10)
                         ] |> scale 0.9]

        myBackground = square 200 |> filled blue
    in (("FierceGazelle",myWord,"6"),("Chicken","given to Saginaw",myShapes))

  ,    let
        myWord = "mice" -- put your work here (in quotes) --
        myCode = 652-- put your code number here, which came with your word (not in quotes) --

        mouse = group [ rectangle 2 10
                             |> filled black
                             |> rotate (degrees 180)
                             |> move (20, -20)
                         , rectangle 2 10
                             |> filled black
                             |> rotate (degrees 180)
                             |> move (40, -20)
                         , oval 10 20
                             |> filled lightBrown
                             |> rotate (degrees 90)
                             |> move (30, -15)
                         , circle 5
                             |> filled lightBrown
                             |> move (20, -8)
                         , circle 1
                             |> filled black
                             |> move (17, -7)
                          , circle 1
                             |> filled black
                             |> move (22, -7)
                          , circle 1
                             |> filled pink
                             |> move (20, -9)
                           , rectangle 1 13
                             |> filled lightBrown
                             |> rotate (degrees 68)
                             |> move (45, -15)
                           , oval 4 3
                             |> filled pink
                             |> rotate (degrees 90)
                             |> move (16, -3)
                           , oval 4 3
                             |> filled pink
                             |> rotate (degrees 90)
                             |> move (23, -3)
                      ]
        myShapes model= [ myBackground
                        , mouse |> move (0, -10) |> move (40*(cos model.time), 0)
                        , mouse |> move (-30, -10) |> move (40*(cos model.time), 0)
                        , mouse |> move (-60, -10) |> move (40*(cos model.time), 0)
                        , rectangle 10 300 |> filled black |> rotate (degrees 90) |> move (0, -45)
                        ]







        myBackground = square 200 |> filled darkBlue


    in (("FriendlyGoldfish",myWord,"6"),("Three Blind Mice","given to Saginaw",myShapes))

  ,    let
        myWord = "rat"-- put your work here (in quotes) --
        myCode = 690-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , oval 20 10
                           |> filled charcoal
                           |> scale 2
                           |> scaleX 1
                         ,curve (0,0) [Pull (10,0) (20,-10)]
                           |> filled pink
                           |> scale 1.25
                           |> scaleX 1.25
                           |> move (10,0)
                          ,roundedRect 20 10 5
                           |> filled black
                           |> scaleX 0.4
                           |> move (-14,5)
                          ,roundedRect 20 10 5
                           |> filled pink
                           |> scaleX 0.4
                           |> scaleY 0.75
                           |> move (-22,0)
                          , oval 20 10
                           |> filled pink
                           |> scaleX 0.7
                           |> scaleY 1.1
                           |> rotate (degrees 40)
                           |> move (0.4,11)
                                          ]
        myBackground = square 200 |> filled white
    in (("ContentCelery",myWord,"6"),("The title is \"Rat\". That's ok right.","given to Saginaw"

       ,myShapes))

  ,    let
        myWord = "jellyfish" -- put your work here (in quotes) --
        myCode = 631 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground

                          , group [oval 106 50
                          |> filled (rgb 255 132 253)
                          |> move ( 0, 20 )
                          , curve (0,0) [Pull (10,0) (20,-10)]
                          |> outlined (solid 3.5) white
                          |> rotate (degrees 300)
                          |> move (10,0)
                         , curve (0,0) [Pull (10,0) (20,-10)]
                          |> outlined (solid 3.5) white
                          |> rotate (degrees 120)
                          |> move ( 14,-40)
                          ,curve (0,0) [Pull (10,0) (20,-10)]
                          |> outlined (solid 3.5) white
                          |> rotate (degrees -60)
                          |> move (14,-40)
                           , curve (0,0) [Pull (10,0) (20,-10)]
                          |> outlined (solid 3.5) white
                          |> rotate (degrees 300)
                          |> move (-10,0)
                         , curve (0,0) [Pull (10,0) (20,-10)]
                          |> outlined (solid 3.5) white
                          |> rotate (degrees 120)
                          |> move ( -6,-40)
                          ,curve (0,0) [Pull (10,0) (20,-10)]
                          |> outlined (solid 3.5) white
                          |> rotate (degrees -60)
                          |> move (-6,-40)
                            , curve (0,0) [Pull (10,0) (20,-10)]
                          |> outlined (solid 3.5) white
                          |> rotate (degrees 300)
                          |> move (-30,0)
                         , curve (0,0) [Pull (10,0) (20,-10)]
                          |> outlined (solid 3.5) white
                          |> rotate (degrees 120)
                          |> move ( -26,-40)
                          ,curve (0,0) [Pull (10,0) (20,-10)]
                          |> outlined (solid 3.5) white
                          |> rotate (degrees -60)
                          |> move (-26,-40)
                           , curve (0,0) [Pull (10,0) (20,-10)]
                          |> outlined (solid 3.5) white
                          |> rotate (degrees 300)
                          |> move (30,0)
                         , curve (0,0) [Pull (10,0) (20,-10)]
                          |> outlined (solid 3.5) white
                          |> rotate (degrees 120)
                          |> move ( 34,-40)
                          ,curve (0,0) [Pull (10,0) (20,-10)]
                          |> outlined (solid 3.5) white
                          |> rotate (degrees -60)
                          |> move ( 34,-40)
                          , curve (0,0) [Pull (10,0) (20,-10)]
                          |> outlined (solid 3.5) white
                          |> rotate (degrees 300)
                          |> move (-50,0)
                         , curve (0,0) [Pull (10,0) (20,-10)]
                          |> outlined (solid 3.5) white
                          |> rotate (degrees 120)
                          |> move ( -46,-40)
                          ,curve (0,0) [Pull (10,0) (20,-10)]
                          |> outlined (solid 3.5) white
                          |> rotate (degrees -60)
                          |> move ( -46,-40)
                             , curve (0,0) [Pull (10,0) (20,-10)]
                          |> outlined (solid 3.5) white
                          |> rotate (degrees 300)
                          |> move (50,0)
                         , curve (0,0) [Pull (10,0) (20,-10)]
                          |> outlined (solid 3.5) white
                          |> rotate (degrees 120)
                          |> move ( 54,-40)
                          ,curve (0,0) [Pull (10,0) (20,-10)]
                          |> outlined (solid 3.5) white
                          |> rotate (degrees -60)
                          |> move ( 54,-40)
                          , rect 100 30
                          |> filled (rgb 255 132 253)
                          |> move ( 0,10 )
                          ,oval 10 15
                          |> filled black
                          |> scale 2
                          |> move (-20,20)
                           ,oval 10 15
                          |> filled black
                          |> scale 2
                          |> move (20,20)
                          ,curve (0,0) [Pull (10,0) (20,-10)]
                          |> outlined (solid 3) black
                          |> rotate (degrees -150)
                          |> move (10,5)

                           -- graphPaper 10 |> makeTransparent 0.4 --
                          ] |> scale 0.9]

        myBackground = square 200 |> filled lightBlue




    in (("FancyFrog",myWord,"6"),("Jellyfish","given to Saginaw",myShapes))

  ,    let
        myWord = "food" --put your work here (in quotes)
        myCode = 598 -- put your code number here, which came with your word (not in quotes)

        myShapes model = [ myBackground
                           ,ngon 6 30
                                  |> filled darkBrown
                                  |> move (0,0)
                           ,circle 10
                                  |> filled white
                                  |> move (10,0)
                           ,circle 10
                                  |> filled white
                                  |> move (-0,0)
                           ,circle 10
                                  |> filled white
                                  |> move (-10,0)
                           ,circle 10
                                  |> filled white
                                  |> move (-20,0)
                           ,circle 10
                                  |> filled white
                                  |> move (20,0)
                                    ,circle 10
                                  |> filled white
                                  |> move (20,0)
                            ,circle 10
                                  |> filled white
                                  |> move (0,10)
                            ,circle 10
                                  |> filled white
                                  |> move (10,10)
                            ,circle 10
                                  |> filled white
                                  |> move (15,10)
                            ,circle 10
                                  |> filled white
                                  |> move (-15,10)
                            ,circle 10
                                  |> filled white
                                  |> move (-10,10)
                             ,circle 10
                                  |> filled white
                                  |> move (-10,20)
                             ,circle 10
                                  |> filled white
                                  |> move (0,20)
                             ,circle 10
                                  |> filled white
                                  |> move (10,20)
                             ,circle 11
                                  |> filled red
                                  |> move (0,35)
                             ,curve (0,0) [Pull (10,0) (20,-10)]
                                  |> filled darkGreen
                                  |> rotate (degrees -990)
                                  |> move (-0,35)
                             ,rect 150 45
                                  |> filled black
                                  |> move (75,0)
                                  |> move (100*cos model.time,0)
                             ,wedge 30 0.75
                                  |> filled yellow
                                  |> move (100*(cos model.time),0)

                         ]
        myBackground = square 200 |> filled black
    in (("GiantHemlock",myWord,"6"),("PAC MAN EATS CUPCAKES","given to Saginaw",myShapes))

  ,    let
        myWord = "cup" --
        myCode = 565 --
        myShapes model = [ myBackground
                         ,circle 15
                         |> outlined (solid 3) hotPink
                         |> move (10,8)
                         ,rect 30 50
                         |> filled white
                         ]

        myBackground = square 200 |> filled gray
    in (("EagerCypress",myWord,"6"),("cup","given to Saginaw",myShapes))

  ,    let
        myWord = "horse" -- put your work here (in quotes) --
        myCode = 625 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , rectangle 70 22
                               |> filled black
                         , rect 10 36
                               |> filled black
                               |> move (-27,-10)
                           -- , graphPaper 10 |> makeTransparent 0.4
                                , rect 10 36
                               |> filled black
                               |> move ( -9,-10)
                           -- , graphPaper 10 |> makeTransparent 0.4
                                , rect 10 36
                               |> filled black
                               |> move ( 9,-10)
                           -- , graphPaper 10 |> makeTransparent 0.4
                                , rect 10 36
                               |> filled black
                               |> move ( 25,-10)
                           -- , graphPaper 10 |> makeTransparent 0.4
                                 , circle 10
                               |> filled darkBrown
                               |> move (-30,20)
                           -- , graphPaper 10 |> makeTransparent 0.4
                                 , rect 10 15
                               |> filled darkBrown
                               |> move (40,10)
                           -- , graphPaper 10 |> makeTransparent 0.4
                                 , circle 2
                               |> filled darkBlue
                               |> move (-35,22)
                                 , openPolygon [(0,0),(0,-10),(30,0)]
                               |> filled darkBrown
                               |> move (-50,90)
                                 , circle 5
                               |> filled blue
                               |> move (-35,15)
                                 ,rect 10 15
                               |> filled darkBrown
                               |> move (-30,30)
                                 ,rect 15 10
                               |> filled darkBrown
                               |> move (-30,39)
                        ]



        myBackground = square 270 |> filled green
    in (("GenuineHawk",myWord,"6"),("Mr. Horse","given to Saginaw"

       ,myShapes))

  ,    let
        myWord ="kiss" -- put your work here  --
        myCode =634 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , circle 10
                             |> filled (rgb 255 153 183)
                             |> scale 2
                             |> move (20,0)
                         , oval 10 15
                             |> filled red
                             |> rotate (degrees -90)
                             |> move (5,0)
                         , head1
                             |> move (-10 + 5 * sin model.time,0)
                         ]

        head1= group [ circle 10
                             |> filled (rgb 255 153 183)
                             |> scale 2
                             |> move (-20,0)
                        , oval 10 15
                             |> filled red
                             |> rotate (degrees -90)
                             |> move (-5,0)
                        ]

        myBackground = square 200 |> filled white
    in (("DelightfulCoriander",myWord,"6"),("Kiss","given to Saginaw",myShapes))

  ,    let
        myWord = "jam"
        myCode = 629

        myShapes model = [ myBackground
                           , jam model
                             |> rotate (degrees (180 * model.time))
                         ]

        jam model = group [
                          rect 10 15
                             |> outlined (solid 1) darkCharcoal
                             |> scale 2
                             |> scaleX 2
                             |> scaleY 2
                             |> rotate (degrees 0)
                             |> move (0,0)
                             |> makeTransparent 1

                          , rect 9 10
                             |> filled (rgb 255 0 67)
                             |> scale 2
                             |> scaleX 2
                             |> scaleY 2
                             |> rotate (degrees 0)
                             |> move (0,-10)
                             |> makeTransparent 1

                          , oval 90 30
                             |> filled (rgb 240 20 40)
                             |> scale 0.80
                             |> scaleX 0.80
                             |> scaleY 0.80
                             |> rotate (degrees 180)
                             |> move (0,30)
                             |> makeTransparent 1

                          , triangle 8
                             |> filled red
                             |> scale 0.25

                          , triangle 8
                             |> filled red
                             |> scale 0.25
                             |> move (10, -20)

                          , triangle 8
                             |> filled red
                             |> scale 0.25
                             |> move (-10, -10)
                         ]

        myBackground = square 200 |> filled white
    in (("GargantuanGrass",myWord,"6"),("Strawberry Jam By Nur","given to Saginaw",myShapes))

  ,    let
        myWord = "pencil" --put your work here (in quotes) --
        myCode = 673 --put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         ,text "Hello"
                          |> filled charcoal
                          |> scale 1
                          |> rotate (degrees 30)
                          |> move (-20,-50)
                         ,pencil
                         |> move (-20-10*cos model.time ,-20-6*cos model.time)
                         ]

        pencil= group [ rect 20 65
                         |> filled lightYellow
                         |> scale 1
                         |> move (0,17)
                          ,triangle 10
                          |> filled lightBrown
                          |> scale 1.25
                          |> rotate (degrees 30)
                          |> move (0,-20)
                          ,triangle -30
                          |> filled charcoal
                          |> scale 0.10
                          |> rotate (degrees 90)
                          |> move (0,-30)
                          ,roundedRect 20 20 5
                          |> filled pink
                          |> move (0,50)
                          ]

        myBackground = square 200 |> filled white
    in (("DaringChimpanzee",myWord,"6"),("Pencil Writing","given to Saginaw",myShapes))

  ,    let
        myWord = "pencil" --put your work here (in quotes) --
        myCode = 673 --put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [rect 40 5
            |> filled (rgb 255 212 38)
            |> scale 1.2
            |> scaleX 2
            |> rotate (degrees 90)
            |> move (0,10),

            rect 5 5
            |> filled pink
            |> scale 1.2
            |> move (0, 60),

            rect 10 5
            |> filled darkGray
            |> scale 1.2
            |> rotate (degrees 90)
            |> move (0, 52),

            circle 10
            |> filled lightCharcoal
            |> scale 0.17
            |> move (0, 56),

            circle 10
            |> filled lightCharcoal
            |> scale 0.17
            |> move (0, 48),

            text "Roman.L"
            |> filled lightCharcoal
            |> scale 0.44
            |> rotate (degrees -90)
            |> move (-2, 43),

            text "GRAPHITE  HB  #2"
            |> filled lightCharcoal
            |> scale 0.25
            |> rotate (degrees -90)
            |> move (-2, 20),

            isosceles 10 22
            |> filled (rgb 204 153 51)
            |> scale 0.64
            |> rotate (degrees 180)
            |> move (0, -38),

           isosceles 10 15
            |> filled (rgb 204 153 51)
            |> scale 0.2
            |> rotate (degrees 0)
            |> move (-2, -38),

             isosceles 10 15
            |> filled (rgb 204 153 51)
            |> scale 0.3
            |> rotate (degrees 0)
            |> move (0.98, -38),

            isosceles 10 15
            |> filled (rgb 0 0 0)
            |> scale 0.2
            |> rotate (degrees 180)
            |> move (0, -48)
           ] |> scale 0.8 |> move (0,-5) ]

    in (("Anonymous",myWord,"6"),("Pencil","given to Saginaw",myShapes))

  ,    let
        myWord = "picture"-- put your work here (in quotes) --
        myCode = 740-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground

                         , group [square 15.5
                         |> filled darkBrown

                 , square 10
                 |> filled blue

                 , square 9.5
                 |> filled white

                 , square 9
                  |> filled red

                  , square 8.5
                  |> filled blue
                  |> rotate (degrees 90)

                   , square 8
                   |> filled white

                    , square 7.5
                    |> filled red

                   ,square 7
                   |> filled blue

                   ,square 6.5
                       |> filled white
                     , square 6
                     |> filled red

                     , square 5.5
                        |> filled blue

                         , square 5
                         |> filled white


                        , square 4.5
                         |> filled red


                         , square 4
                         |> filled blue

                         , square 3.5
                           |> filled white


                           , square 3
                           |> filled red

                           , square 2.5
                           |> filled blue


                           , square 2
                           |> filled white

                           , square 1.5
                           |> filled red

                           , square 1
                           |> filled blue

                           , square 0.5
                           |> filled white

                           ] |> scale 4 ]




        myBackground = square 200 |> filled white
    in (("DarkCinnamon",myWord,"6"),("picture","given to Saginaw",myShapes))

  ,    let
        myWord = "deer" -- put your work here (in quotes) --
        myCode = 568-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                          ,group [roundedRect 5 15 5
                          |> filled white
                          |> rotate (degrees 330)
                          |> move (-20,40)
                          ,wedge 10 0.75
                          |> filled darkBrown
                          |> move (-30,30)
                          ,oval 52 25
                          |> filled darkBrown
                          |> move (0,20)
                          ,roundedRect 7 30 5
                          |> filled darkBrown
                          |> move (-15,5)
                          ,roundedRect 7 30 5
                          |> filled darkBrown
                          |> move (-5,5)
                          ,roundedRect 7 30 5
                          |> filled darkBrown
                          |> move (10,5)
                          ,roundedRect 7 30 5
                          |> filled darkBrown
                          |> move (20,5)
                          ,circle  3.5
                          |> filled black
                          |> move (-5,-6)
                          ,circle  3.5
                          |> filled black
                          |> move (-15,-6)
                          ,circle  3.5
                          |> filled black
                          |> move (10,-6)
                          ,circle  3.5
                          |> filled black
                          |> move (20,-6)
                          ,curve (0,0) [Pull (15,7) (21,0) ]
                          |> filled darkBrown
                          |> rotate (degrees 300) |> move (25,21)
                          |> rotate ( 0.3 * (sin model.time) - 0.2)






                         ] |> move (0,-15) ]

        myBackground = square 200 |> filled green
    in (("BusyBustard",myWord,"6"),("weird al's deer","given to Saginaw"

       ,myShapes))

  ,    let
        myWord = "family" --
        myCode = 585 --
        myShapes model = [ myBackground
                         , group [circle 10
                           |> filled (rgb 243 171 80)
                           |> move   (-35,40)

                         , rect 30 50
                           |> filled red
                           |> move (-35,5)

                         ,rect 10 30
                          |> filled blue
                          |> move (-45,-35)

                         ,rect 10 30
                          |> filled blue
                          |> move (-25,-35)


                          , circle 10
                           |> filled (rgb 243 171 80)
                           |> move   (35,40)



                         , rect 30 50
                           |> filled hotPink
                           |> move (35,5)

                          ,oval 20 5
                            |> filled (rgb 173 60 0)
                            |> scale 2
                            |> rotate (degrees 90)
                            |> move (25,30)

                            ,oval 20 5
                            |> filled (rgb 173 60 0)
                            |> scale 2
                            |> rotate (degrees 90)
                            |> move (45,30)


                           ,oval 10 6
                           |> filled (rgb 173 60 0)
                           |> scale 2
                           |> move (35,48)

                         ,rect 10 30
                          |> filled blue
                          |> move (25,-35)

                         ,rect 10 30
                          |> filled blue
                          |> move (45,-35)

                        ,circle 10
                          |> filled (rgb 243 171 80)
                          |> move (0,10)
                        ,rect 20 30
                         |> filled green
                         |> move (0,-15)

                       ,rect 20 20
                        |> filled blue
                        |> move (0,-40)
                         ] |> scale 0.9






                         ]

        myBackground = square 200 |> filled lightCharcoal



    in (("CuddlyChestnut",myWord,"6"),("Family","given to Saginaw",myShapes))

  ,    let
        myWord = "river" --
        myCode =  691--

        myShapes model = [ myBackground
                         , rect 160 30
                             |> filled blue
                             |> rotate (1)
                             |> move (5, 5 +5*sin(10*model.time))
                         , circle 5
                             |> filled yellow
                             |> move (-40,10)
                         , circle 5
                             |> filled pink
                             |> move (-40,5)
                         , circle 5
                             |> filled blue
                             |> move (-30,2)

                         ]

        myBackground = square 200 |> filled green
    in (("DescriptiveCorn",myWord,"6"),("flowing river","given to Saginaw",myShapes))

  ,    let
        myWord = "notebook"
        myCode = 662
        myShapes model = [ myBackground
                          --, graphPaper 10 |> makeTransparent 0.4
                         ,rect 100 1
                         |> filled lightBlue
                         ,rect 100 1
                         |> filled lightBlue
                         |> move (0,10)
                         ,rect 100 1
                         |> filled lightBlue
                         |> move (0,20)
                         ,rect 100 1
                         |> filled lightBlue
                         |> move (0,30)
                         ,rect 100 1
                         |> filled lightBlue
                         |> move (0,40)
                         ,rect 100 1
                         |> filled lightBlue
                         |> move (0,-10)
                         ,rect 100 1
                         |> filled lightBlue
                         |> move (0,-20)
                         ,rect 100 1
                         |> filled lightBlue
                         |> move (0,-30)
                         ,rect 100 1
                         |> filled lightBlue
                         |> move (0,-40)
                         ,rect 1 100
                         |> filled lightRed
                         |> move (-30,0)
                         ,circle 5
                         |> filled black
                         |> move (-40,0)
                         ,circle 5
                         |> filled black
                         |> move (-40,33)
                         ,circle 5
                         |> filled black
                         |> move (-40,-33)




                                        ]






        myBackground = square 200 |> filled white
    in (("FaintFish",myWord,"6"),("notebook","given to Saginaw",myShapes))

  ,    let
        myWord = "toad"-- put your work here (in quotes) --
        myCode =  742-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , oval 60 45
                             |> filled lightGreen
                             |> move (2,0)
                         , circle 10
                             |> filled white
                             |> scale 0.75
                             |> move (-30,10)
                         , circle 10
                             |> filled black
                             |> scale 0.5
                             |> move (-30,10)
                         ,  circle 10
                             |> filled white
                             |> scale 0.75
                             |> move (-20,0)
                          , circle 10
                             |> filled black
                             |> scale 0.5
                             |> move (-20,0)
                          , circle 10
                             |> filled darkGreen
                             |> scale 0.25
                          , circle 10
                             |> filled darkGreen
                             |> scale 0.25
                             |> move (-5,15)
                          , circle 10
                             |> filled darkGreen
                             |> scale 0.25
                             |> move (15,-15)
                          , circle 10
                             |> filled darkGreen
                             |> scale 0.25
                             |> move (20,15)
                          , circle 10
                             |> filled darkGreen
                             |> scale 0.25
                             |> move (10,10)
                          , circle 10
                             |> filled darkGreen
                             |> scale 0.25
                             |> move (-10,-15)
                          , circle 10
                             |> filled darkGreen
                             |> scale 0.25
                             |> move (10,0)
                          , curve (0,0) [Pull (10,0) (20,-10)]
                             |> filled lightGreen
                             |> scale 1.75
                             |> move (-10,-10)
                          , curve (0,0) [Pull (10,0) (20,-10)]
                             |> filled lightGreen
                             |> scale 1.75
                             |> rotate (degrees 70) |> move (-10,-30)

                         ]

        myBackground = square 200 |> filled lightBlue
    in (("DutifulCucumber",myWord,"6"),("Toad","given to Saginaw",myShapes))

  ,    let
        myWord = "banana" -- put your work here (in quotes)
        myCode = 512 -- put your code number here, which came with your word (not in quotes)

        myShapes model = [ myBackground
                            , curve (0,0) [Pull (10,0) (20,-10)]
                             |> filled yellow
                             |> scale 5
                             |> rotate (degrees -630)
                             |> move (-10,-40)
                             ,rect 10 15
                             |> filled yellow
                             |> scale 0.7
                             |> rotate (degrees -750)
                             |> move (-10,-40)
                         ]

        myBackground = square 200 |> filled white
    in (("GleamingHoneydew",myWord,"6"),("Banana","given to Saginaw",myShapes))

  ,    let
        myWord = "bead"-- put your work here (in quotes) --
        myCode = 516 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         ,circle 30
                         |> outlined (solid 4) black
                         |> rotate (degrees 30)
                         |> move (0,0)
                         ,group [roundedRect 50 20 10
                         |> filled lightPurple
                         |> move (0,-25)
                         ,rect 10 20
                         |> filled lightBlue
                         |> rotate (degrees 30)
                         |> move (0,-25)] |> rotate (4* model.time)

                         ]



        myBackground = square 200 |> filled grey

    in (("EcstaticDate",myWord,"6"),("bead","given to Saginaw",myShapes))

  ,    let
        myWord ="soap" -- put your work here (in quotes) --
        myCode = 713-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , oval 40 60
                             |> filled white
                             |> rotate (degrees 90)
                         , myStr

                    ]
        -- Add this new definition to your code
        myStr = text "SOAP"
                  |> filled (rgb 100 0 100)
        -- Add the following code to your shapes
                  |> move (-15,2)

        myBackground = square 200 |> filled black



    in (("DeterminedCotton",myWord,"6"),("soap","given to Saginaw",myShapes))

  ,    let
        myWord = "corn"
        myCode = 555

        myShapes model = [ myBackground
                         , roundedRect 30 25 5
          |> filled yellow
          |> scaleX 3
          |> rotate (degrees 90)
                         , triangle 20
          |> filled green
          |> scaleX 2
          |> rotate (degrees 90)
          |> move (0,-24)

                         ]

        myBackground = square 200 |> filled pink
    in (("DistinctCrocodile",myWord,"6"),("Corn Cob","given to Saginaw",myShapes))

  ,    let
        myWord = "sail"--
        myCode = 698--
        myShapes model = [ myBackground
                         , rect 20 100
                           |> filled brown
                         ,triangle 30
                           |> filled purple
                           |> move (20,40 + 10*sin(2*model.time))
                         ]

        myBackground = square 200 |> filled lightBlue
    in (("EagerCypress",myWord,"6"),("rising sail","given to Saginaw",myShapes))

  ,    let
        myWord = "woman" --put your work here (in quotes)
        myCode = "767"  --put your code number here, which came with your word (not in quotes)

        myShapes model = [ myBackground
                             ,circle 10
                             |> filled lightBrown
                             |> scale 1.10
                             |> move (0,6)
                             ,rect 5 15
                             |> filled (rgb 206 210 255)
                             |> scale 2
                             |> rotate (degrees -450)
                             |> move (20,-10)
                                  ,rect 5 15
                             |> filled (rgb 206 210 255)
                             |> scale 2
                             |> rotate (degrees -450)
                             |> move (-20,-10)
                             ,rect 10 15
                             |> filled (rgb 206 210 255)
                             |> scale 2
                             |> rotate (degrees -540)
                             |> move (0,-20)
                             |> scale 2
                             |> rotate (degrees -540)
                             |> move (0,-20)
                             ,rect 5 15
                             |> filled (rgb 206 210 255)
                             |> scale 2
                             |> rotate (degrees -540)
                             |> move (0,-20)


                        -- , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled black
    in (("GleamingHoneydew",myWord,"6"),("Women","given to Saginaw",myShapes))

  ,    let
        myWord = "pancake" -- put your work here (in quotes) --
        myCode = 668 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , oval 30 100
                         |> outlined (solid 10) hotPink
                         |> rotate (degrees 90)
                         |> move (0,-20)

                         , oval 20 90
                         |> filled (rgb 236 175 84)
                         |> rotate (degrees 90)
                         |> move (0,-20)

                         , rect 10 30
                         |> filled lightBrown
                         |> rotate (degrees 120)
                         |> move (30,30)

                         ,text "Syrup"
                         |> filled red
                         |> rotate (degrees 32)
                         |> move (20,20)

                         , circle 5
                         |> filled lightBrown
                         |> move (29.5, 39.5)

                         , rect 3 13
                         |> filled darkBrown
                         |> rotate (degrees -60)
                         |> move (10.8, 20)

                         , rect 1 8
                         |> filled darkBrown
                         |> rotate (degrees -180)
                         |> move (5,10)

                         , rect 1 8
                         |> filled darkBrown
                         |> rotate (degrees -45)
                         |> move (3,5)

                         , rect 1 8
                         |> filled darkBrown
                         |> rotate (degrees -180)
                         |> move (0,-1)

                         , rect 1 8
                         |> filled darkBrown
                         |> rotate (degrees 45)
                         |> move (3,-6)

                         , rect 1 8
                         |> filled darkBrown
                         |> rotate (degrees -45)
                         |> move (3,-13)










                         ]

        myBackground = square 200 |> filled lightGray
    in (("CleverCarrot",myWord,"6"),("Pancakes for Breakfast!","given to Saginaw",myShapes))

  ,    let
        myWord = "cherry"
        myCode = 545
        myShapes model = [ myBackground
                         , circle 15
                           |> filled hotPink
                           |> move (-20,-30)

                         , circle 15
                           |> filled hotPink
                           |> move (20,-30)

                         , rect 45 5
                           |> filled black
                           |> rotate (degrees 80)
                           |> move (-15,5)

                         , rect 45 5
                           |> filled black
                           |> rotate (degrees 290)
                           |> move (15,5)

                         ]

        myBackground = square 200 |> filled lightGray
    in (("DustyCuckoo",myWord,"6"),("cherry","given to Saginaw",myShapes))

  ,    let
        myWord = "face" -- put your work here (in quotes) --
        myCode = 584 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , oval 60 75
                                  |> filled (rgb 233 163 101)
                         , oval 7 15
                                  |> filled (rgb 243 173 111)
                         , oval 11 7
                                  |> filled (rgb 252 244 238)
                                  |> move (-12,11)
                         , oval 11 7
                                  |> filled (rgb 252 244 238)
                                  |> move (12,11)
                         , circle 3.5
                                  |> filled (rgb 3 95 255)
                                  |> move (-12,11)
                         , circle 3.5
                                  |> filled (rgb 3 95 255)
                                  |> move (12,11)
                         , circle 1.8
                                  |> filled (rgb 0 0 0)
                                  |> move (-12,11)
                         , circle 1.8
                                  |> filled (rgb 0 0 0)
                                  |> move (12,11)
                         , wedge 12 0.50
                                  |> filled (rgb 109 0 0)
                                  |> rotate (degrees -90)
                                  |> move (0,-12)
                         ]

        myBackground = square 200 |> filled lightGray

    in (("CarefulCamphor",myWord,"6"),("Face","given to Saginaw",myShapes))

  ,    let
        myWord = "fog"-- put your work here (in quotes) --
        myCode = 597-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                             , rect 25 75
                             |> filled darkGray
                             |> move (30, -30)
                             |> makeTransparent 0.3
                             , rect 25 100
                             |> filled darkGray
                             |> move (-2, -30)
                             |> makeTransparent 0.3
                             , rect 25 25
                             |> filled darkGray
                             |> move (-30, -40)
                             |> makeTransparent 0.4
                             , triangle 20
                             |> filled darkGray
                             |> rotate (degrees 90)
                             |> move (-30, -17.5)
                             |> makeTransparent 0.4
                             , circle 30
                             |> filled yellow
                             |> move ((sin model.time)* 30 + 0, 30)
                             |> makeTransparent 0.5
                        -- , graphPaper 10 |> makeTransparent 0
                         ]

        myBackground = square 400 |> filled white
    in (("GloriousHorse",myWord,"6"),("Early Sunsets over Monroeville","given to Saginaw",myShapes))

  ,    let
        myWord = "glove" -- put your work here (in quotes) --
        myCode = 603 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , circle 8
                             |> filled black
                             |> scale 3
                             |> move (0,-15)
                         ,oval 5 25
                             |> filled black
                             |> scale 1.5
                             |> scaleX 1.5
                             |> scaleY 1.5
                             |> rotate (degrees -275)
                             |> move (-20,-15)
                         , oval 5 25
                             |> filled black
                             |> scale 1.5
                             |> scaleX 1.5
                             |> scaleY 1.5
                             |> rotate (degrees 15) |> move (-20,5)
                         , oval 5 25
                             |> filled black
                             |> scale 1.5
                             |> scaleX 1.5
                             |> scaleY 1.5
                             |> move (-5,10)
                         , oval 5 25
                             |> filled black
                             |> scale 1.5
                             |> scaleX 1.5
                             |> scaleY 1.5
                             |> move (10,5)
                             |> rotate (degrees -15)

                         , oval 5 15
                             |> filled black
                             |> scale 1.5
                             |> scaleX 1.5
                             |> scaleY 1.5
                             |> rotate (degrees -25)
                             |> move (25,0)
                         , rect 21 10
                             |> filled black
                             |> scale 1.5
                             |> scaleX 1.5
                             |> scaleY 1.5
                             |> move (0,-28)
                          , rect 17 5
                             |> filled (rgb 255 127 80)
                             |> scale 1.5
                             |> scaleX 1.5
                             |> scaleY 1.5
                             |> move (0,-44.5)



                         ]

        myBackground = square 200 |> filled white
    in (("CourageousCherry",myWord,"6"),("Glove","given to Saginaw",myShapes))

  ,    let
        myWord = "toothpaste"
        myCode = 745
        myShapes model = [ myBackground
                          , rect 30 65
                         |> filled lightBlue
                         |> rotate (degrees 360)
                         |> move (0,-10)
                         , roundedRect 10 40 5
                         |> filled darkBlue
                         |> rotate (degrees 270)
                         |> move (0,-40)
                         , square 11
                         |> filled darkBlue
                         |> move (0,27)
                          , rect 10 57
                         |> filled white
                         |> move (0,-7)
                         , roundedRect 70 10 5
                         |> filled blue
                         |> rotate (degrees -90)
                         |> move (-40,-10)
                         |> makeTransparent 0.5
                         , rect 20 10
                         |> filled darkBlue
                         |> rotate (degrees -90)
                         |> move (-33,15)
                         |> makeTransparent 0.5
                          ]



        myBackground = square 200 |> filled pink
    in (("FortunateGiraffe",myWord,"6"),("toothpaste","given to Saginaw",myShapes))

  ,    let
        myWord = "sea"-- put your work here (in quotes) --
        myCode = 702-- put your code number here, which came with your word (not in quotes) --
        fish model = group [

                          oval 20 15
                           |> filled (rgb 137 255 0)
                           |> move (30,-20)
                         , triangle 30
                           |> filled (rgb 137 255 0)
                           |> scaleX 0.25
                           |> scaleY 0.25
                           |> rotate (degrees 180)
                           |> move (45,-20)
                         , circle 30
                           |> filled (rgb 0 0 0)
                           |> scale 0.25
                           |> scaleX 0.25
                           |> scaleY 0.25
                           |> move (25,-18)
                           ]
        myShapes model = [ myBackground
                         , circle 30
                           |> filled (rgb 255 237 64)
                         , rect 100 50
                           |> filled (rgb 0 46 198)
                           |> move (0,-25)
                         , fish model
                           |> move (-4*model.time,0)
                         ]

        myBackground = square 200 |> filled (rgb 0 179 255)


    in (("GigglingHenna",myWord,"6"),("Sisters!","given to Saginaw",myShapes))

  ,    let
        myWord = "bedroom" --put your work here (in quotes) --
        myCode = 520 --put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , rect 40 60
                             |> filled pink
                         , roundedRect 25 60 5
                             |> filled purple
                             |> move (-35,20)
                         , roundedRect 20 15 5
                             |> filled white
                             |> move(-35,40)
                         , rect 17 12
                             |> filled darkBrown
                             |> move (-10,40)
                         , rect 25 60
                             |> filled white
                             |> move (35,5)
                         , rect 2 30
                             |> filled black
                             |> rotate (degrees -30)
                             |> move (45,-45)
                         ]

        myBackground = square 200
                              |> filled brown
    in (("FierceGazelle",myWord,"6"),("bedroom","given to Saginaw",myShapes))

  ,    let
        myWord = "snail" -- put your work here (in quotes) --
        myCode = 710 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , rect 50 15
                                  |> filled lightBrown
                         , square 30
                                  |> filled darkBrown
                                  |> move (-10,19)
                         , square 20
                                  |> filled (rgb 183 125 54)
                                  |> move (-10,20)
                         ,rect 10 10
                                  |> filled lightBrown
                                  |> move (20,10)

                         ]

        myBackground = square 200 |> filled white
    in (("CleanCarob",myWord,"6"),("Snail","given to Saginaw",myShapes))

  ,    let
        myWord = "park"--  --
        myCode = 670 --  --

        myShapes model = [ myBackground
                         ,rect 200 80
                             |> filled lightBlue
                             |> move ( 0, 20 )
                         ,rect 200 35
                             |> filled lightGreen
                             |> move (0, -35)
                         , circle 6
                             |> filled yellow
                             |> move ( 40, 40)
                         , roundedRect 12 60 5
                             |> filled (rgb 139 64 0)
                             |> move (-30,-20)
                         , circle 20
                             |> filled darkGreen
                             |> move (-30,5 )
                         , circle 10
                             |> filled darkGreen
                             |> move (-14,-3)
                         , rect 35 15
                             |> filled brown
                             |> move (12, -23)
                         , rect 37 9
                             |> filled darkBrown
                             |> move (12, -33 )
                         , rect 15 5
                             |> filled darkBrown
                             |> rotate (degrees -90)
                             |> move (0, -40)
                         , rect 15 5
                             |> filled darkBrown
                             |> rotate (degrees -90)
                             |> move (23, -40)
                         ]



        myBackground = square 200 |> filled white
    in (("DefiantCoconut",myWord,"6"),("Park","given to Saginaw",myShapes))

  ,    let
        myWord = "wool" --
        myCode = 769 --
        myShapes model = [ myBackground
                         ,  circle 10
                         |> filled white
                         ,  circle 10
                         |> filled white
                         |> move (10,10)
                          ,  circle 10
                         |> filled white
                         |> move (-10,5)
                          ,  circle 10
                         |> filled white
                         |> move ( 0,10)
                         ,  circle 10
                         |> filled white
                         |> move ( 0,20)
                         ,rect 20 60
                         |> filled lightBrown
                         |> rotate (degrees 90)
                         ]

        myBackground = square 200 |> filled pink
    in (("EagerCypress",myWord,"6"),("wool","given to Saginaw",myShapes))

  ,    let
        myWord = "bricks" -- put your work here (in quotes) --
        myCode = 529 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , group [rect 30 15
                             |> filled (rgb 153 0 0)
                             |>addOutline (solid 1) white
                            , rect 30 15
                             |> filled (rgb 153 0 0)
                             |> move (-30,0)
                             |> addOutline (solid 1) white
                             , rect 30 15
                             |> filled (rgb 153 0 0)
                             |> move (30,0)
                             |> addOutline (solid 1) white


                            , rect 30 15
                                |> filled (rgb 153 0 0)
                                |>move (13,15)
                                |> addOutline (solid 1) white
                            , rect 30 15
                                |> filled (rgb 153 0 0)
                                |>move (-17,15)
                                |> addOutline (solid 1) white
                             , rect 30 15
                                 |> filled (rgb 153 0 0)
                                 |>move (0,30)
                                 |> addOutline (solid 1) white

                            ] |> move (0,-15) ]



        myBackground = square 200 |> filled white
    in (("CoolChamomile",myWord,"6"),("bricks","given to Saginaw",myShapes))

  ,    let
        myWord = "dock"
        myCode = 573

        myShapes model = [ myBackground
                         , rect 60 15
                           |> filled (rgb 205 100 25)
                           |> rotate (degrees 210)
                           |> move (30,20)

                         , rect 5 15
                           |> filled (rgb 250 100 25)
                           |> move (0,5)

                         , rect 5 15
                           |> filled (rgb 250 100 25)
                           |> move (10,-5)

                         , square 15
                           |> filled black
                           |> scaleX 2.75
                           |> rotate (degrees 30)
                           |> move (-30,-20)

                         , rect 6 30
                           |> filled lightBrown
                           |> rotate (degrees 30)
                           |> move (-40,-10)

                         , triangle 10
                           |> filled white
                           |> scaleX 2
                           |> scaleY 1
                           |> rotate (degrees 30)
                           |> move (-35,-0)
                         ]

        myBackground = square 200 |> filled blue
    in (("DustyCuckoo",myWord,"6"),("Dock","given to Saginaw",myShapes))

  ,    let
        myWord = "jar"
        myCode = 630
        myShapes model = [ myBackground
                         , roundedRect 20 25 5
          |> outlined (solid 0.5) charcoal
          |> scale 2.75
                         , roundedRect 10 25 5
          |> filled orange
          |> scale 2
          |> rotate (degrees 90)
          |> move (0,40)
                         , roundedRect 30 25 5
          |> filled lightRed
          |> scale 1.90
          |> move (0,-10)
                         ]

        myBackground = square 200 |> filled pink
    in (("DistinctCrocodile",myWord,"6"),("Jar","given to Saginaw",myShapes))

  ,    let
        myWord = "rose" -- put your work here (in quotes) --
        myCode = 696 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         ,   rect 5 55
                            |> filled darkGreen
                            |> move (0,-40)
                         , triangle 10
                            |> filled darkGreen
                            |> scale 0.5
                            |> rotate (degrees 120)
                            |> move (4,-20)
                         , triangle 10
                            |> filled darkGreen
                            |> scale 0.5
                            |> rotate (degrees 60)
                            |> move (-4,-40)
                         ,   circle 8.25
                            |> filled darkRed
                            |> scale 2
                         , oval 10 15
                            |> filled red
                            |> rotate (degrees 30)
                            |> move (-10,0)
                            |> scale 2
                          , oval 10 15
                            |> filled (rgb 231 46 50)
                            |> rotate (degrees -30)
                            |> move (10,0)
                            |> scale 2
                         ,  oval 10 15
                            |> filled darkRed
                            |> scale 1.5
                            |> rotate (degrees 0)
                        ,   oval 10 15
                            |> filled (rgb 240 18 50)
                            |> scale 2
                          --   |> rotate model.time
                       --  , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled white
    in (("CertainCapsicum",myWord,"6"),("rose","given to Saginaw",myShapes))

  ,    let
        myWord = "actor"--  --
        myCode = 500 --  --

        myShapes model = [ myBackground
                             , square 16
                            |> filled lightBrown
                            |> move (0, 20)


                            , circle 10
                            |> filled white
                            |> rotate (degrees 0)
                            |> move (20, 20)

                            , roundedRect 60 10 0
                           |> filled white
                           |> rotate (degrees 30)

                            , rect 60 10
                           |> filled black
                           |> rotate (degrees 90)
                           |> move (0, -20)

                            , roundedRect 30 10 0
                           |> filled black
                           |> rotate (degrees 30)

                            , circle 2
                           |> filled black
                           |> rotate (degrees 0)
                           |> move (15, 20)

                            , circle 2
                           |> filled black
                           |> rotate (degrees 0)
                           |> move (23, 20)

                           , circle 2
                           |> filled black
                           |> rotate (degrees 0)
                           |> move (-5, 20)

                              , circle 2
                           |> filled black
                           |> rotate (degrees 0)
                           |> move (5, 20)




                           ]
        myBackground = square 200 |> filled red



    in (("DazzlingClematis",myWord,"6"),("actor","given to Saginaw",myShapes))

  ,    let
        myWord = "juice" --
        myCode = 633 --

        myShapes model = [ myBackground
                         , rect 40 50
                             |> filled orange
                             |> move (0,-15)




                         , rect 10 15
                             |> filled gray
                             |> move (0,10)


                         ]

        myBackground = square 200 |> filled white
    in (("DescriptiveCorn",myWord,"6"),("juice","given to Saginaw",myShapes))

  ,    let
        myWord = "butter"
        myCode = 534
        myShapes model = [ myBackground
                         , square 25
                             |> filled yellow

                         ]

        myBackground = square 200 |> filled white
    in (("ClumsyCat",myWord,"6"),("butter","given to Saginaw",myShapes))

  ,    let
        myWord = "queen" -- put your work here (in quotes) --
        myCode = 682 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [
                          oval 60 74
                             |> filled lightBrown
                             |> move (0,-3)

                         ,  circle 4
                             |> filled blue
          |> scale 2.25
          |> move (15,11),
                          circle 4
          |> filled blue
          |> scale 2.25
          |> move (-15,11)
          , triangle 10
          |> filled yellow
          |> scale 1.6
          |> rotate (degrees 210)
          |> move (0,35)
          , triangle 10
          |> filled yellow
          |> scale 1.6
          |> rotate (degrees 210)
          |> move (20,35)
          , triangle 10
          |> filled yellow
          |> scale 1.6
          |> rotate (degrees 210)
          |> move (-20,35)
          , polygon [(0,0),(0,-10),(30,0)]
          |> filled lightOrange
          |> scaleX 2
          |> scaleY 2
          |> rotate (degrees 270)
          |> move (30,27)
          , polygon [(0,0),(0,10),(30,0)]
          |> filled lightOrange
          |> scaleX 2
          |> scaleY 2
          |> rotate (degrees 270)
          |> move (-30,27)
          ,curve (0,0) [Pull (10,0) (20,-10)]
          |> filled hotPink
          |> scale 1.25
          |> rotate (degrees 569)
          |> move (16,-18)
                        ]




    in (("DashingCitron",myWord,"6"),("Queen","given to Saginaw",myShapes))

  ,    let
        myWord = "seed" -- put your work here (in quotes) --
        myCode = 703 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         ,oval 20 10
                             |> filled lightBrown


                          ,rect 3 11
                             |> filled darkBrown


                          ,rect 3 9
                             |> filled darkBrown
                             |> move (5,0)


                          ,rect 3 9
                            |> filled darkBrown
                            |> move (-5,0)
                    ]





        myBackground = square 200  |> filled darkGreen
    in (("DeterminedCotton",myWord,"6"),("seed","given to Saginaw",myShapes))

  ,    let
        myWord = "spot" -- put your work here (in quotes) --
        myCode = 721 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                          ,circle 50
                          |> filled white
                          |> move (0,0)

                         ]

        myBackground = square 200 |> filled blue
    in (("EcstaticDate",myWord,"6"),("spot","given to Saginaw",myShapes))

  ,    let
        myWord = "wing" -- put your work here (in quotes) --
        myCode = 763 -- put your code number here, which came with your word (not in quotes) --

        feather = group [  oval 45 10
                          |> filled lightCharcoal
                             ]
        wing = group [   feather
                         |> rotate (degrees 0) |> move (-30,20)
                         ,feather
                         |> rotate (degrees 15) |> move (-25,10)
                         ,feather
                         |> rotate (degrees 25) |> move (-20,0)
                         ,feather
                         |> rotate (degrees 35) |> move (-15,-10)
                         ,feather
                         |> rotate (degrees 45) |> move (-10,-20)
                         ,feather
                         |> rotate (degrees 55) |> move (-3,-30)
                         ,oval 45 10
                         |> filled lightCharcoal
                         |> rotate (degrees 300)
                         |> move (5,5)
                         ]
        myShapes model = [myBackground
                         ,wing |> rotate ( 0.3 * (sin model.time) - 0.6)
                         |> move (10,-5)



                         ]


        myBackground = square 200 |> filled lightBlue
    in (("BusyBustard",myWord,"6"),("Goomba Wing","given to Saginaw",myShapes))

  ,    let
        myWord = "moon" -- put your work here (in quotes) --
        myCode = 656 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , circle 40
                                  |> filled gray
                         , circle 30
                                  |> filled black
                                  |> move (-20,10)


                         ]

        myBackground = square 200 |> filled black
    in (("CleanCarob",myWord,"6"),("moon","given to Saginaw",myShapes))

  ,    let
        myWord = "sugar"
        myCode = 731

        myShapes model = [ myBackground
                         ,oval 50 20
                             |> filled darkGray
                             |> move (20, -0)
                         ,rect 75 10
                             |> filled darkGray
                         ,circle 2
                             |> filled white
                             |> move (15, -0)
                         ,circle 2
                             |> filled white
                             |> move (17, 2)
                         ,circle 2
                             |> filled white
                             |> move (19, 4)
                         ,circle 2
                             |> filled white
                             |> move (21, 6)
                         ,circle 2
                             |> filled white
                             |> move (23, 9)
                         ,circle 2
                             |> filled white
                             |> move (25, 11)
                         ,circle 2
                             |> filled white
                             |> move (27, 11)
                         ,circle 2
                             |> filled white
                             |> move (29, 9)
                         ,circle 2
                             |> filled white
                             |> move (31, 7)
                         ,circle 2
                             |> filled white
                             |> move (33, 5)
                         ,circle 2
                             |> filled white
                             |> move (35, 3)
                         ,circle 2
                             |> filled white
                             |> move (37, 1)
                         ,circle 2
                             |> filled white
                             |> move (26, 9)
                         ,circle 2
                             |> filled white
                             |> move (26, 7)
                         ,circle 2
                             |> filled white
                             |> move (26, 5)
                         ,circle 2
                             |> filled white
                             |> move (26, 3)
                         ,circle 2
                             |> filled white
                             |> move (26, 1)
                         ,circle 2
                             |> filled white
                             |> move (26, -1)
                         ,circle 2
                             |> filled white
                             |> move (22, 5)
                         ,circle 2
                             |> filled white
                             |> move (22, 3)
                         ,circle 2
                             |> filled white
                             |> move (22, 1)
                         ,circle 2
                             |> filled white
                             |> move (22, -0)
                         ,circle 2
                             |> filled white
                             |> move (19, 3)
                         ,circle 2
                             |> filled white
                             |> move (19, 1)
                         ,circle 2
                             |> filled white
                             |> move (19, -1)
                         ,circle 2
                             |> filled white
                             |> move (30, 5)
                         ,circle 2
                             |> filled white
                             |> move (30, 3)
                         ,circle 2
                             |> filled white
                             |> move (30, 1)
                         ,circle 2
                             |> filled white
                             |> move (30, -0)
                         ,circle 2
                             |> filled white
                             |> move (33, 3)
                         ,circle 2
                             |> filled white
                             |> move (33, 1)
                         ,circle 2
                             |> filled white
                             |> move (33, -1)
                         ,circle 2
                             |> filled white
                             |> move (33, 1)
                         ,circle 2
                             |> filled white
                             |> move (27, 9)
                         ,circle 2
                             |> filled white
                             |> move (25, 9)
                         ]
        myBackground = square 200 |> filled red
    in (("ClumsyCat",myWord,"6"),("Sugar","given to Saginaw",myShapes))

  ,    let
        myWord = "ball"-- put your work here (in quotes) --
        myCode = 510 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , circle 10
                             |> filled red
                             |> move (0,-40+40*(sin model.time)^2)
                            ]
        myBackground = square 200 |> filled purple

    in (("CheerfulCardamom",myWord,"6"),("bouncy ball","given to Saginaw",myShapes))

  ,    let
        myWord = "arm"--
        myCode =  506 --

        myShapes model = [ myBackground
                         ,rect 80 100
                         |> filled blue
                         |> move (0,0)
                         ,rect 20 95
                         |> filled lightBrown
                         |> move (0,0)
                         ,square 30
                         |> filled lightBrown
                         |> move (0,-35)
                         ,square 30
                         |> filled blue
                         |> move (0,35)
                         ,triangle 10
                         |> filled black
                         |> move (-25,0)
                         ]
        myBackground = square 200 |> filled white
    in (("EcstaticDate",myWord,"6"),("Arm","given to Saginaw",myShapes))

  ,    let
        myWord = "plant"
        myCode = 678

        stemColour = rgb 127 203 0
        myShapes model = [myBackground
                              ,rect 5 55
                                  |> filled stemColour
                                  |> move (0,0)
                              ,curve (0,0) [Pull (10,10) (20,-10)]
                                  |> filled stemColour
                                  |> rotate (degrees -330)
                              ,curve (0,0) [Pull (10,10) (20,-10)]
                                  |> filled (rgb 127 203 0)
                                  |> rotate (degrees -150)
                                  |> move (0,-10)
                              ,rect 100 25
                                  |> filled (rgb 131 51 0)
                                  |> move (0,-40)
                         ]

        myBackground = square 200 |> filled (rgb 131 176 235)
    in (("GenerousHamster",myWord,"6"),("plant","given to Saginaw",myShapes))

  ,    let
        myWord =  "holiday" -- put your work here (in quotes)
        myCode =  621 -- put your code number here, which came with your word (not in quotes)

        myShapes model = [triangle 10
                          |> filled darkGreen
                          |> rotate (degrees -150)
                          |> move (0,25)
                          ,triangle 10
                          |> filled darkGreen
                          |> scale 1.50
                          |> rotate (degrees -150)
                          |> move (0,13)
                          ,triangle 10
                          |> filled darkGreen
                          |> scale 2.10
                          |> rotate (degrees -150)
                          |> move (0,0)
                          , rect 10 15
                          |> filled darkBrown
                          |> scale 1
                          |> rotate (degrees -180)
                          |> move (0,-18)



                          ]


        myBackground = square 200
                   |> filled black
    in (("GleamingHoneydew",myWord,"6"),("Holiday","given to Saginaw",myShapes))

  ,    let
        myWord = "pie"
        myCode =  676
        myShapes model = [ myBackground
                         , circle 40
                             |> filled darkBrown

                         , circle 35
                             |> filled red
                         , wedge 35 0.75
                             |> filled lightBrown



                         ]

        myBackground = square 200
                     |> filled white



    in (("GarrulousGrasshopper",myWord,"6"),("Pie","given to Saginaw",myShapes))

  ,    let
        myWord ="beam" -- put your work here (in quotes) --
        myCode =517 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                       , rect 10 95
                                         |> filled grey
                                         |> rotate (degrees -90)
                       , rect 10 55
                                         |> filled grey
                                         |> rotate (degrees 25)
                                         |> move (-10,-22)
                       , rect 10 55
                                         |> filled grey
                                         |> rotate (degrees 340)
                                         |> move (-35,-22)
                        , rect 10 55
                                         |> filled grey
                                         |> rotate (degrees 25)
                                         |> move (40,-22)
                       , rect 10 55
                                         |> filled grey
                                         |> rotate (degrees 340)
                                         |> move (25,-22)
                         ]

        myBackground = square 200        |> filled blue
    in (("DoubtfulCrocus",myWord,"6"),("beam","given to Saginaw",myShapes))

  ,    let
        myWord = "gate" --put your work here (in quotes) --
        myCode = 601 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         ,group [rect 25 50
                         |> filled lightCharcoal
                         |> move (-40,-40)
                         ,circle 15
                         |> filled lightCharcoal
                         |> move (-40,-10)
                         ,rect 25 50
                         |> filled lightCharcoal
                         |> move ( 40, -40 )
                         , circle 15
                         |> filled lightCharcoal
                         |> move ( 40,-10)
                         ,curve (0,0) [Pull (10,0) (20,-10)]
                         |> outlined (solid 2) lightCharcoal
                         |> scale 3
                         |> move (-5,-10)
                         ,curve (0,0) [Pull (10,0) (20,-10)]
                         |> outlined (solid 2) lightCharcoal
                         |> scale 3
                         |> rotate ( degrees -300 )
                         |> move (-55,-46 )
                         ,rect 5 60
                         |> filled lightCharcoal
                         |> move (0,-40)
                         ,rect 5 55
                         |> filled lightCharcoal
                         |> move (20,-40)
                          ,rect 5 54
                         |> filled lightCharcoal
                         |> move (-20,-40)
                         -- graphPaper 10 |> makeTransparent 0.4--
                         ] |> scale 0.9 |> move (0,8) ]

        myBackground = square 200 |> filled lightBlue

    in (("FancyFrog",myWord,"6"),("Gate","given to Saginaw",myShapes))

  ,    let
        myWord = "drum" -- put your work here (in quotes) --
        myCode = 579 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , oval 90 35
                             |> filled white
                         , rectangle 50 40
                             |> filled brown
                             |> move (0,-30)
                             ,roundedRect 10 55 5
          |> filled (rgb 230 125 50)
          |> rotate (degrees 60)
          |> move (-50,40)
          ,roundedRect 10 55 5
          |> filled (rgb 230 125 50)
          |> rotate (degrees -60)
          |> move (50,40)
         ]

        myBackground = square 200 |> filled (rgb 255 0 68)
    in (("CaringCantaloupe",myWord,"6"),("drum","given to Saginaw",myShapes))

  ,    let
        myWord = "test"
        myCode = 739
        myShapes model = [ myBackground,

                                  rect 40 70
                             |> filled white
                         --- , graphPaper 10 |> makeTransparent 0.4
                         , text "A+" |> filled red
                         |> move (-15, 20)
                         , text "---------" |> filled black
                         |> move (-17, 10)
                         , text "---------" |> filled black
                         |> move (-18, 0)
                         , text "---------" |> filled black
                         |> move (-18, -10)
                         , text "---------" |> filled black
                         |> move (-18, -20)
                         , text "---------" |> filled black
                         |> move (-18, -30)
                         ]

        myBackground = square 200 |> filled blue
    in (("GlamorousHibiscus",myWord,"6"),("Perfect Test Score","given to Saginaw",myShapes))

  ,    let
        myWord = "number" --put your work here (in quotes) --
        myCode =656--put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , rect 10 55
                             |> filled darkBlue
                         , rect 50 5
                             |> filled darkBlue
                             |> move (0,-30)
                         , rect 20 10
                             |> filled darkBlue
                             |> move (-5,30)


                         ]

        myBackground = square 200 |> filled white

    in (("CleanCarob",myWord,"6"),("Numbers","given to Saginaw",myShapes))

  ,    let
        myWord = "baseball"
        myCode = 513
        myShapes model = [ myBackground
                      ,   circle 20
                             |> filled white

                      ,   oval 30 35
                             |> outlined (dashed 1) darkRed
                             |> move (-20,0)
                      ,   oval 30 35
                             |> outlined (dashed 1) darkRed
                             |> move (20,0)
                         ]

        myBackground = square 200 |> filled darkRed
    in (("DisciplinedCricket",myWord,"6"),("Baseball","given to Saginaw",myShapes))

  ,    let
        myWord =  "cap"
        myCode =  538

        myShapes model = [ myBackground

                         ,  oval 60 30
                             |> filled lightGreen
                             |> move (10,-5)
                         ,   oval 60 60
                             |> filled hotPink
                             |> move (-20,10)
                        -- , graphPaper 10 |> makeTransparent 0.4
                         ]

        myBackground = square 200 |> filled white
    in (("DynamicCumin",myWord,"6"),("cap","given to Saginaw",myShapes))

  ,    let
        myWord =  "wheel"
        myCode = 762

        myShapes model = [ myBackground
                         , circle 45
                             |> filled black
                             |> rotate model.time
                         , circle 10
                             |> filled lightBlue
                             |> move (0,0)
                         ]

        myBackground = square 200 |> filled lightBlue
    in (("GentleHare",myWord,"6"),("Doesn't look like it, but it's actually rotating","given to Saginaw",myShapes))

  ,    let
        myWord = "feet" -- put your work here (in quotes)
        myCode = 589 -- put your code number here, which came with your word (not in quotes)

        myShapes model = [ myBackground
                         , group [ circle 8
                                |> filled lightBrown
                                |> move (4,7)
                         , polygon [(0,0),(3,-10),(20,0)]
                                |> filled lightBrown
                                |> rotate (degrees -540)
                         , oval 12 8
                                |> filled lightBrown
                                |> rotate (degrees -540)
                                |> move (-16,3)
                         , rect 30 12
                                |> filled lightBrown
                                |> rotate (degrees -630)
                                |> move (4,20)

                         , circle 8
                                |> filled brown
                                |> move (40,7)
                         , polygon [(0,0),(3,-10),(20,0)]
                                |> filled brown
                                |> rotate (degrees -540)
                                |> move (37,0)
                         , oval 12 8
                                |> filled brown
                                |> rotate (degrees -540)
                                |> move (20,3)
                         , rect 30 12
                                |> filled brown
                                |> rotate (degrees -630)
                                |> move (40,20)
                         ] |> scale 1.2 |> move (-10,-20) ]

        myBackground = square 200 |> filled lightBlue
    in (("GiantHemlock",myWord,"6"),("Feet","given to Saginaw",myShapes))

  ,    let
        myWord = "boot"
        myCode = 526

        myShapes model = [ myBackground
                         , group [rect 20 25
          |> filled darkBrown

                         , rect 10 25
          |> filled darkBrown
          |> rotate (degrees 90)
          |> move (-5,-10)
                         ,rect 10 25
          |> filled darkBrown
          |> rotate (degrees 90)
          |> move (0,10)
                         ,roundedRect 10 25 5
          |> filled darkBrown
          |> rotate (degrees 90)
          |> move (-8,-10)
                         ] |> scale 2]

        myBackground = square 200 |> filled pink
    in (("DistinctCrocodile",myWord,"6"),("Boot","given to Saginaw",myShapes))

  ,    let
        myWord =  "rain" -- put your work here (in quotes) --
        myCode = 687 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground

                         , square 20
                          |> filled charcoal

                         , oval 20 15
                          |> filled charcoal
                          |> move (-10,10)

                         , oval 20 15
                          |> filled charcoal
                          |> move (-10,0)

                         , oval 20 15
                          |> filled charcoal
                          |> move (-10,-10)

                         , oval 20 15
                          |> filled charcoal
                          |> move (0,-10)

                         , oval 20 15
                          |> filled charcoal
                          |> move (10,0)

                          , oval 20 15
                          |> filled charcoal
                          |> move (8,10)

                          , oval 20 15
                          |> filled charcoal
                          |> move (8,10)

                          , oval 20 15
                          |> filled charcoal
                          |> move (10,-10)

                          , oval 10 5
                          |> filled blue
                          |> rotate (degrees -90)
                          |> move (-10,-30)
                          |> rotate model.time

                          , oval 10 5
                          |> filled blue
                          |> rotate (degrees -90)
                          |> move (0,-20)
                          |> rotate model.time

                          , oval 10 5
                          |> filled blue
                          |> rotate (degrees -90)
                          |> move (0,-40)
                          |> rotate model.time

                          , oval 10 5
                          |> filled blue
                          |> rotate (degrees -90)
                          |> move (10,-30)
                          |> rotate model.time

                          , oval 10 5
                          |> filled blue
                          |> rotate (degrees -90)
                          |> move (-10,-50)
                          |> rotate model.time

                          , oval 10 5
                          |> filled blue
                          |> rotate (degrees -90)
                          |> move (10,-30)
                          |> rotate model.time

                          , oval 10 5
                          |> filled blue
                          |> rotate (degrees -90)
                          |> move (10,-50)
                          |> rotate model.time


                         ]

        myBackground = square 200
                        |> filled lightBlue

    in (("CleverCarrot",myWord,"6"),("Swirling Rain","given to Saginaw",myShapes))

  ,    let
        myWord = "lake" --
        myCode =  638 --

        myShapes model = [ myBackground
                         , group [circle 40
                         |> filled lightBlue
                         ,roundedRect 10 5 5
                         |> filled lightCharcoal
                         |> rotate (degrees -100)
                         |> move (10,40)
                         ,triangle 10
                         |> filled lightGreen
                         |> rotate (degrees 95)
                         |> move (0,40)
                          ,triangle 10
                         |> filled lightGreen
                         |> rotate (degrees 95)
                         |> move (0,50)
                         ] |> scale 0.9 |> move (0,-10) ]



        myBackground = square 200 |> filled white

    in (("EagerCypress",myWord,"6"),("lake","given to Saginaw",myShapes))

  ,    let
        myWord =  "bun"
        myCode =  532

        myShapes model = [ myBackground
                         , square 10
                             |> filled red
                             |> rotate model.time

                         ,oval 17 22
                             |> filled darkBrown
                             |> scale 4
                         ,circle 10
                             |> filled darkBrown
                             |> scale 2
                             |> move (30,10)
                        ,oval 20 35
                             |> filled (rgb 255 184 22)
                             |> scale 2
                             |> move (-15,0)
                        ,circle 20
                             |> filled black
                             |> scale 0.5
                             |> scaleX 0.5
                             |> scaleY 0.5
                             |> rotate (degrees 60)
                             |> move (-20,13)
                       ,curve (0,0) [Pull (10,0) (20,-10)]
          |> filled hotPink
          |> rotate (degrees -480)
          |> move (-13,-10)



                      ]


        myBackground = square 200 |> filled pink


    in (("GladHeron",myWord,"6"),("Bun By:Jessica","given to Saginaw",myShapes))

  ,    let
        myWord =  "crown" --
        myCode =  563 --




        myShapes model = [ myBackground
                         , roundedRect 25 40 10
                             |> filled yellow
                             |> rotate (degrees 90)


                         , triangle 12
                             |> filled yellow
                             |> rotate (degrees 90) |> move (10,10)

                         , triangle 12
                             |> filled yellow
                             |> rotate (degrees 90) |> move (0,10)

                         , triangle 12
                             |> filled yellow
                             |> rotate (degrees 90) |> move (-10,10)


                             ]


        myBackground = square 200 |> filled blue






    in (("DescriptiveCorn",myWord,"6"),("CROWN","given to Saginaw",myShapes))

  ,    let
        myWord ="soda" -- put your work here --
        myCode =714 -- put your code number here, which came with your word (714)--

        myShapes model = [ myBackground
                         , rect 10 25
                             |> filled darkBlue
                             |> scale 2
                         ,  rect 10 20
                             |> filled white
                             |> rotate (degrees 90)

                         ,  oval 10 25
                             |> filled lightBlue
                             |> scale 0.9
                             |> rotate (degrees -90)
                             |> move (0,22)
                         ,   rect 5 45
                             |> filled black
                             |> rotate (degrees 30)
                             |> move (-15,43)

                   ]


        myBackground = square 200 |> filled lightOrange
    in (("DelightfulCoriander",myWord,"6"),("Soda","given to Saginaw",myShapes))

  ,    let
        myWord =  "grade"-- put your work here (in quotes) --
        myCode = 607 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         --, graphPaper 10 |> makeTransparent 0.4
                         ,rect 20 30
                             |> outlined (solid 8)(rgb 230 125 50)
                             |> move (-5.4,-25)
                         ,rect 20 30
                             |> outlined (solid 8)(rgb 230 125 50)
                             |> move (-5.4,0)
                         ,rect 50 10
                             |> filled (rgb 230 125 50)
                             |> move (40,-5)
                         ]

        myBackground = square 200 |> filled white
    in (("DapperChicory",myWord,"6"),("Fortnite","given to Saginaw",myShapes))

  ,    let
        myWord = "wood"-- put your work here (in quotes) --
        myCode = 768-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         ,oval 20 40
                             |> filled darkBrown
                             |> scale 2
                             |> scaleX 2
                         ,oval 20 20
                             |> filled darkYellow
                             |> scale 1.75
                             |> scaleX 1.75
                             |> scaleY 1.75
                          ,oval 20 20
                             |> outlined (solid 0.75
                             ) darkBrown
                             |> scale 1.75
                          ,oval 20 20
                             |> outlined (solid 1) darkBrown
                             |> scale 1.25
                          ,oval 20 20
                             |> outlined (solid 0.5) darkBrown
                             |> scale 2.25
                          ,oval 20 20
                             |> outlined (solid 1.25) darkBrown
                             |> scale 0.75
                          ,oval 20 20
                             |> outlined (solid 0.5) darkBrown
                             |> scale 2.75

                        --, graphPaper 10 |> makeTransparent 1
                         ]

        myBackground = square 200 |> filled green
    in (("CarefreeCamel",myWord,"6"),("Wood","given to Saginaw",myShapes))

  ,    let
        myWord = "heat"
        myCode =  617

        myShapes model = [ myBackground
                         , wedge 10 0.875
          |> filled lightRed
          |> scale 2
          |> scaleX 2
          |> scaleY 2
          |> rotate (degrees 265)

                          , wedge 10 0.875
          |> filled orange
          |> scale 1.5
          |> scaleX 2
          |> scaleY 2
          |> rotate (degrees 265)
          |> move (0,-10)
                         , wedge 10 0.875
          |> filled lightYellow
          |> scale 1
          |> scaleX 2
          |> scaleY 2
          |> rotate (degrees 265)
          |> move (0,-20)

                         , oval 50 10
          |> filled darkBrown
          |> scale 1.30
          |> scaleX 1.30
          |> scaleY 1.30
          |> rotate (degrees 170)
          |> move (-3,-35)
          |> makeTransparent 0.875

                        , oval 50 10
          |> filled darkBrown
          |> scale 1.30
          |> scaleX 1.30
          |> scaleY 1.30
          |> rotate (degrees 10)
          |> move (-3,-35)
          |> makeTransparent 0.875
          ]

        myBackground = square 200
                       |> filled black
    in (("GargantuanGrass",myWord,"6"),("Fire","given to Saginaw",myShapes))

  ,    let
        myWord = "crow"
        myCode = 561

        myShapes model = [crow |> scale 0.75
                      |> move (100,0)
                      |> move (-(let i = round (0.5*model.time) in model.time - 2 * toFloat i)*240,0)
           ]

        crow = group [ circle 10
          |> filled black
          |> scale 2.7

          ,triangle 10
          |> filled (rgb 60 60 60)
          |> scaleX 2.5
          |> rotate (degrees 190)
          |> move (-35 , 0)

          ,wedge 5 0.75
          |> filled (rgb 60 60 60)
          |> move (-5 , 10)
          |> rotate (degrees 20)

            ,triangle 10
          |> filled black
          |> scaleX 2.3
          |> rotate (degrees 38)
          |> move (25 , 25)

          ,triangle 10
          |> filled black
          |> scaleX 2.3
          |> rotate (degrees 30)
          |> move (25 , 20)

          ,triangle 10
          |> filled black
          |> scaleX 2.4
          |> rotate (degrees 20)
          |> move (25, 15)

          ,triangle 10
          |> filled black
          |> scaleX 2.3
          |> rotate (degrees 10)
          |> move (25 , 10)

            ,triangle 10
          |> filled black
          |> scaleX 2.3
          |> rotate (degrees 0)
          |> move (25 , 5)

              ,triangle 10
          |> filled black
          |> scaleX 2.3
          |> rotate (degrees -10)
          |> move (25 , 0)

          ,triangle 10
          |> filled black
          |> scaleX 2.3
          |> rotate (degrees -20)
          |> move (25 , -5)

           ,triangle 10
          |> filled black
          |> scaleX 2.3
          |> rotate (degrees 30)
          |> move (25 , 20)

          ,triangle 10
          |> filled black
          |> scaleX 2.3
          |> rotate (degrees 20)
          |> move (25, 15)

          ,triangle 10
          |> filled black
          |> scaleX 2.3
          |> rotate (degrees 10)
          |> move (25 , 10)

          ,triangle 10
          |> filled black
          |> scaleX 2.3
          |> rotate (degrees 0)
          |> move (25 , 5)

          ,triangle 10
          |> filled black
          |> scaleX 2.3
          |> rotate (degrees -10)
          |> move (25 , 0)

          ,triangle 10
          |> filled black
          |> scaleX 2.3
          |> rotate (degrees -20)
          |> move (25 , -5)

            ,triangle 10
          |> filled black
          |> scaleX 2.3
          |> rotate (degrees -30)
          |> move (25 , -10)

            ,triangle 10
          |> filled black
          |> scaleX 2.3
          |> rotate (degrees -40)
          |> move (25 , -15)

            ,triangle 10
          |> filled black
          |> scaleX 2.3
          |> rotate (degrees -50)
          |> move (25 , -20)

            ,triangle 10
          |> filled black
          |> scaleX 2.0
          |> rotate (degrees -60)
          |> move (25 , -25)
          ]

    in (("TimorousWatermelon",myWord,"6"),("Crow","given to StLuke",myShapes))

  ,    let
        myWord = "cup"
        myCode = 565 -- put your code number here, which came with your word (not in quotes) --

        myShapes model =[myBackground,
                      cup
                      |> rotate model.time
                      |> scale (sin(model.time))]

        cup= group [ roundedRect 10 45 20
                     |> filled yellow
                     |> scale 1.25
                     |> scaleX 1.25
                     |> scaleY 1.25
                     |> move (0,-20)
                     ,
                     triangle 10
                     |> outlined (solid 1.5) yellow
                     |> scale 1.75
                     |> scaleX 1.75
                     |> scaleY 1.75
                     |> rotate (degrees -90)
                     |> move (0,17),

                  triangle 10
                     |> filled darkYellow
                     |> scale 1.7
                     |> scaleX 1.7
                     |> scaleY 1.7
                     |> rotate (degrees -90)
                     |> move (0,17),

              roundedRect 10 45 20
                     |> filled darkYellow
                     |> scale 1.0
                     |> scaleX 1.0
                     |> scaleY 1.0
                     |> move (0,-29),

               curve (4,0) [Pull (-26,23) (-57,0) ]
                     |> filled yellow
                     |> move(26,-60)
                     ,

            curve (4,0) [Pull (-20,18) (-38,0) ]
                     |> filled darkYellow
                     |> move(18,-58)]

        myBackground = square 200 |> filled blue
    in (("ZealousBanana",myWord,"6"),("cool cup","given to StLuke",myShapes))

  ,    let
        myWord ="brush" -- put your work here (in quotes) --
        myCode = 531 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                      ,rect 10 30
                       |> filled black
                       |> scale 2
                       |> scaleY 2
                       |> move (-10, -20)
                      ,rect 15 18
                       |> filled darkBrown
                       |> scale 2
                       |> scaleX 2
                       |> scaleY 2
                       |> move (-10, 15)
                      ,rect 6 15
                       |> filled darkGray
                       |> scale 2
                       |> scaleX 2
                       |> scaleY 2
                       |> rotate (degrees -270)
                       |> move (-10,-10)
                                  ]


        myBackground = square 200 |> filled pink
    in (("ThunderingWalrus",myWord,"6"),("brush","given to StLuke",myShapes))

  ,    let
        myWord =  "cake"
        myCode =  535

        myShapes model =[square 10
                  |> filled lightPurple
                  |> scaleX 5
                  |> scaleY 5
                  |> rotate (degrees 630)
                  |> move (0,0)|> rotate model.time,
                  square 10
                  |> filled pink
                  |> scaleX 4
                  |> scaleY 4
                  |> rotate (degrees 630)
                  |> move (0,0) |>rotate model.time,
                  square 10
                  |> filled lightBlue
                  |> scaleX 3
                  |> scaleY 3
                  |> rotate (degrees 630)
                  |> move (0,0)
                  |> rotate model.time]
    in (("ArrogantBeet",myWord,"6"),("cake","given to StLuke",myShapes))

  ,    let
        myWord = "corn"
        myCode = 555

        myShapes model = [ myBackground
           ,roundedRect 20 35 5
           |> filled yellow
           |> scale 2,


          oval 10 35
          |> filled green
          |> move (20,-5)
          |> scale 2
          |> rotate (degrees -20),


          oval 10 35
          |> filled green
          |> scale 2
          |> rotate (degrees 20) |> move (-20,-5)
                         ]



        mySquare = square 10
                     |> filled pink
                     |> makeTransparent 0.5  -- value between 0 and 1

        myBackground = square 200 |> filled blue

    in (("BrainyBoar",myWord,"6"),("corn","given to StLuke",myShapes))

  ,    let
        myWord = "cent"
        myCode = 543


        myShapes model = [ circle 10
                   |> filled darkYellow
                   |> scale 2.25
                   |> scaleX 2.25
                   |> scaleY 2.25,
                   circle 15
          |> filled (rgb 230 125 50)
          |> scale 2,
          circle 10
          |> filled black
          |> scaleX 0.75
          |> scaleY 0.75
          |> move (-10,10),
          circle 10
          |> filled black
          |> scaleX 0.75
          |> scaleY 0.75
          |> move (10,10)
                   ]

    in (("AmusedBat",myWord,"6"),("cent","given to StLuke",myShapes))

  ,    let
        myWord = "Balloon"
        myCode = 511

        myShapes model = [   balloon
                              |> move(15*sin(5*model.time),(15*sin(5*model.time)))]


        balloon = group [
          myRect,
                 myCircle,
                 myTri
                   |> move (0, 12)]



        myCircle = circle 40
                    |> filled green

        myTri = triangle 5
                    |> filled blue
                    |> rotate (degrees -30)
                    |> move ( 0,-55 )
        myRect = rectangle 1 20
                 |> filled black
                 |> move ( 0,-50 )

    in (("SwiftTomato",myWord,"6"),("Balloon","given to StLuke",myShapes))

  ,    let
        myWord = "baby"
        myCode = 547
        myShapes model = [
          oval 30 50
          |> filled blue
          |> move (-10,0),
          circle 13
           |>filled (rgb 255 204 153)
           |>move (-10,30),
           curve (0,0) [Pull (7,0) (20,-10)]
          |> filled black
          |> rotate (degrees 70)
          |>move (-20,35)
          |>scaleX 0.2,
           curve (0,0) [Pull (7,0) (20,-10)]
          |> filled black
          |> rotate (degrees 70)
          |>move (-9,35)
           |>scaleX 0.2

           ]
    in (("AwesomeBeetle",myWord,"6"),("baby","given to StLuke",myShapes))

  ,    let
        myWord = "apple"
        myCode =  505

        myShapes model = [ myBackground
                         , apple |> rotate model.time

           ]

        mySquare = square 10
                     |> filled brown

        apple = group[circle 30
          |> filled red
          |> rotate (degrees 18)
          |> move (10,10)

           ,

           rect 13 3
          |> filled darkBrown
          |> scale 2
          |> rotate (degrees 60)
          |> move (40,30)   ,

          circle 8
          |> filled pink
          |> scaleX 2
          |> scaleY 2
          |> move (-9,10)]



        myBackground = square 200 |> filled pink
    in (("AgreeableBasil",myWord,"6"),("Mitchell's LIT apple","given to StLuke",myShapes))

  ,    let
        myWord = "boy"
        myCode = 527

        myShapes model = [ oval 20 20
          |> filled (rgb 255 204 153)
          |> scale 2,
           roundedRect 5 2 5
          |> filled black
          |> scaleY 1.75
          |> move (-10,1),
             roundedRect 5 2 5
          |> filled black
          |> scaleY 1.75
          |> move (10,1),
          circle 20
          |> filled darkBrown
          |> scaleX 1.25
          |> scaleY 1.25
          |> rotate (degrees 30)
          |> move (-2,27),
          rect 20 20
          |> filled red
          |> scaleY 0.4
          |> rotate (degrees 180)
          |> move (1,-8)


              ]


    in (("AncientBear",myWord,"6"),("Boy","given to StLuke",myShapes))

  ,    let
        myWord = "clam"
        myCode = 549

        myShapes model = [ circle 3
          |> outlined (solid 1) black
          |> scale 3
          |> rotate (degrees -210)
          |> move (0,-10),
           curve (0,0) [Pull (10,0) (20,-10)]
          |> filled (rgb 230 125 50)
          |> scale 3
          |> rotate (degrees -690)
          |> move (-30,sin(10*model.time)),
         curve (0,0) [Pull (10,0) (20,-10)]
          |> filled (rgb 230 125 50)
          |> scale 3
          |> rotate (degrees -840)
          |> move (40,sin(10*model.time))

                         ]
    in (("TallTuraco",myWord,"6"),("Clam","given to StLuke",myShapes))

  ,    let
        myWord = "alarm"
        myCode = 503

        myShapes model = [square 40
                     |> filled blue
                     |> makeTransparent 0.9
                     |> rotate model.time
                   ,circle 12
                     |> filled red
                     |> makeTransparent 0.9
                   ,circle 4
                     |> filled black
                     |> makeTransparent 0.9
                   ,curve (0,0) [Pull (5,0) (25,-10)]
                     |> filled (rgb 230 125 50)
                     |> rotate (degrees 40)

                     ]


    in (("TalentedTulip",myWord,"6"),("Alarm","given to StLuke",myShapes))

  ,    let
        myWord = "mask" -- put your work here (in quotes) --
        myCode = 648 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , oval 60 75
                             |> filled white

                         , oval 10 5
                             |> filled black
                             |> move (10, 10)
                         , oval 10 5
                             |> filled black
                             |> move (-10, 10)
                         , rect 10 2
                             |> filled black
                             |> rotate (degrees -125)
                             |> move (-3, -15)
                         , rect 10 2
                             |> filled black
                             |> rotate (degrees 125)
                             |> move (3, -15)
                         , rect 10 2
                             |> filled black
                             |> move (-10, -20)
                         , rect 10 2
                             |> filled black
                             |> move (10, -20)
                         , rect 10 2
                             |> filled black
                             |> rotate (degrees -125)
                             |> move (17, -15)
                         , rect 10 2
                             |> filled black
                             |> rotate (degrees 125)
                             |> move (-17, -15)
                         , rect 10 2
                             |> filled black
                             |> move (0, -22)
                         , rect 10 2
                             |> filled black
                             |> rotate (degrees 90)
                             |> move (0, -30)
                         , rect 7 2
                             |> filled black
                             |> rotate (degrees -125)
                             |> move (5, 17)
                         , rect 7 2
                             |> filled black
                             |> rotate (degrees 125)
                             |> move (-5, 17)
                         , rect 7 2
                             |> filled black
                             |> rotate (degrees 0)
                             |> move (10, 20)
                         , rect 7 2
                             |> filled black
                             |> rotate (degrees 0)
                             |> move (-10, 20)
                         , rect 7 2
                             |> filled black
                             |> rotate (degrees -125)
                             |> move (-15, 17)
                         , rect 7 2
                             |> filled black
                             |> rotate (degrees 125)
                             |> move (15, 17)
                         ]

        myBackground = square 200 |> filled pink
    in (("FunnyGrape",myWord,"6"),("mask","given to Saginaw",myShapes))

  ,    let
        myWord = "street" -- put your work here (in quotes) --
        myCode = 729 -- put your code number here, which came with your word (not in quotes) --


        myShapes model = [ myBackground
                         , rect 60 100
                             |> filled lightCharcoal
                         , rect 10 20
                             |> filled darkYellow
                         , rect 20 100
                             |> filled lightBrown
                             |> move (40,0)
                          , rect 20 100
                             |> filled lightBrown
                             |> move (-40,0)
                         , rect 10 20
                             |> filled darkYellow
                             |> move (0,30)
                         , rect 10 20
                             |> filled darkYellow
                             |> move(0,-30)
                         , square 20
                             |> outlined (solid 1) black
                             |> move (40,0)
                         , square 20
                             |> outlined (solid 1) black
                             |> move (40,20)
                         , square 20
                             |> outlined (solid 1) black
                             |> move (40,40)
                         , square 20
                             |> outlined (solid 1) black
                             |> move (40,-20)
                         , square 20
                             |> outlined (solid 1) black
                             |> move (40,-40)
                              , square 20
                             |> outlined (solid 1) black
                             |> move (-40,0)
                         , square 20
                             |> outlined (solid 1) black
                             |> move (-40,20)
                         , square 20
                             |> outlined (solid 1) black
                             |> move (-40,40)
                         , square 20
                             |> outlined (solid 1) black
                             |> move (-40,-20)
                         , square 20
                             |> outlined (solid 1) black
                             |> move (-40,-40)
                         ]

        myBackground = square 200 |> filled darkGreen

    in (("FierceGazelle",myWord,"6"),("Street","given to Saginaw",myShapes))

  ,    let
        myWord = "camp"-- put your work here (in quotes) --
        myCode =  536 -- put your code number here, which came with your word (not in quotes) --
        myShapes model = [ myBackground
                         ,rect 15 70
                         |> filled brown
                         |> move (0,-15)
                         ,triangle 25
                         |> filled lightGreen
                         |> rotate (degrees -270)
                         |> move (0,20)
                         , triangle 30
                             |> filled blue
                             |> rotate (degrees -30)
                             |> move (-25,-35)
                           ,rect 2 42
                             |> filled black
                             |> move (-25,-28)
                            ,rect 7 30
                             |> filled (rgb 178 47 47)
                             |> rotate (degrees -70)
                             |> move (25,-42)
                             ,rect 7 30
                             |> filled (rgb 178 47 47)
                             |> rotate (degrees 70)
                             |> move (25,-42)
                             ,triangle 15
                             |> filled orange
                             |> addOutline (solid 3) yellow
                             |> rotate (degrees -150)
                             |> move (25,-33)

                         ]

        myBackground = square 200 |> filled (rgb 20 255 240)
    in (("CalmButterfly",myWord,"6"),("camp","given to Saginaw",myShapes))

  ,    let
        myWord = "balloon"
        myCode = 511

        myShapes model = [ myBackground
                         , ballon |> move (0, 35* (let i = round (0.25*model.time) in model.time - 4 * toFloat i))
                         ]

        ballon = group [
                         oval 30 35
                         |> filled hotPink

                            ,rect 10 80
                         |> filled white
                         |> scale 0.25
                         |> move (0,-30)

                         ,triangle 10
                         |> filled hotPink
                         |> rotate (degrees -30)
                         |> move (0,-20)


                          ]
        myBackground = square 200 |> filled blue
    in (("DecisiveClover",myWord,"6"),("Pink balloon","given to Saginaw",myShapes))

  ,    let
        myWord = "book"
        myCode = 525
        myShapes model = [ myBackground
                         , rect 50 65
          |> filled darkRed
          |> rotate (degrees 90)
                         , rect 40 55
          |> filled white
          |> rotate (degrees 90)

                         , rect 1 40
          |> filled black
                         ]

        myBackground = square 200 |> filled pink
    in (("DistinctCrocodile",myWord,"6"),("Book","given to Saginaw",myShapes))

  ,    let
        myWord =  "road" --put your work here (in quotes)
        myCode =  692 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , rect 45 105
                             |> filled black
                         , rect 10 15
                             |> filled yellow
                         ,  rect 10 15
                             |> filled yellow
                             |> move (0,35)
                         ,  rect 10 15
                             |> filled yellow
                             |> move (0,-35)
                         ]

        myBackground = square 200 |> filled gray
    in (("DaringChimpanzee",myWord,"6"),("The Road","given to Saginaw",myShapes))

  ,    let
        myWord ="beam" -- (beam) --
        myCode =517 --517--

        myShapes model = [ myBackground
                         , rect 10 55

                             |> filled grey

                         , rect 10 45
                             |> filled grey
                             |> rotate (degrees -90)
                             |> move (0,30)
                          , rect 10 45
                             |> filled grey
                             |> rotate (degrees -90)
                             |> move (0,-30)
                         ]

        myBackground = square 200 |> filled pink
    in (("DoubtfulCrocus",myWord,"6"),("Beam","given to Saginaw",myShapes))

  ,    let
            myWord = "doll"
            myCode = 549

            myShapes model = [ group [roundedRect 10 40 5
              |> filled lightBrown
              |> rotate (degrees 0)
              |> move (-20,-40),
              roundedRect 10 40 5
              |> filled lightBrown
              |> rotate (degrees 0)
              |> move (20,-40),
              roundedRect 40 10 5
              |> filled hotPink
              |> rotate (degrees -300)
              |> move (-30,-10),
              roundedRect 40 10 5
              |> filled hotPink
              |> rotate (degrees -240)
              |> move (40,-10),
              roundedRect 40 60 5
              |> filled hotPink
              |> rotate (degrees -90)
              |> move (0,-10),
              circle 10
              |> filled lightBrown
              |> scale 2
              |> rotate (degrees 0)
              |> move (0,20),
              curve (0,0) [Pull (10,0) (20,-10)]
              |> filled purple
              |> scale 1.25
              |> rotate (degrees -150)
              |> move (20,10),
              circle 20
              |> filled black
              |> scale 0.25
              |> rotate (degrees -150)
              |> move (-10,20),
              circle 20
              |> filled black
              |> scale 0.25
              |> rotate (degrees -150)
              |> move (10,20),
              curve (0,0) [Pull (10,0) (20,-10)]
              |> filled red
              |> scale 2.5
              |> rotate (degrees -60)
              |> move (20,40),
              curve (0,0) [Pull (10,0) (20,-10)]
              |> filled red
              |> scale 2.5
              |> rotate (degrees 120)
              |> move (-20,-20)

              ] |> move (-7,10) ]

    in (("TallTuraco",myWord,"6"),("Beam","given to Saginaw",myShapes))

  ,    let
            myWord = "popcorn"
            myCode = 680

            myShapes model = [ myBackground
                              ,mypopcorn |> move (10,-24)

                             ]

            myBackground = square 200 |> filled pink

            mypopcorn  = group [ roundedRect 20 35 5  |> filled white  |> move (-30,-10) ,roundedRect 20 35 5  |> filled red  |> move (-10.5,-10) ,  roundedRect 20 35 5  |> filled white  |> move (10,-10) ,circle 10  |> filled lightYellow  |> move (-30,7) , circle 10  |> filled lightYellow  |> move (-20,7) , circle 10  |> filled lightYellow  |> move (-10,7) , circle 10  |> filled lightYellow  |> move (0,7), circle 10  |> filled lightYellow  |> move (10,7)

                              ]

    in (("ArrogantBeet",myWord,"6"),("Beam","given to Saginaw",myShapes))

  ]
