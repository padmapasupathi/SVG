module Wrd1526743215065487 exposing(words)
import GraphicSVG exposing(..)
words = [
      let
        myWord = "beetle"
        myCode = 530

        myShapes model = [ myBackground

                         , rect 4 15
                           |> filled black
                           |> scaleY 2
                           |> rotate (degrees 40)
                           |> move ( 20, -3)

                           , rect 4 15
                           |> filled black
                           |> scaleY 2
                           |> rotate (degrees -40)
                           |> move ( -20, -3)

                         , rect 4 6
                          |> filled black
                          |> scaleY 2
                          |> move (28.7, -18)

                           , rect 4 10
                          |> filled black
                          |> scaleY 2
                          |> move (14,16)

                         , rect 4 6
                          |> filled black
                          |> scaleY 2
                          |> rotate (degrees 30)
                          |> move ( 12, 30)

                          , rect 4 6
                          |> filled black
                          |> scaleY 2
                          |> rotate (degrees -30)
                          |> move ( -12, 30)

                           , rect 4 10
                          |> filled black
                          |> scaleY 2
                          |> move (-14,16)

                           , rect 4 10
                          |> filled black
                          |> scaleY 2
                          |> move (10,-40)

                           , rect 4 10
                          |> filled black
                          |> scaleY 2
                          |> move (-10,-40)


                          , rect 4 6
                          |> filled black
                          |> scaleY 2
                          |> move (-28.7 , -18)

                         , oval 10 15
                           |> filled black
                           |> scale 2
                           |> scaleX 2
                           |> scaleY 2
                           |> move ( 0, -10)

                         , circle 10
                           |> filled black
                           |> move ( 0, 18)

                         ,  oval 9 18
                           |> filled darkOrange
                           |> scale 2
                           |> move ( -10, -12)

                           ,  oval 9 18
                           |> filled darkOrange
                           |> scale 2
                           |> move ( 10, -12)

                          , curve (0,0) [Pull (-15,30) (-30,0)]
                           |> filled darkBlue
                           |> move (15, 3)

                           , curve (0,0) [Pull (-12,20) (-25,0)]
                           |> filled lightYellow
                           |> makeTransparent 0.4
                           |> move (15, 3)

                           ,  oval 15 30
                           |>filled lightYellow
                           |> makeTransparent 0.3
                           |> move ( -10, -12)

                           ,  oval 15 30
                           |>filled lightYellow
                           |> makeTransparent 0.2
                           |> move ( 10, -12)

                         ]

        myBackground = square 200|>  filled (rgb 169 162 103)
    in (("CheerfulBoar",myWord,"6"),("Beetle","given to Henderson",myShapes))

  ,    let
        myWord = "milk"
        myCode = 711

        myShapes model = [ myBackground,

                         rect 16 30
                          |> filled white
                          |> scale 1.5
                          |> scaleX 1.5
                          |> scaleY 1.5
                          |> rotate (degrees -180)
                          |> move (-20,-15) ,

                          rect 10 30
                          |> filled gray
                          |> scale 1.5
                          |> scaleX 1.5
                          |> scaleY 1.5
                          |> rotate (degrees -180)
                          |> move (0,-15) ,

                          text "MILK"
                          |> filled red
                          |> scale 0.55
                          |> move (-35,5) ,


                           polygon [(25,0),(31,15),(7,16),(0,0)]
                          |> filled white
                          |> move (-39, 17)
                          |> scale 1.3 ,

                          triangle 6
                          |> filled gray
                          |> scale 1.5
                          |> scaleX 1.5
                          |> scaleY 1.5
                          |> rotate (degrees 90)
                          |> move (0, 24) ,

                          circle 3
                          |> filled red
                          |> move (-25,25)



                          ]
        myBackground = square 200 |> filled pink
    in (("CleanBramble",myWord,"6"),("milk","given to Henderson",myShapes))

  ,    let
        myWord = "kitten"
        myCode = 687

        myShapes model = [ group [ myBackground
                         , kittenFaceFill
                         , kittenStripes
                           |> move (5, 8)
                         , kittenStripes
                           |> move (1, 8)
                         , kittenStripes
                           |> move (-3, 8)
                         , kittenEars
                           |> move (10, 10)
                         , kittenEyes1
                           |> move(10, -5)
                         ,  kittenEyes2
                           |> move(10, -8)
                         , kittenEyes1
                           |> move (-15, -5)
                         , kittenEyes2
                           |> move (-15, -8)
                         , kittenNose
                         , kittenMouth1
                           |> move(-5,-15)


                         ] |> scale 1.2
                         ]

        myBackground = square 200 |> filled white

        kittenFaceFill = oval 70 65
                     |> filled (rgb 157 171 176)
                    -- |> rotate (degrees -60)

        kittenEars = polygon [(-33,27),(-19,0),(0,0),(16,27)]
                    |> filled white

        kittenStripes = roundedRect 2 15 5
                    |> filled (rgb 148 152 154)

        kittenEyes1 = curve (0,0) [Pull (-53,22) (1,49), Pull (0,0) (0,0) ]
                    |> filled (rgb 121 125 127)
                    |> rotate (degrees -90)
                    |> scale 0.25
                    |> scaleY 0.75
                    |> scaleX 0.96

        kittenEyes2 = curve (0,0) [Pull (-53,22) (1,49), Pull (0,0) (0,0) ]
                    |> filled (rgb 157 171 176)
                    |> rotate (degrees -90)
                    |> scale 0.25
                    |> scaleY 0.75
                    |> scaleX 0.96

        kittenNose = oval 8 5
                    |> filled (rgb 121 125 127)
                    |> move (3,-10)

        kittenMouth1 = curve (0,0) [Pull (-31,-49) (30,-50), Pull (-9,-39) (1,0), Pull (6,0) (0,0) ]
                    |> filled (rgb 121 125 127)
                    |> rotate (degrees 60)
                    |> scale 0.40
                    |> scaleY 0.75
                    |> scaleX 0.7

        --(rgb 173 216 230)
    in (("CautiousBeaver",myWord,"6"),("Kitten","given to Henderson",myShapes))

  ,    let
        myWord = "drug"
        myCode = 610

        myShapes model = [ myBackground
                         , rect 15 40
                         |> filled grey
                         |> move (-30, 5)
                         , oval 15 5
                         |> filled white
                         |> move (-30, 25)
                         , rect 50 100
                         |> filled white
                         |> move (25, -60)
                         , circle 20
                         |> filled (rgb 255 211 211)
                         |> move (25, 0)
                         , rect 1 10
                         |> filled black
                         |> move (15, 5)
                         |> rotate (degrees 45)
                         , rect 1 10
                         |> filled black
                         |> move (15, 5)
                         |> rotate (degrees -45)
                         , rect 1 10
                         |> filled black
                         |> move (35, 5)
                         |> rotate (degrees 45)
                         , rect 1 10
                         |> filled black
                         |> move (35, 5)
                         |> rotate (degrees -45)
                         , text "Advil"
                         |> filled black
                         |> rotate (degrees 90)
                         |> move (-25, -10)
                         ]

        myBackground = square 200 |> filled pink
    in (("CuriousCaper",myWord,"6"),("Drug","given to Henderson",myShapes))

  ,    let
        myWord = "maid"
        myCode = 700
        myShapes model = [ myBackground,
          oval 10 15
          |> filled (rgb 255 237 186)
          |> scaleY 2
          |> move (-7,-40),
            oval 10 15
          |> filled (rgb 255 237 186)
          |> scaleY 2
          |> move (7,-40),
            triangle 10
          |> filled black
          |> scale 2
          |> rotate (degrees -30)
          |> move (0,-20),
          rect 5 15
          |> filled (rgb 255 237 186)
          |> scaleY 2
          |> move (-14,-9)
          |> rotate (degrees -30),
          rect 5 15
          |> filled (rgb 255 237 186)
          |> scaleY 2
          |> rotate (degrees 30) |> move (14,-9),
          triangle 10
          |> filled black
          |> scale 1
          |> rotate (degrees 30),
          wedge 5 0.5
          |> filled white
          |> rotate (degrees -90)
          |> move (0,-15),
            wedge 10 0.65
          |> filled white
          |> rotate (degrees 90) |> move (0,20),
          circle 10
          |> filled (rgb 255 237 186)
          |> move (0,14),
          wedge 10 0.60
          |> filled (rgb 215 31 31)
          |> rotate (degrees 90) |> move (0,14),
          circle 1
          |> filled black
          |> move (-3,11),
          circle 1
          |> filled black
          |> move (3,11)

                         ]

        myBackground = square 200 |> filled gray
    in (("CoolButterfly",myWord,"6"),("maid","given to Henderson",myShapes))

  ,    let
        myWord = "tent"
        myCode = 815

        myShapes model = [ myBackground
                         , rect 100 50
                                  |> filled brown
                                  |> move (0, -35)
                         , myTent

                         ]
        myTent = group   [
                         isosceles 60 50
                                  |> filled darkGreen
                                  |> move (0, -10)
                         , isosceles 5 40
                                  |> filled black
                                  |> move (0, -10)
                         ]

        myBackground = square 200 |> filled lightBlue
    in (("CleverBreadfruit",myWord,"6"),("Tent","given to Henderson",myShapes))

  ,    let
        myWord = "space"
        myCode = 794

        myShapes model = [ myBackground
                    , circle 10
                      |> outlined (solid 1) black
                      |> scale 2.3
                      |> move (0, 3)
                   , circle 10
                      |> outlined (solid 1) black
                      |> scale 2.8
                      |> move (0, 3)
                   , circle 10
                      |> outlined (solid 1) black
                      |> scale 3.3
                      |> move (0, 3)
                   , circle 10
                      |> outlined (dashed 1) black
                      |> scale 3.8
                      |> move (0, 3)
                      |> rotate (degrees (model.time*25))
                   , circle 10
                      |> outlined (dotdash 1) black
                      |> scale 4.3
                      |> move (0, 3)
                      |> rotate (degrees (model.time*50))
                   , circle 10
                      |> outlined (solid 1) black
                      |> scale 1.4
                      |> scaleX 3.5
                      |> scaleY 3.5
                      |> move (0, 3)
                   , circle 10
                       |> filled white
                       |> scale 0.2
                       |> move (-42, 22)
                   , circle 10
                       |> filled white
                       |> scale 0.2
                       |> move (5, 42)
                   , circle 10
                       |> filled white
                       |> scale 0.2
                       |> move (-26, -36)
                   , circle 10
                       |> filled white
                       |> scale 0.2
                       |> move (25, -25)
                   , circle 10
                       |> filled white
                       |> scale 0.2
                       |> move (-22, 45)
                   , circle 10
                       |> filled white
                       |> scale 0.2
                       |> move (12, -38)
                   , circle 10
                       |> filled white
                       |> scale 0.2
                       |> move (45, -28)
                   , circle 10
                       |> filled white
                       |> scale 0.2
                       |> move (-45, -5)
                   , circle 10
                       |> filled white
                       |> scale 0.2
                       |> move (-38, -23)
                   , circle 10
                      |> outlined (solid 1) black
                      |> scale 1.8
                      |> move (0, 3)
                   , ngon 8 10
                       |> outlined (longdash 1) darkBlue
                       |> scale 1.5
                       |> scaleX 1.5
                       |> move (2, 3)
                       |> rotate (degrees 30)
                   , ngon 8 10
                       |> outlined (dashed 1) lightBlue
                       |> scale 1.7
                       |> scaleX 1.5
                       |> move (2, 3)
                       |> rotate (degrees 30)
                   , ngon 8 10
                       |> outlined (dashed 1) lightBlue
                       |> scale 1.3
                       |> scaleX 1.5
                       |> move (2, 3)
                       |> rotate (degrees 30)
                   , ngon 8 10
                       |> outlined (longdash 1) white
                       |> scale 1.1
                       |> scaleX 1.5
                       |> move (2, 3)
                       |> rotate (degrees 30)
                   , ngon 8 10
                       |> outlined (longdash 1) black
                       |> scale 0.6
                       |> scaleX 1.5
                       |> move (2, 3)
                       |> rotate (degrees 30)
                   , ngon 8 10
                       |> outlined (longdash 1) charcoal
                       |> scale 0.9
                       |> scaleX 1.5
                       |> move (2, 3)
                       |> rotate (degrees 30)
                   , ngon 8 10
                       |> outlined (dotdash 1) black
                       |> scale 0.8
                       |> scaleX 1.5
                       |> move (2, 3)
                       |> rotate (degrees 30)
                   , ngon 8 10
                       |> outlined (dotdash 1) white
                       |> scale 2
                       |> scaleX 1.5
                       |> move (2, 3)
                       |> rotate (degrees 30)
                   , ngon 8 10
                       |> outlined (dashed 1) black
                       |> scale 2.3
                       |> scaleX 1.5
                       |> move (2, 3)
                       |> rotate (degrees 30)
                   , ngon 8 10
                       |> outlined (dotdash 1) darkBlue
                       |> scale 2.5
                       |> scaleX 1.5
                       |> move (2, 3)
                       |> rotate (degrees 30)
                   , ngon 8 10
                       |> outlined (dotdash 1) white
                       |> makeTransparent 0.8
                       |> scale 2.7
                       |> scaleX 1.5
                       |> move (2, 3)
                       |> rotate (degrees 30)
                   , curve (0,0) [Pull (10,5) (20,-10)]
                      |> filled (rgb 249 249 249)
                      |> move (-25, 28)
                      |> rotate (degrees -10)
                   , curve (0,0) [Pull (10,5) (20,-10)]
                      |> filled (rgb 249 249 249)
                      |> move (-28, 30)
                      |> rotate (degrees -200)
                   , rect 10 15
                       |> filled (rgb 249 249 249)
                       |> scale 0.5
                       |> scaleY 10
                       |> rotate (degrees 45)
                       |> move (-21, 25)
                   , circle 10
                      |> filled white
                      |> scale 0.8
                      |> move (0, 3)
                   ]

        myBackground = square 200 |> filled darkCharcoal
    in (("CuddlyCantaloupe",myWord,"6"),("space","given to Henderson",myShapes))

  ,    let
        myWord = "queen" --put your work here (in quotes) --
        myCode = 748 --put --your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , square 10
                             |> filled red
                             |> rotate model.time

                         , myFace
                         ,myHair2
                         ,myCrown
                         ,myHair1
                         ,myBody

            ]

        myFace = group [
                       circle 10
                          |> filled (rgb 255 214 185)
                          |> scale 2
                       ,roundedRect 5 15 3
                          |> filled (rgb 255 214 185)
                          |> scale 2
                          |> scaleX 2
                          |> move (0, -15)

                       ]
        myBody = group [
                        roundedRect 12 15 5
                          |> filled white
                          |> scale 3
                          |> scaleX 2
                          |> move (0, -42)
                         ,circle 7
                          |> filled (rgb 255 214 185)
                          |> scale 2
                          |> move (0, -27)
                          ,roundedRect 7 25 1
                          |> filled darkYellow
                          |> scale 2
                          |> rotate (degrees 30)
                          |> move (-10, -42)
                          ,roundedRect 5 25 1
                          |> filled darkRed
                          |> scale 2
                          |> rotate (degrees 30)
                          |> move (-10, -42)

                        ]

        myHair1 = group [
                        circle 4
                          |> filled lightGray
                          |> scale 2
                          |> move (-20,0)
                           ,circle 4
                          |> filled lightGray
                          |> scale 2
                          |> move (20,0)
                           ,circle 4
                          |> filled lightGray
                          |> scale 2
                          |> move (-18, 10)
                           ,circle 4
                          |> filled lightGray
                          |> scale 2
                          |> move (18, 10)

                        ]
        myHair2 = group [
                         circle 4
                          |> filled lightGray
                          |> scale 2
                          |> move (10, 18)
                           ,circle 4
                          |> filled lightGray
                          |> scale 2
                          |> move (-10, 18)
                         ,circle 3
                          |> filled lightGray
                          |> scale 2
                          |> move (0, 20)
                        ]

        myCrown = group [
                        rightTriangle 12 8
                          |> filled grey
                          |> move (-17,20)
                         ,rightTriangle 8 12
                          |> filled grey
                          |> rotate (degrees 90) |> move (17,20)
                        ,rect 17 3
                          |> filled grey
                          |> scale 2
                          |> move (0, 18)
                         ,triangle 10
                          |> filled grey
                          |> rotate (degrees 210)
                          |> move (0, 20)
                        ]
        myBackground = square 200 |> filled (rgb 76 0 153)
    in (("CaringBear",myWord,"6"),("Queen","given to Henderson",myShapes))

  ,    let
        myWord = "wheel"-- put your work here (in quotes) --
        myCode = 850-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         ]

        myBackground =group [square 200 |> filled green
                                        ,circle 33
                                        |> outlined (solid 5) darkGray
                                        ,circle 40
                                        |> outlined (solid 10) black
                                        ,circle 10
                                        |> filled darkGray
                                        ,rect 10 29
                                        |> filled darkGray
                                        |> move (0,20)
                                        ,rect 10 30
                                        |> filled darkGray
                                        |> rotate (degrees 30)
                                        |> move (9,-13)
                                        ,rect 10 30
                                        |> filled darkGray
                                        |> rotate (degrees -30)
                                        |> move (-9,-13)
                                        ,rect 10 30
                                        |> filled darkGray
                                        |> rotate (degrees 50)
                                        |> move (-16,10)
                                        ,rect 10 30
                                        |> filled darkGray
                                        |> rotate (degrees -50)
                                        |> move (16,10)
                                        ]
    in (("SillyRaccoon",myWord,"6"),("DaBoss","given to LincolnAlexander",myShapes))

  ,    let
        myWord = "toothbrush"-- put your work here (in quotes) --
        myCode = 824-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                          ,rect 50 5
                          |> filled darkBlue
                          |> move(-10,0)
                          ,rect 18 2
                          |> filled darkBlue
                          |> move(22,2)
                          ,text "Brush Brush Brush"
                          |> filled black
                          |> move(-45,10)
                          ,rect 17 2
                          |> filled white
                          |> move(22,0)
                          ,rect 17 2
                          |> filled white
                          |> move(22,-2)
                          ,rect 17 2
                          |> filled white
                          |> move(22,-4)
                          ]







        myBackground = square 200 |> filled darkGrey
    in (("ShockingPotato",myWord,"6"),("TheThreeStooges","given to LincolnAlexander",myShapes))

  ,    let
        myWord = "flower"

        myCode = 632-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                           ,theChicken
                             |> move (0,-15)
                          ,leaf
                             |>rotate(degrees 45)
                             |> move (20,-5)
                        ]

        myBackground = rect 200 200
                        |> filled lightYellow

        theChicken =group [ rect 10 50
                          |> filled darkBrown
                          ,circle 15
                          |> filled purple
                          |> move (0,30)
                          ,wedge 15 0.5
                          |> filled red
                          |> rotate (degrees 90)
                          |> move (20,30)
                          ,wedge 15 0.5
                          |> filled red
                          |> rotate (degrees 180)
                          |> move(0,50)
                          ,wedge 15 0.5
                          |> filled red
                          |> rotate (degrees 270)
                          |> move(-20,30)
                          ,wedge 15 0.5
                          |> filled red
                          |> rotate (degrees 360)
                          |> move(0, 10)
                          ]

        leaf = group[wedge 15 0.5
                      |> filled blue
                      |> rotate (degrees 90)
                      |> move (20,30)
                      ,wedge 15 0.5
                      |> filled blue
                      |> rotate (degrees 180)
                      |> move(0,50)
                      ,wedge 15 0.5
                      |> filled blue
                      |> rotate (degrees 270)
                      |> move(-20,30)
                      ,wedge 15 0.5
                      |> filled blue
                      |> rotate (degrees 360)
                      |> move(0, 10) ]








    in (("ShortPumpkin",myWord,"6"),("flower","given to LincolnAlexander",myShapes))

  ,    let
        myWord ="banana"
        myCode = 516

        myShapes model = [ myBackground ,mymom
                            ,rect 5 12
                              |> filled brown
                              |> move(19,23)



                         ]

        myBackground = square 200 |> filled pink
        mymom =curve (0,0) [Pull (10,0) (20,-10)]
          |> filled lightYellow
          |> scale 2
          |> scaleX 2
          |> scaleY 2
          |> rotate (degrees 270)
          |> move (20,30)

    in (("StrongSesame",myWord,"6"),("bananna","given to LincolnAlexander",myShapes))

  ,    let
        myWord = "jeans"
        myCode = 679

        myShapes model = [ myBackground,
                         jeanbase,
                         jeanseparator,
                         jeanbuckle,
                         rect 17 6
                          |> filled lightBlue
                          |> scale 0.75
                          |> scaleX 0.75
                          |> scaleY 0.75
                          |> rotate (degrees 90)
                          |> move (10,40),
                         rect 17 6
                          |> filled lightBlue
                          |> scale 0.75
                          |> scaleX 0.75
                          |> scaleY 0.75
                          |> rotate (degrees 90)
                          |> move (20,40),
                         rect 17 6
                          |> filled lightBlue
                          |> scale 0.75
                          |> scaleX 0.75
                          |> scaleY 0.75
                          |> rotate (degrees 90)
                          |> move (-10,40),
                         rect 17 6
                          |> filled lightBlue
                          |> scale 0.75
                          |> scaleX 0.75
                          |> scaleY 0.75
                          |> rotate (degrees 90)
                          |> move (-20,40),
                          badge
                          |> rotate model.time,
                         graphPaper 10 |> makeTransparent 0.4
                         ]

        jeanbase = group [rect 10 15
          |> filled lightBlue
          |> scale 2.5
          |> scaleX 2.0
          |> scaleY 2.5
          |> rotate (degrees 0)
          |> move (0,0)
          ]

        jeanseparator = group [triangle 20
          |> filled white
          |> scale 0.75
          |> scaleX 5
          |> rotate (degrees -270)
          |> move (0,-55)
          ]

        jeanbuckle = group [rect 16 4
          |> filled darkBrown
          |> scale 1.75
          |> scaleX 1.75
          |> rotate (degrees -360)
          |> move (0,40)
          ]

        badge = group [ngon 5 10
          |> filled lightBrown
          |> scale 0.75
          |> scaleX 0.75
          |> scaleY 0.75
          |> rotate (degrees 90)
          |> move (0, 40)
          ]
        myBackground = square 200 |> filled white
    in (("ComfortableBumblebee",myWord,"6"),("jeans","given to Henderson",myShapes))

  ,    let
        myWord = "finger"
        myCode = 626

        myShapes model = [group [ myBackground

                          , circle 7
                            |>filled yellow
                            |>move (0,-8)

                       , circle 7
                            |>filled yellow
                            |>move (0,-15)

                     , circle 7
                            |>filled yellow
                            |>move (0,-21)

                       , oval 10 12
                            |>filled white
                            |>move (0,-6)]
          |> scale 3 |> move (0,25)]
        myBackground = square 200 |> filled pink

    in (("ShyQuince",myWord,"6"),("finger","given to LincolnAlexander",myShapes))

  ,    let
        myWord = "quiet"
        myCode = 750

        myShapes model = [ myBackground
                         , mySpeaker
                                  |> move (-10, 0)
                         , mySound3
                                  |> move (5, 0)
                                  |> scale 3
                                  |> makeTransparent (1-(sin (model.time)))
                         , mySound2
                                  |> move (5, 0)
                                  |> scale 2
                                  |> makeTransparent (1-(sin (model.time)))
                         , mySound
                                  |> move (2.5, 0)
                                  |> scale 1
                                  |> makeTransparent (1-(sin (model.time)))
                         ,myMute
                                  |> move (-12, 0)
                                  |> rotate (40)
                                  |> makeTransparent (0 + (sin (model.time)))

                         ]

        mySpeaker = group[
                         triangle 25
                                  |> filled darkGray
                                  |> rotate (45)
                         , rect 13 20
                                  |> filled darkGray
                                  |> move (-20, 0)
                        ]
        mySound = group [
                        wedge 10 0.25
                                  |> filled darkGray
                        , wedge 8 0.4
                                  |> filled white
                        ]
        mySound2 = group[
                        wedge 10 0.3
                                  |> filled darkGray
                        , wedge 8 0.4
                                  |> filled white
                                  |> move (1, 0)
                        ]
        mySound3 = group[
                        wedge 10 0.3
                                  |> filled darkGray
                        , wedge 8 0.4
                                  |> filled white
                                  |> move (1, 0)
                       ]
        myMute = group [
                       rect 5 60
                       |> filled darkRed
                       |> rotate (degrees 90)
                       , rect 5 60
                       |> filled darkRed
                       ]

        myBackground = square 200 |> filled white
    in (("CleverBreadfruit",myWord,"6"),("Quiet","given to Henderson",myShapes))

  ,    let
        myWord = "cannon"
        myCode = 554

        myShapes model =
                   [ group [myBackground
                   , rect 50 5
                   |> filled darkGrey
                   |> rotate (degrees 25)
                   , circle 10
                   |> outlined (solid 1) black
                   |> move (-20, -10)
                   , rect 1 20
                   |> filled black
                   |> move (-20, -10)
                   , rect 20 1
                   |> filled black
                   |> move (-20, -10)
                   , rect 1 20
                   |> filled black
                   |> move (-20, -10)
                   |> rotate (degrees (45))
                   , rect 1 20
                   |> filled black
                   |> move (-20, -10)
                   |> rotate (degrees (-45))
                   ] |> scale 1.5 ]

        myBackground = square 200 |> filled green
    in (("CuriousCaper",myWord,"6"),("Cannon","given to Henderson",myShapes))

  ,    let
        myWord = "rainbow"
        myCode = 754

        myShapes model = [ myBackground,
           wedge 50 0.5
          |> filled red
          |> scale 1
          |> rotate (degrees 90) |> move (0,-30),
          wedge 45 0.5
          |> filled orange
          |> scale 1
          |> rotate (degrees 90) |> move (0,-30),
          wedge 40 0.5
          |> filled yellow
          |> scale 1
          |> rotate (degrees 90) |> move (0,-30),
          wedge 35 0.5
          |> filled green
          |> scale 1
          |> rotate (degrees 90) |> move (0,-30),
          wedge 30 0.5
          |> filled blue
          |> scale 1
          |> rotate (degrees 90) |> move (0,-30),
          wedge 25 0.5
          |> filled purple
          |> scale 1
          |> rotate (degrees 90) |> move (0,-30),
          wedge 20 0.5
          |> filled (rgb 0 205 255)
          |> scale 1
          |> rotate (degrees 90) |> move (0,-30),
          circle 10
          |> filled white
          |> move (50,-30),
            circle 10
          |> filled white
          |> move (40,-30),
            circle 10
          |> filled white
          |> move (30,-30),
            circle 10
          |> filled white
          |> move (20,-30),
            circle 10
          |> filled white
          |> move (-50,-30),
            circle 10
          |> filled white
          |> move (-40,-30),
            circle 10
          |> filled white
          |> move (-30,-30),
            circle 10
          |> filled white
          |> move (-20,-30)

                         ]

        myBackground = square 200 |> filled (rgb 0 205 255)
    in (("CoolButterfly",myWord,"6"),("rainbow","given to Henderson",myShapes))

  ,    let
        myWord = "tree"
        myCode = 831

        myShapes model = [ myBackground
                         , rect 6 10
                          |> filled darkBrown
                          |> scale 2
                          |> scaleY 2
                          |> move (0, -20)

                         ,rect 30 20
                          |> filled (rgb 147 190 72)
                          |> scale 2
                          |> scaleX 2
                          |> move ( 0, -60)

                         ,circle 5
                          |> filled (rgb 128 169 133)
                          |> scale 2

                         , circle 7
                          |> filled (rgb 128 169 100)
                          |> scale 2
                          |> move ( -10, 10)

                         , circle 6
                          |> filled (rgb 128 169 133)
                          |> scale 2
                          |> move ( 12, 10)

                          , circle 6
                          |> filled (rgb 137 180 131)
                          |> scale 2
                          |> move ( 0, 21)

                          ,circle 4
                          |> filled (rgb 118 156 85)
                          |> scale 2
                          |> move (-8, -2)

                          ,circle 4
                          |> filled (rgb 118 148 85)
                          |> scale 2
                          |> move (9, -1)

                          ,circle 4
                          |> filled (rgb 118 130 85)
                          |> scale 2
                          |> move (7, 17)

                          ,circle 4
                          |> filled (rgb 118 140 85)
                          |> scale 2
                          |> move (-9, 17)



                          ,circle 4
                          |> filled (rgb 151 169 100)
                          |> scale 2
                          |> move (0, 10)

                         , circle 3
                          |> filled black
                          |> move ( 0,-15)
                         ]

        myBackground = square 200 |> filled lightBlue
    in (("CheerfulBoar",myWord,"6"),("Tree","given to Henderson",myShapes))

  ,    let
        myWord = "scarecrow"
        myCode = 770

        myShapes model = [ myBackground
                         --Cross--
                         , rect 2 40
                             |> filled (rgb 204 104 0)
                             |> move (0, -14)
                         , rect 30 2
                             |> filled (rgb 204 104 0)
                             |> move (14, 10)
                         , rect 30 2
                             |> filled (rgb 204 104 0)
                             |> move (-14, 10)
                         --Body--
                         , roundedRect 18 20 4
                             |> filled (rgb 204 0 0)
                             |> move (0, 3)
                         ,
                         scarecrowMovement(model)
                             |> rotate ( 0.2 * sin(model.time*0.8))
                         --Neck--
                         , roundedRect 8 10 50
                             |> filled (rgb 204 0 0)
                             |> move (0, 12)
                         --Buttons--
                         , rect 0.8 0.8
                             |> filled (rgb 255 255 255)
                             |> move (3.5, 0)
                         , rect 0.8 0.8
                             |> filled (rgb 255 255 255)
                             |> move (-3.5, 0)
                         --Stripes
                         , rect 1 19
                             |> filled (rgb 0 102 204)
                             |> move (-7, 3)
                         , rect 1 21.8
                             |> filled (rgb 0 102 204)
                             |> move (-3.5, 3.8)
                         , rect 1 21
                             |> filled (rgb 0 102 204)
                             |> move (0, 3.5)
                         , rect 1 21.8
                             |> filled (rgb 0 102 204)
                             |> move (3.5, 3.8)
                         , rect 1 19
                             |> filled (rgb 0 102 204)
                             |> move (7, 3)
                         --BlueShirt--
                         , roundedRect 14.8 15 3
                             |> filled (rgb 0 102 204)
                             |> move (0, 0.3)
                         --Buttons--
                         , rect 1.5 1.5
                             |> filled (rgb 255 255 255)
                             |> move (7, 7)
                         , rect 1.5 1.5
                             |> filled (rgb 255 255 255)
                             |> move (-7, 7)
                         , rect 1.5 1.5
                             |> filled (rgb 255 255 255)
                             |> move (7, -6)
                         , rect 1.5 1.5
                             |> filled (rgb 255 255 255)
                             |> move (-7,-6)
                         --Pouch--
                         , curve (0,0) [Pull (10,0) (10,-10)]
                             |> filled (rgb 102 178 255)
                             |> rotate (degrees 225)
                             |> move (7, 0)
                         --Head--
                         , circle 8
                             |> filled (rgb 255 204 153)
                             |> move (0, 22)
                         --Mouth--
                         , rect 8 0.8
                             |> filled (rgb 64 64 64)
                             |> move (0, 17.5)
                         --Teeth--
                         , rect 0.6 2
                             |> filled (rgb 64 64 64)
                             |> move (-3, 17.5)
                         , rect 0.6 2
                             |> filled (rgb 64 64 64)
                             |> move (-2, 17.5)
                         , rect 0.6 2
                             |> filled (rgb 64 64 64)
                             |> move (-1, 17.5)
                         , rect 0.6 2
                             |> filled (rgb 64 64 64)
                             |> move (0, 17.5)
                         , rect 0.6 2
                             |> filled (rgb 64 64 64)
                             |> move (1, 17.5)
                         , rect 0.6 2
                             |> filled (rgb 64 64 64)
                             |> move (2, 17.5)
                         , rect 0.6 2
                             |> filled (rgb 64 64 64)
                             |> move (3, 17.5)
                         --Black eye--
                         , circle 2
                             |> filled (rgb 64 64 64)
                             |> move (3.5, 23)
                         , circle 2
                             |> filled (rgb 64 64 64)
                             |> move (-3.5, 23)
                         --White eye--
                         , circle 0.8
                             |> filled (rgb 255 255 255)
                             |> move (3.5, 23)
                         , circle 0.8
                             |> filled (rgb 255 255 255)
                             |> move (-3.5, 23)
                         --Hat Top--
                         ,  ngon 5 7.5
                             |> filled (rgb 64 64 64)
                             |> move (0, 34.1)
                             |> rotate (degrees 90)
                         --Left Side Hat--
                         , openPolygon [(0,0),(0,-10),(30,0)]
                             |> filled (rgb 64 64 64)
                             |> scale 0.6
                             |> rotate (degrees 180)
                             |> move (-4, 28)
                             |> scaleY 1.3
                         --Right Side Hat--
                         , openPolygon [(0,0),(0,-10),(-30,0)]
                             |> filled (rgb 64 64 64)
                             |> scale 0.6
                             |> rotate (degrees 180)
                             |> move (4, 28)
                             |> scaleY 1.3
                         ]


        scarecrowMovement model = group [
                         --Right Arm--
                          roundedRect 5 25 3
                             |> filled (rgb 204 0 0)
                             |> move (16, 6)
                             |> rotate (degrees 67)
                         --Left Arm--
                         , roundedRect 5 25 3
                             |> filled (rgb 204 0 0)
                             |> move (-16, 6)
                             |> rotate (degrees 293)
                         --Right Leg--
                         , roundedRect 6 25 3
                             |> filled (rgb 204 0 0)
                             |> move (6, -15)
                             |> rotate (degrees 0)
                          --Left Leg--
                         , roundedRect 6 25 3
                             |> filled (rgb 204 0 0)
                             |> move (-6, -15)
                             |> rotate (degrees 0)
                             ]

        myBackground = square 200 |> filled green

    in (("DazzlingCarrot",myWord,"6"),("Scarecrow","given to Henderson",myShapes))

  ,    let
        myWord = "sun"
        myCode = 810

        myShapes model = [ group [ myCircle
                         , myCircleOutline
                         , myTriangle
                         |> move (1,1.5*cos(2*model.time))
                         , myEye
                         |> move (1,4)
                         , myEye
                         |> move (18,4)
                         , mySmile
                         ] |> scale 1.2 ]

        myBackground = square 200 |> filled lightBlue

        myCircle = group [circle 10
                         |> filled (rgb 255 215 0)
                         |> scaleX 2.5
                         |> scaleY 2.5
                         ]

        myCircleOutline = group [ circle 10
                                |> outlined (solid 2) (rgb 255 165 0)
                                |> scaleX 2.5
                                |> scaleY 2.5
                                ]

        myTriangle = group [circle 10
                           |> outlined (dotted 4) (rgb 255 165 0)
                           |> scaleX 3
                           |> scaleY 3
                           ]

        myEye = group [ rect 3 7
                      |> filled black
                      |> scaleX 1
                      |> scaleY 1
                      |> move (-10,0)
                      ]

        mySmile = group [curve (0,0) [Pull (18,10) (20,-10)]
                        |> filled black
                        |> rotate (degrees -154)
                        |> move (11,-5)
                        ]



    in (("CharmingBeetle",myWord,"6"),("Sun","given to Henderson",myShapes))

  ,    let
        myWord = "hat"
        myCode = 658

        myShapes model = [ myBackground ,

                       rect 20 60
                      |> filled black
                      |> rotate (degrees -90)
                      |> move (0,-15)

                      ,

                      square 20
                      |> filled black
                      |> scale 1.5
                      |> scaleX 1.5
                      |> scaleY 1.5
                      |> rotate (degrees -90)

                         ]

        myBackground = square 200 |> filled white
    in (("CleanBramble",myWord,"6"),("hat","given to Henderson",myShapes))

  ,    let
        myWord = "crayon"
        myCode = 584

        myShapes model = [ myBackground
                         , crayon
                         , crayontip
                         , detail
                         , bottomdetail
                         ]

        myBackground = square 200 |> filled (rgb 137 255 0)

        crayon = rect 20 65
          |> filled white
          |> scale 1
          |> rotate (degrees 0)
          |> move (-3,-15)

        crayontip = triangle 20
          |> filled white
          |> scale 0.6
          |> rotate (degrees 90)
          |> move (-3,24)

        detail = rect 20 95
          |> filled black
          |> scale 0.2
          |> rotate (degrees 90)
          |> move (-3,16)

        bottomdetail = rect 20 95
          |> filled black
          |> scale 0.2
          |> rotate (degrees 90)
          |> move (-3,-45)
    in (("SturdySheep",myWord,"6"),("The lonely crayon nobody uses","given to LincolnAlexander",myShapes))

  ,    let
        myWord ="haircut" -- put your work here (in quotes) --
        myCode =656 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [ myBackground
                          ,circle 18
                          |> filled lightBrown
                          ,oval 5 7
                          |> filled (rgb 50 50 200)
                          |> rotate (degrees -90)
                          |> move (-30,-25)
                          ,oval 5 7
                          |> filled (rgb 50 50 200)
                          |> rotate (degrees -90)
                          |> move (-30,-30)
                          ,oval 3 5
                          |> filled pink
                          |> rotate (degrees -90)
                          |> move (-30,-30)
                          ,oval 3 5
                          |> filled pink
                          |> rotate (degrees -90)
                          |> move (-30,-25)
                          , rect 2 9
                          |> filled darkGray
                          |> rotate (degrees -60)
                          |> move (-23,-24)
                          , rect 2 9
                          |> filled darkGray
                          |> rotate (degrees -120)
                          |> move (-23,-30)
                          , rect 2 25
                          |> filled brown
                          |> move (25,-30)
                          |> rotate (degrees -150)
                          , rect 3 23
                          |> filled brown
                          |> rotate (degrees -120)
                          |> move (27,-29)
                          , rect  2 24
                          |> filled brown
                          |> rotate (degrees -240)
                          |> move (24,-32)
                          , rect  3 20
                          |> filled brown
                          |> rotate (degrees -240)
                          |> move (22,-27)
                          , rect  5 8
                          |> filled brown
                          |> move (-15,0)
                          , rect  5 10
                          |> filled brown
                          |> move (-10,7)
                          , rect  5 9
                          |> filled brown
                          |> move (-12,6)
                          , rect 20 10
                          |> filled brown
                          |> move (-4,12)
                          , rect 12 25
                          |> filled brown
                          |> move (13,5)
               ] |> scale 1.2 ]


        myBackground = square 200 |> filled pink
    in (("TallSparrow",myWord,"6"),("haircut amateur","given to LincolnAlexander",myShapes))

  ,    let
        myWord = "lamp"
        myCode = 691

        myShapes model = [ myBackground
                         , shade
                         , stand
                         , light
                         ]

        myBackground = square 200 |> filled (rgb 0 17 255)

        shade = triangle 10
          |> filled darkGray
          |> scale 3
          |> makeTransparent 0.5
          |> rotate (degrees 90)

        stand = rect 10 35
          |> filled red
          |> scale 1.5
          |> move (0,-30)

        light = circle 10
          |> filled lightYellow
          |> scale 1
    in (("StudiousShark",myWord,"6"),("Totally a Lit Lamp","given to LincolnAlexander",myShapes))

  ,    let
        myWord ="tree" -- put your work here (in quotes) --
        myCode = 576-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                           ,myrect |> scale 1.2

                         ]

        myBackground = square 200 |> filled blue

        myrect = group [rect 10 55

          |> filled (rgb 230 125 50)
          |> move (0,-12)
          ,triangle 10
          |> filled lightGreen
          |> scale 2
          |> scaleY 2
          |> rotate (degrees -270)
          |> makeTransparent 0.5
          ,triangle 10
          |> filled lightGreen
          |> scale 2
          |> scaleY 2
          |> rotate (degrees -270)
          |> makeTransparent 0.5
          |> move(0,20)
          ]
    in (("SilentRabbit",myWord,"6"),("tree","given to LincolnAlexander",myShapes))

  ,    let
        myWord = "jeans"-- put your work here (in quotes) --
        myCode = 679-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground

                        ,myJeans |> scale 3 |> move (-18,0)

                         ]
        myBackground = square 200 |> filled pink

        myJeans = group [rect 10 25
                          |> filled lightBlue
                          |> rotate (degrees 10)
                          |> move (10,0)
                         ,rect 10 25
                          |> filled lightBlue
                          |> rotate (degrees -10)
                          ]
    in (("SecretivePomegranate",myWord,"6"),("bob the butler jeans","given to LincolnAlexander",myShapes))

  ,    let
        myWord ="snow" -- put your work here (in quotes) --
        myCode = 788 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground

                         ,circle 5

                          |> filled white
                          |> move (5*sin(80*model.time+1), 40*sin(80*model.time))
                          |> scale 1

                          ,circle 5

                          |> filled white
                          |> move (-40*cos(80*model.time+2), 40*sin(80*model.time+3))
                          |> scale 1
                          ,circle 5

                          |> filled white
                          |> move (40*sin(80*model.time+4), 40*sin(80*model.time+5))
                          |> scale 1

                          ,circle 5

                          |> filled white
                          |> move (-20*cos(80*model.time+6), 40*sin(80*model.time+7))
                          |> scale 1

                          ,circle 5

                          |> filled white
                          |> move (25, 80*sin(5*model.time+8))
                          |> scale 1

                          ,circle 5

                          |> filled white
                          |> move (-40, 40*sin(40*model.time+9))
                          |> scale 1


                          ]
        myBackground = square 200 |> filled darkGrey
    in (("CourageousCamphor",myWord,"6"),("Snow","given to Henderson",myShapes))

  ,    let
        myWord = "doctor"
        myCode = 602

        myShapes model = [ myBackground
                     ,group [aCircle
                     ,tinyCircle
                     ,bob
                     ,yohi |> move (-5, 0)
                     ,yohi |> move (7,0)
                      ,allo  ] |> scale 2 ]

        myBackground = square 200 |> filled lightBrown
        aCircle= circle 10
          |> filled lightYellow
          |> scale 2
        tinyCircle=circle 20
          |> filled lightBlue
          |> scaleX 0.2
          |>rotate ( degrees 90)
         |> move (0,20)
        bob= circle  1
          |> filled black
          |> move (50,-5)

        yohi=circle 3
          |> filled black
           |> move (0,0)
        allo= curve (5,0) [Pull (10,0) (20,-10)]
          |> filled pink
          |> rotate (degrees 30)
          |> move (-5,-10)
    in (("ThankfulStarfish",myWord,"6"),("The doctor that needs a doctor","given to LincolnAlexander",myShapes))

  ,    let
        myWord = "lock"
        myCode = 697

        myShapes model = [ myBackground
                         , group [rect 10 15
                           |> filled yellow
                           |> scale 2
                           |> scaleX 2

                           ,curve (0,0) [Pull (-22,44) (-40,0) ]
                           |> filled darkGrey
                           |> move (20, 15)

                           ,curve (0,0) [Pull (-16,31) (-32,0)]
                           |> filled white
                           |> move (16, 15)

                           ,circle 3
                           |> filled black

                           ,triangle 5
                           |> filled black
                           |> rotate (degrees -30)
                           |> move (0,-5) ] |> scale 1.5 |> move (0,-10)
                         ]

        myBackground = square 200 |> filled white
    in (("CheerfulBoar",myWord,"6"),("Lock","given to Henderson",myShapes))

  ,    let
        myWord = "sun"
        myCode = 810

        myShapes model = [ myBackground
                         ,circle 10
                         |> filled yellow
                         |> scale 3
                         ]

        myBackground = square 200 |> filled (rgb 255 153 95)
    in (("ShiningPoppy",myWord,"6"),("The Amazing SUn","given to LincolnAlexander",myShapes))

  ,    let
        myWord = "cherry"
        myCode = 634

        myShapes model = [ myBackground
                        , leftcherry
                        , rightcherry
                        , leftstem
                        , rightstem
                         ]

        myBackground = square 200 |> filled (rgb 226 249 24)

        leftcherry = circle 10
          |> filled darkRed
          |> scale 1.75
          |> move (-27,-20)

        rightcherry = circle 10
          |> filled darkRed
          |> scale 1.75
          |> move (14,-20)

        leftstem = curve (0,0) [Pull (10,0) (20,-10)]
          |> filled darkBrown
          |> scale 2.5
          |> rotate (degrees 92) |> move (-25,-10)

        rightstem = curve (0,0) [Pull (10,0) (20,-10)]
          |> filled darkBrown
          |> scale 2.5
          |> rotate (degrees 135)
          |> move (15,-10)


    in (("SturdySheep",myWord,"6"),("unrealistically round cherries","given to LincolnAlexander",myShapes))

  ,    let
        myWord = "rake"
        myCode = 756

        myShapes model = [ myBackground
                         , rakehandle
                         , rakething1
                         , rakething2
                         , rakething3
                         ]

        myBackground = square 200 |> filled (rgb 255 171 0)

        rakehandle = rect 10 100
          |> filled darkBrown
          |> scale 0.75
          |> move (0, 10)

        rakething1 = rect 10 100
          |> filled green
          |> scale -0.25
          |> move (0,-35)

        rakething2 = rect 10 100
          |> filled green
          |> scale -0.25
          |> rotate (degrees 20) |> move (5,-35)

        rakething3 = rect 10 100
          |> filled green
          |> scale -0.25
          |> rotate (degrees 140) |> move (-5,-32)
    in (("StudiousShark",myWord,"6"),("A Rake That Works","given to LincolnAlexander",myShapes))

  ,    let
        myWord =  "giraffe"
        myCode = 642 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                          ,myWedge
                         ]

        myBackground = square 200 |> filled (rgb 183 249 213)

        myWedge = group [wedge 10 0.75
                         |> filled yellow
                         |> move (-20,17)
                         ,rect 2.5 15
                         |> filled yellow
                         |> move (-15,32)
                         ,oval 5 5
                         |> outlined (solid 1) yellow
                         |> move (-18,39)
                         ,oval 1.5 1.5
                         |> filled black
                         |> move (-18,39)
                         ,rect 6 70
                         |> filled yellow
                         |> move (-17,-8)
                         ,rect 38 20
                         |> filled yellow
                         |> move (0,-19)
                         ,rect 6 10
                         |> filled yellow
                         |> move (-7,-31)
                         ,rect 6 10
                         |> filled yellow
                         |> move (16,-31)
                         ,rect 6 16
                         |> filled yellow
                         |> move (7,-34.5)
                         ,curve (0,0) [Pull (10,0) (20,-10)]
                         |> filled yellow
                         |> rotate (degrees 42)
                         |> move (15,-15)
                         ,roundedRect 10 10 5
                         |> filled black
                         |> scale 0.5
                         |> move (0,-14)
                          ,roundedRect 10 10 5
                         |> filled black
                         |> scale 0.5
                         |> move (-10,-19)
                         ,roundedRect 10 10 5
                         |> filled black
                         |> scale 0.5
                         |> move (4,-22)
                           ,roundedRect 10 10 5
                         |> filled black
                         |> scale 0.5
                         |> move (12,-17)
                           ,roundedRect 10 10 5
                         |> filled black
                         |> scale 0.5
                         |> move (-15.5,-13)
                           ,roundedRect 10 10 5
                         |> filled black
                         |> scale 0.5
                         |> move (-16,-1)
                         ,roundedRect 10 10 5
                         |> filled black
                         |> scale 0.5
                         |> move (-16,-28)
                          ,roundedRect 10 10 5
                         |> filled black
                         |> scale 0.5
                         |> move (16,-28)
                          ,roundedRect 10 10 5
                         |> filled black
                         |> scale 0.5
                         |> move (-15,21)
                         ]
    in (("ShiningPoppy",myWord,"6"),("Shazib's Amazing Giraffe","given to LincolnAlexander"

       ,myShapes))

  ,    let
        myWord = "mint" -- put your work here (in quotes) --
        myCode =712 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                          ,myCircle,myoval,myshape,mything,myfun,myboring
                          ]


        myBackground = square 200 |> filled blue

        myCircle = group [circle 20
                           |> filled white
                           |> scale 2
                           ]
        myoval = group     [oval 5 5
                           |> filled red
                           ]
        myshape = group     [oval 5 5
                           |> filled red
                           |> move (30,20)
                           ]
        mything =group     [oval 5 5
                           |> filled red
                           |> move (-20,-30)
                           ]

        myfun = group      [oval 5 5
                           |> filled red
                           |> move (15,-29)
                           ]


        myboring =group    [oval 5 5
                           |> filled red
                           |> move (-30,7)
                           ]




    in (("SafePlatypus",myWord,"6"),("the mint","given to LincolnAlexander",myShapes))

  ,    let
        myWord = "game"
        myCode = 638

        myShapes model = [ myBackground
                         , square 10
                             |> filled blue
                             |> rotate model.time
                         ,mycat model,mydog model,myDog model,myCat model

                         ]

        myBackground = square 200 |> filled red

        mycat model = group[rect 3 12
                      |> filled orange
                      |> scale 2
                      |> scaleX 2
                      |> scaleY 2
                      |> rotate (degrees model.time * 10)
                      |> move (20,40)]
        mydog model =triangle 10
          |> filled gray
          |> scale 2
          |> scaleX 2
          |> rotate (degrees model.time * 55 )
          |> move (30,40)
        myDog model = triangle 10
          |> filled gray
          |> scale 2
          |> scaleX 2
          |> rotate (degrees model.time *200 )
          |> move (30,-20)
        myCat model =triangle 10
          |> filled gray
          |> scale 2
          |> scaleX 2
          |> rotate (degrees model.time* 25)
          |> move (-40,0)



    in (("StrongSesame",myWord,"6"),("game","given to LincolnAlexander",myShapes))

  ,    let
        myWord = "toe"
        myCode = 822

        myShapes model = [ myBackground
                          , bigtoe
                          , bigtoenail
                          ,foot
                         ]

        myBackground = square 200 |> filled blue

        bigtoe = roundedRect 10 15 10
          |> filled yellow
          |> scale 1.5

        bigtoenail = roundedRect 10 15 10
          |> filled darkRed
          |> scale 1.25
          |> move (0,5)

        foot = roundedRect 10 15 5
          |> filled yellow
          |> scale 4
          |> move (5,-35)

    in (("StudiousShark",myWord,"6"),("The One-Toed Lady","given to LincolnAlexander"

       ,myShapes))

  ,    let
        myWord = "pen"
        myCode = 735

        myShapes model = [ myBackground
                         , pen1
                         , pentip
                         ]

        myBackground = square 200 |> filled white

        pen1 = rect 10 45
          |> filled (rgb 0 0 255)
          |> scale 1.75
          |> rotate (degrees 30)

        pentip = triangle 10
          |> filled black
          |> scale 1.25
          |> rotate (degrees 75)
          |> move (25,-35)




    in (("StudiousShark",myWord,"6"),("Non-Functioning Pen","given to LincolnAlexander"

       ,myShapes))

  ,    let
        myWord = "father"
        myCode =  620

        myShapes model = [ myBackground
                         , head
                         , body
                         , rightarm
                         , leftarm
                         ,eye
                         ,lefteye
                         ,mouth
                         ]

        myBackground = square 200 |> filled (rgb 26 238 238)

        head = circle 10
          |> filled lightOrange
          |> scale 2
          |> move (-2,2)

        body = rect 10 25
          |> filled darkGreen
          |> scale 3
          |> move (-2,-57)

        rightarm = rect 10 25
          |> filled darkGreen
          |> scaleY 2
          |> rotate (degrees 30)
          |> move (5,0)
        leftarm = rect 10 25
          |> filled darkGreen
          |> scaleY 2
          |> rotate (degrees 170)
          |> move (-24,-43)

        eye = circle 10
          |> filled black
          |> move (8,10)
          |> scale -0.25

        lefteye = circle 10
          |> filled black
          |> scale -0.25
          |> move (-20,1)

        mouth = curve (0,0) [Pull (10,0) (20,-10)]
          |> filled black
          |> scale 1
          |> rotate (degrees 50)
          |> move (-12,-15)
    in (("SturdySheep",myWord,"6"),("Embarrassing father","given to LincolnAlexander",myShapes))

  ,    let
        myWord = "twig"
        myCode = 836
        myShapes model = [ myBackground
                         ,myAwesomeTwig
                         ,myNewTwig
                         ,myNewestTwig


                         ]

        myBackground = square 200 |> filled green
        myAwesomeTwig = rect 2 35

                 |> filled darkBrown
                        |> scale 2

        myNewTwig = rect 4 20
          |> filled darkBrown
         |> rotate (degrees 30) |> move (-5,0)

        myNewestTwig= rect 4 25
          |> filled darkBrown
          |> move (7,15)
          |> rotate (degrees -30)
    in (("ThoughtfulStrawberry",myWord,"6"),("wilbert the twig","given to LincolnAlexander",myShapes))

  ,    let
        myWord = "bat"
        myCode = 520

        myShapes model = [ myBackground
                         , group [leftears,
                         rightears,
                         head,
                         body,
                         rightwing
                         |> scale (abs(sin(model.time))),
                         leftwing
                         |> scale (abs(sin(model.time))),
                         lefteyes,
                         righteyes,
                         leftpupil,
                         rightpupil
                         ] |> scale 1.5 |> move (0,-15)]

        leftears = group [curve (0,0) [Pull (9,-7) (0,0), Pull (3,-13) (0,0), Pull (4,-17) (16,-7)]
          |> filled black
          |> rotate (degrees -1470)
          |> move (-11,35)
          ]

        rightears = group [curve (0,0) [Pull (-9,-7) (0,0), Pull (-3,-13) (0,0), Pull (-4,-17) (-16,-7)]
          |> filled black
          |> rotate (degrees -1770)
          |> move (11,35)
          ]

        head = group [circle 10
          |> filled black
          |> scale 1
          |> scaleX 1
          |> scaleY 1
          |> move (0,20)
          ]

        body = group [curve (0,0) [Pull (-10,-26) (0,-26), Pull (10,-26) (0,0) ]
          |> filled black
          |> scale 1.25
          |> scaleX 1.25
          |> scaleY 1.25
          |> move (0, 25)
          ]

        rightwing = group [curve (0,0) [Pull (50,62) (58,-15), Pull (40,8) (0,0) ]
          |> filled black
          |> scale 0.75
          |> scaleX 0.75
          |> scaleY 0.75
          |> move (0,2)
          ]

        leftwing = group [curve (0,0) [Pull (-50,62) (-58,-15), Pull (-40,8) (0,0) ]
          |> filled black
          |> scale 0.75
          |> scaleX 0.75
          |> scaleY 0.75
          |> move (0,2)
          ]

        lefteyes = group [roundedRect 10 15 5
          |> filled white
          |> scale 0.7
          |> scaleX 0.7
          |> scaleY 0.7
          |> move (-3, 20)
          ]

        righteyes = group [roundedRect 10 15 5
          |> filled white
          |> scale 0.7
          |> scaleX 0.7
          |> scaleY 0.7
          |> move (3, 20)
          ]

        leftpupil = group[circle 10
          |> filled black
          |> scale 0.3
          |> scaleX 0.3
          |> scaleY 0.3
          |> move (-3, 20)
          ]

        rightpupil = group[circle 10
          |> filled black
          |> scale 0.3
          |> scaleX 0.3
          |> scaleY 0.3
          |> move (3, 20)
          ]

        myBackground = square 200 |> filled white
    in (("ComfortableBumblebee",myWord,"6"),("bat","given to Henderson",myShapes))

  ,    let
        myWord = "ball"
        myCode = 514



        myShapes model = [ myBackground
                         , myBall
                         |> move(-40*sin(10*model.time),-5*sin(model.time))
                         , myTableTop
                         , myTableLegs
                         |> move(-40,-50)
                         , myTableLegs
                         |> move(40, -50)

                         ]

        myBackground = square 200 |> filled white

        myBall = group [ circle 10
                         |> filled (rgb 220 20 60)
                         |> move (0,-10)
                       ]
        myTableTop = group [rect 100 20
                          |> filled (rgb 139 69 19)
                          |> move(0, -30)
                       ]

        myTableLegs = group[rect 20 40
                          |> filled (rgb 139 69 19)
                       ]





    in (("CautiousBeaver",myWord,"6"),("Ball","given to Henderson",myShapes))

  ,    let
        myWord = "ladybug"
        myCode = 689

        myShapes model = [ myBackground

                         ,
                           roundedRect 8 14 5
                            |> filled black
                            |> rotate (degrees -200)
                            |> move (-18,-25)


                           ,

                            roundedRect 8 14 5
                            |> filled black
                            |> rotate (degrees -200)
                            |> move (18,25) ,


                         circle 1
                             |> filled lightRed
                             |> rotate model.time
                             |> scale 30 ,

                            circle 3
                              |> filled black
                              |> scale 1 ,

                             circle 3
                             |> filled black
                             |> scale 1
                             |> move (-20,2) ,

                             circle 3
                             |> filled black
                             |> scale 1
                             |> move (-12,-15) ,

                             circle 3
                             |> filled black
                             |> scale 1
                             |> move (12,15) ,

                             circle 3
                             |> filled black
                             |> scale 1
                             |> move (18,-15) ,

                            oval 14 18
                            |> filled black
                            |> scale -2
                            |> rotate (degrees -570)
                            |> move (-30,20) ,

                            circle 1.5
                            |> filled white
                            |> scale 1
                            |> move (-34,14) ,


                            circle 1.5
                            |> filled white
                            |> scale 1
                            |> move (-29,26)

                         ]

        myBackground = square 200 |> filled blank
    in (("CleanBramble",myWord,"6"),("Ladybug","given to Henderson",myShapes))

  ,    let
        myWord = "light" -- put your work here (in quotes) --
        myCode = 694 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , myLight |> scale 1.8
                           |> move (0,-23)


                         ]
        myBottom = roundedRect 10 15 5
                |> filled gray
                |> scaleX 2


        myLight = group [
                        roundedRect 8 10 3
                          |> filled gray
                          |> scaleX 2
                          |> move (0,-6)
                        ,roundedRect 6 10 3
                          |> filled lightCharcoal
                          |> scaleX 2
                          |> move (0,-9)
                         ,roundedRect 8 10 3
                          |> filled gray
                          |> scaleX 2
                          |> move (0,-6)
                         ,roundedRect 10 15 3
                          |> filled (rgb 255 216 50)
                          |> scaleX 2
                          |> scaleY 2
                          |> move (0,10)

                        ,circle 12
                          |> filled (rgb 255 216 50)
                          |> scaleX 1.5
                          |> scaleY 1.5
                          |> move (0,19)
                        ,rect 1 10
                          |> filled charcoal
                          |> move (-3,0)
                        ,rect 1 10
                          |> filled charcoal
                          |> move (3,0)
                        ,rect 1 8
                          |> filled charcoal
                          |> rotate (degrees 30) |> move (-4.7,7.5)
                        ,rect 1 8
                          |> filled charcoal
                          |> move (4.7,7.5)
                          |>rotate (degrees -30)
                         ,rect 1 13
                          |> filled charcoal
                          |> rotate (degrees 90) |> move (-0.3,10.5)

                        ]


        myBackground = square 200 |> filled pink
    in (("CaringBear",myWord,"6"),("Light","given to Henderson",myShapes))

  ,    let
        myWord = "watch"
        myCode = 1000

        myShapes model = [ myBackground
                   , rect 10 15
                      |> filled black
                      |> scale 2
                      |> scaleY 4
                   , circle 10
                      |> filled white
                      |> scale 1.5
                      |> scaleX 1.5
                      |> scaleY 1.5
                   , circle 10
                      |> outlined (solid 1) black
                      |> scale 1.5
                      |> scaleX 1.5
                      |> scaleY 1.5
                   , text "Rolex"
                      |> filled black
                      |> scale 0.4
                      |> move (-5, 10)
                   ,  rect 10 15
                      |> filled black
                      |> scale 0.2
                      |> scaleY 2
                      |> move (0, 20)
                   ,  rect 10 15
                      |> filled black
                      |> scale 0.2
                      |> scaleY 2
                      |> rotate (degrees -45)
                      |> move (10, 16)
                   ,  rect 10 15
                      |> filled black
                      |> scale 0.2
                      |> scaleY 2
                      |> rotate (degrees -65)
                      |> move (18, 8)
                   ,  rect 10 15
                      |> filled black
                      |> rotate (degrees 90)
                      |> scale 0.2
                      |> scaleY 2
                      |> move (20, 0)
                   ,  rect 10 15
                      |> filled black
                      |> scale 0.2
                      |> scaleY 2
                      |> rotate (degrees 45)
                      |> move (10, -16)
                   ,  rect 10 15
                      |> filled black
                      |> scale 0.2
                      |> scaleY 2
                      |> rotate (degrees 65)
                      |> move (18, -8)
                   ,  rect 10 15
                      |> filled black
                      |> rotate (degrees 90)
                      |> scale 0.2
                      |> scaleY 2
                      |> move (-20, 0)
                   ,  rect 10 15
                      |> filled black
                      |> scale 0.2
                      |> scaleY 2
                      |> rotate (degrees -45)
                      |> move (-10, -16)
                   ,  rect 10 15
                      |> filled black
                      |> scale 0.2
                      |> scaleY 2
                      |> rotate (degrees -65)
                      |> move (-18, -8)
                   ,  rect 10 15
                      |> filled black
                      |> scale 0.2
                      |> scaleY 2
                      |> move (0, -20)
                   ,  rect 10 15
                      |> filled black
                      |> scale 0.2
                      |> scaleY 2
                      |> rotate (degrees 45)
                      |> move (-10, 16)
                   ,  rect 10 15
                      |> filled black
                      |> scale 0.2
                      |> scaleY 2
                      |> rotate (degrees 65)
                      |> move (-18, 8)
                   ,  rect 10 15
                      |> filled darkGray
                      |> scaleX 0.2
                      |> move (6, 4)
                      |> rotate (degrees -58)
                   ,  rect 10 15
                      |> filled darkGray
                      |> scaleY 1.5
                      |> scaleX 0.2
                      |> move (6, -8)
                      |> rotate (degrees -145)
                   ,  circle 10
                      |> filled darkGray
                      |> scale 0.2
                   ]

        myBackground = square 200 |> filled lightCharcoal

    in (("CuddlyCantaloupe",myWord,"6"),("watch","given to Henderson",myShapes))

  ,    let
        myWord = "sea"
        myCode = 772

        myShapes model = [ myBackground
                         , mySea
                            |> move (sin (2*model.time), sin (model.time))
                         , rect 100 55
                            |> filled darkBlue
                            |> move (0,-30)
                         , myFish
                            |> move (sin (100*model.time), 0)
                         ]

        mySea = group    [
                        triangle 10
                            |> filled darkBlue
                            |> rotate (degrees 90)
                            |> move (-40, -3)
                        ,triangle 10
                            |> filled darkBlue
                            |> rotate (degrees 90)
                            |> move (-20, -3)
                        ,triangle 10
                            |> filled darkBlue
                            |> rotate (degrees 90)
                            |> move (0, -3)
                        ,triangle 10
                            |> filled darkBlue
                            |> rotate (degrees 90)
                            |> move (20, -3)
                        ,triangle 10
                            |> filled darkBlue
                            |> rotate (degrees 90)
                            |> move (40, -3)
                        ]

        myFish = group  [
                        triangle 10
                            |> filled orange
                            |> move (-10, -30)
                        , circle 10
                            |> filled orange
                            |> move (0, -30)
                        , circle 2
                            |> filled black
                            |> move (5, -25)
                        ]


        myBackground = square 200 |> filled white
    in (("CleverBreadfruit",myWord,"6"),("Sea","given to Henderson",myShapes))

  ,    let
        myWord = "apple"
        myCode = 508

        myShapes model = [ myBackground
                         , group [myApple
                         , myApple
                         |> move (10, 0)
                         , myStem
                         , myLeafStem
                         , myLeaf
                         , myLeaf2
                         ] |> scale 2 |> move (10,-5)]

        myBackground = square 200 |> filled lightBlue

        myApple = group [ oval 10 15
                        |> filled red
                        |> scale 1.5
                        |> scaleX 1.5
                        |> scaleY 1.5
                        |> move (-10, 0)
                        ]

        myStem = group [rect 7 10
                       |> filled darkBrown
                       |> scaleY 0.25
                       |> rotate (degrees -90)
                       |> move (-5,18.5)
                       ]

        myLeafStem = group [rect 3 10
                           |> filled black
                           |> scaleY 0.05
                           |> rotate (degrees 30)
                           |> move (-2.5,18.5)
                           ]

        myLeaf = group [circle 10
                       |> filled darkGreen
                       |> scaleX 0.25
                       |> scaleY 0.25
                       |> move (0.2,20)
                       ]

        myLeaf2 = group [triangle 10
                        |> filled darkGreen
                        |> scaleX 0.25
                        |> scaleY 0.25
                        |> move (3,20)
                        ]






















    in (("CharmingBeetle",myWord,"6"),("Apple","given to Henderson",myShapes))

  ,    let
        myWord = "banana"
        myCode = 516

        myShapes model = [ myBackground
                      , group [curve (0,0) [Pull (31,-23) (-1,-61), Pull (9,-27) (0,0) ]
                           |> filled yellow
                           |> move (6,24)

                          ,rect 4 6
                           |> filled darkBrown
                           |> move (7, 25)
                         ] |> scale 1.2 |> move (-15,0) ]

        myBackground = square 200 |> filled white
    in (("CheerfulBoar",myWord,"6"),("Banana","given to Henderson",myShapes))

  ,    let
        myWord = "lamp"
        myCode = 691

        myShapes model = [ myBackground
                    , rect 20 55
                    |> filled black
                    , rect 30 35
                    |> filled yellow
                    |> move (0, 30)
                    , rightTriangle 25 35
                    |> filled yellow
                    |> move (15, 13)
                    , rightTriangle -25 35
                    |> filled yellow
                    |> move (-15, 13)
                    , rect 2 25
                    |> filled black
                    |> move (20, 1)
                    , oval 5 5
                    |> filled darkBrown
                    |> move (20, -10)
                   ]

        mySquare = square 10
                     |> filled pink
                     |> makeTransparent 0.5  -- value between 0 and 1
        myBackground = square 200 |> filled pink
    in (("CuriousCaper",myWord,"6"),("Lamp","given to Henderson",myShapes))

  ]
