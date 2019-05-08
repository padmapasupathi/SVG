module Wrd1526642931059256 exposing(words)
import GraphicSVG exposing(..)
words = [
      let
        myWord = "morning"
        myCode = 653

        myShapes model = [myBackground, sun|> move (0, (6*(model.time))), ocean ]


        myBackground = square 200 |> filled darkOrange
        ocean = group [rect 20 70
          |> filled darkBlue
          |> scale 3
          |> rotate (degrees -450)
          |> move (0,-60),
          curve (0,0) [Pull (10,0) (20,-10)]
          |> filled darkBlue
          |> scale 3
          |> rotate (degrees 30)
          |> move (18,-34),
          curve (0,0) [Pull (10,0) (20,-10)]
          |> filled darkBlue
          |> scale 3
          |> rotate (degrees 30)
          |> move (-19,-34),
          curve (0,0) [Pull (10,0) (20,-10)]
          |> filled darkBlue
          |> scale 3
          |> rotate (degrees 30)
          |> move (-72,-34),
          curve (0,0) [Pull (10,0) (20,-10)]
          |> filled darkBlue
          |> scale 3
          |> rotate (degrees 30)
          |> move (-100,-34)]
        sun = group [circle 20
          |> filled lightYellow
          |> scale 2.25
          |> rotate (degrees 30)
          |> move (0,-35)]
    in (("WoebegoneArmadillo",myWord,"6"),("Sunrise","given to StLuke",myShapes))

  ,    let
        myWord = "Space"
        myCode = 718

        myShapes model = [

         group [square 10
          |> filled black
          |> scale 80

          ,circle 10
          |> filled orange
          |> scale 3
          |> move ( -90 , 0)

          ,circle 10
          |> filled lightOrange
          |> scale 2.7
          |> move ( -90 , 0)

           , group [circle 10
          |> filled lightCharcoal
          |> scale 0.3
          |> move ( -50 , 0)

          ,circle 10
          |> filled (rgb 255 151 74)
          |> scale 0.4
          |> move ( -40 , 0)

          ,circle 10
          |> filled (rgb 0 110 254)
          |> scale 1
          |> move ( -20 , 0)

          ,circle 10
          |> filled green
          |> scale 0.4
          |> move ( -26 , 0)

          , curve (0,0) [Pull (0,34) (40,-4) ]
          |> filled (rgb 0 231 0)
          |> scale 0.34
          |> move (-20 , 5)
          |> rotate 80

          ,curve (0,0) [Pull (-9,7) (18,12) ]
          |> filled (rgb 255 255 255)
          |> makeTransparent 0.5
          |> move (-20 , 6)
          |> rotate 30
          |> scale 0.6

          ,curve (0,0) [Pull (-9,7) (18,12) ]
          |> filled (rgb 255 255 255)
          |> makeTransparent 0.5
          |> move (-26 , -6)
          |> rotate 70
          |> scale 0.5

          ,circle 10
          |> filled (rgb 255 57 71)
          |> scale 0.34
          |> move (-4 , 0)

          ,circle 10
          |> filled (rgb 242 195 149)
          |> scale 2
          |> move (25 , 0)

          ,curve (0,0) [Pull (0,4) (24,4) ]
          |> filled (rgb 255 255 255)
          |> makeTransparent 0.7
          |> move (6, 5)
          |> scale 1.5

          ,curve (0,0) [Pull (0,4) (24,4) ]
          |> filled (rgb 255 255 255)
          |> makeTransparent 0.7
          |> move (6, -7)
          |> scale 1.5

          ,circle 10
          |> filled (rgb 255 87 65)
          |> scale 0.4
          |> move (15 , 5)

          ,circle 10
          |> filled (rgb 223 197 144)
          |> scale 1.9
          |> move (65 , 0)

          ,circle 10
          |> filled (rgb 0 204 210)
          |> move (100 , 0)
          |> scale 1.3

          ,curve (0,0) [Pull (-38,4) (38,4) ]
          |> filled (rgb 255 255 255)
          |> move (50 , 0)

          ,circle 10
          |> filled lightCharcoal
          |> move (-10 , 11)
          |> scale 0.2
          ]
          |> move (-30,0)
          |> rotate (-(model.time * 0.05))
          |> move (50*sin(model.time),50*cos(model.time))
          ]
          |>scale 0.3
          ]
    in (("TimorousWatermelon",myWord,"6"),("Space","given to StLuke",myShapes))

  ,    let
        myWord = "eye"-- put your work here (in quotes) --
        myCode = 583-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , myEye
                         ,curve (0,0) [Pull (29,19) (75,-6), Pull (35,5) (0,0) ]
                            |> filled (rgb 102 51 0)
                            |> move (-40,5*sin(model.time*5)+30)
                         ]

        myBackground = square 200 |> filled pink

        myEye = group [square 10
                    |> filled (rgb 204 153 102)
                    |> scale 15
                    |> scaleX 15
                    |> scaleY 15
                    ,oval 10 15
                    |> filled white
                    |> scale 3
                    |> scaleX 3
                    |> rotate (degrees -540)
                    ,circle 10
                    |> outlined (solid 1) black
                    |> scale 1.25
                    |> scaleX 1.25
                    |> scaleY 1.25
                    |> move (1,2)
                    ,circle 10
                    |> filled lightBlue
                    |> scale 1.24
                    |> scaleX 1.24
                    |> scaleY 1.24
                    |> move (1,2)
                    ,circle 10
                    |> filled black
                    |> scale 1
                    |> scaleX 1
                    |> scaleY 1
                    |> move (1,2)

                    ]
    in (("TinyWhale",myWord,"6"),("eye","given to StLuke",myShapes))

  ,    let
        myWord = "rainstorm" -- put your work here (in quotes) --
        myCode = 688-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                        , stormCloud,
                        rainDrop
                         |> move(0, -30 - 60*(let t = round model.time in model.time - toFloat t))

                         ]

        myBackground = square 200 |> filled white

        stormCloud = group[
          circle 13
          |> filled lightCharcoal
          |> move (-18,23)
          , circle 13
          |> filled lightCharcoal
          |> move (2,23)
          , circle 13
          |> filled lightCharcoal
          |> move (20,23)



         ]

        rainDrop = group[
         triangle 10
          |> filled lightBlue
          |> rotate (degrees -30),
         circle 10
          |> filled lightBlue
          |> move (0,-10)

         ]
    in (("WhisperingAlmond",myWord,"6"),("rainstorm","given to StLuke",myShapes))

  ,    let
        myWord = "plant"
        myCode = 678

        myShapes model = [ myBackground,


            group[
          curve (0,0) [Pull (11,-2) (1,66), Pull (0,0) (0,0), Pull (0,0) (0,0) ]
          |> filled darkBrown,
          curve (0,0) [Pull (1,19) (16,40), Pull (0,0) (0,-16), Pull (0,0) (0,0) ]
          |> filled darkBrown,
          curve (0,0) [Pull (1,19) (-18,41), Pull (0,0) (0,-21), Pull (0,0) (0,0) ]
          |> filled darkBrown,
          curve (0,19) [Pull (0,32) (-25,46), Pull (-25,24) (-11,14), Pull (0,12) (0,29) ]
          |> filled green,
          curve (6,20) [Pull (2,49) (21,52), Pull (6,34) (17,49), Pull (30,19) (9,20) ]
          |> filled green,
          curve (-4,61) [Pull (6,88) (12,51), Pull (-15,39) (9,53), Pull (18,35) (-5,41) ]
          |> filled darkGreen
          ]
          |> move (0,-10)
          |> scale (sin (model.time)+1)
           ,rect 10 20
          |> filled darkRed
          |> scale 2
          |> scaleX 2
          |> move (0,-30)

          ]
        myBackground = square 200 |> filled lightBlue
    in (("AmusedBat",myWord,"6"),("PLANT","given to StLuke",myShapes))

  ,    let
        myWord = "ladybug"
        myCode = 637

        myShapes model = [group[ roundedRect 10 15 5
                  |> filled red
                  |> scale 2.5
            , circle 1
                   |> filled black
                   |> scale 2.5

            , circle 1
                   |> filled black
                   |> scale 2.5
                   |> move (2,10)


             , circle 1
                   |> filled black
                   |> scale 2.5
                   |> move (2,-8)


              , circle 1
                   |> filled black
                   |> scale 2.5
                   |> move (2,-13)


               ,circle 10
                   |> filled black
                   |> scale 1.25
                   |> scaleX 1.25
                   |> scaleY 1.25
                   |> rotate (degrees 30)
                   |> move (2,19)


             ,circle 10
                  |> filled white
                  |> scale -0.25
                  |> move (5,25)

            ,circle 10
                 |> filled white
                 |> scale -0.25
                 |> move (-5,25)
                 ] |> move (0,-4)
                    |> scale (sin model.time)

                         ]

        myword= "ladybug"
        mycode= 637
    in (("BrainyBoar",myWord,"6"),("ladybug","given to StLuke",myShapes))

  ,    let
        myWord = "shape" -- put your work here (in quotes) --
        myCode = 704-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                          ,myDrawing |>rotate (degrees model.time*75)

                         ]

        myBackground = square 200 |> filled (rgb 176 184 185)

        myDrawing = group [ngon 5 10
          |> filled (rgb 249 11 11)
          |> scale 3.5
          |> rotate (degrees 90)
          |> move (3,5),ngon 5 10
          |> filled (rgb 255 111 0)
          |> scale 3
          |> rotate (degrees 90)
          |> move (3,5),ngon 5 10
          |> filled (rgb 236 252 11)
          |> scale 2.5
          |> rotate (degrees 90)
          |> move (3,5),ngon 5 10
          |> filled (rgb 19 252 11)
          |> scale 2
          |> rotate (degrees 90)
          |> move (3,5),ngon 5 10
          |> filled (rgb 11 220 252)
          |> scale 1.5
          |> rotate (degrees 90)
          |> move (3,5),ngon 5 10
          |> filled (rgb 164 11 252)
          |> scale 1
          |> rotate (degrees 90)
          |> move (3,5)
         ]
    in (("WearyAlligator",myWord,"6"),("shape","given to StLuke",myShapes))

  ,    let
        myWord = "dress"--
        myCode = 578-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , circle  5

          |> filled  (rgb 105 150 242)
          |> scale 2
          |> move ( 10 ,15 ),

                    circle 5
          |> filled  (rgb 105 150 242)
          |> scale 2
          |>move ( -10, 15 ),

          curve (34,0) [Pull (-1,-147) (-42,0) ]
          |> filled (rgb 105 150 242)
          |> rotate (degrees 180)
          |> move ( -3 , -55),
          rect 35 6
          |> filled hotPink
          |> move ( 0.10 , 6 )





                         ]

        myBackground = square 200 |> filled white
    in (("WiseApple",myWord,"6"),("Dress","given to StLuke",myShapes))

  ,    let
        myWord = "spoon"
        myCode = 720

        myShapes model = [oval 10 15
          |> filled lightCharcoal
          |> scale 2
          |> rotate (degrees 180)
          |> move (-7,3)
          |> move (0,(4*sin(model.time)))
          ,
          rect 10 35
          |> filled lightCharcoal
          |> scale 1.3
           |> move (-6,30)
           |> move (0,(4*sin(model.time))),
           wedge 10 0.50
          |> filled lightBlue
          |> scale 1.75
          |> rotate (degrees 270)
           |> move (-7,-5)
           |> scale 2]


        myBackground = square 200 |> filled black
    in (("AncientBear",myWord,"6"),("Rebecca's spoon","given to StLuke",myShapes))

  ,    let
        myWord = "goldfish"
        myCode = 605

        myShapes model = [ roundedRect 10 15 5
          |> filled (rgb 255 178 102)
          |> scale 3
          |> rotate (degrees -90)
          |> move (0,(6*sin(model.time))),
          square 10
          |> filled black
          |> scale 0.5
          |> rotate (degrees -90)
          |> move (15,7)
          |> move (0,(6*sin(model.time))),
          triangle 10
          |> filled (rgb 255 178 102)
          |> scale 1.5
          |> rotate (degrees 120)
          |> move (-20,0)
          |> move (0,(6*sin(model.time))),
          curve (0,0) [Pull (18,16) (43,0)]
          |> filled black
          |> rotate (degrees 180)
          |> scale 0.5
          |> move (20,0)
          |> move (0,(6*sin(model.time))),
          triangle 10
          |> filled (rgb 255 178 102)
          |> scale 1.5
          |> rotate (degrees 90)
          |> move (2,19)
          |> move (0,(6*sin(model.time))),
          triangle 10
          |> filled (rgb 255 178 102)
          |> rotate (degrees -90)
          |> move (-2,-19)
          |> move (0,(6*sin(model.time))),
          square 10
          |> filled black
          |> scale 0.5
          |> rotate (degrees -90)
          |> move (-1,7)
          |> move (0,(6*sin(model.time)))

            ]








    in (("AncientBear",myWord,"6"),("spoon","given to StLuke",myShapes))

  ,    let
        myWord = "dog"
        myCode = 575

        myShapes model = [myGroup
                            |>scale 0.5,
          oval 40 10
          |> filled lightBrown
          |> rotate (degrees (10*sin(model.time*10)))
          |> move (-33,4)
          |>scale 0.5
          ]
        myGroup = group[text "Coco"
          |> outlined (dotdash 1) blue
          |> scale 2
          |> move (-60,40), oval 20 55
          |> filled lightBrown
          |> scale 2
          |> rotate (degrees 90)
          |> move (-10,0), circle 10
          |> filled lightBrown
          |> scale 2
          |> rotate (degrees 150)
          |> move (40,0),

         circle 3
          |> filled white
          |> rotate (degrees 150)
          |> move (40,10),
          circle 1.5
          |> filled black
          |> rotate (degrees 150)
          |> move (40,10),
         oval 54 10
          |> filled lightBrown
          |> rotate (degrees 270)
          |> move (-40,-10), oval 60 10
          |> filled lightBrown
          |> rotate (degrees 270)
          |> move (-10,-10),
          curve (0,0) [Pull (26,-23) (18,0) ]
          |> filled (rgb 250 0 0)
          |> move (30,0),
         oval 20 10
          |> filled lightBrown
          |> rotate (degrees 510)
          |> move (40,20)


         ]
        myBackground = square 200 |> filled pink
    in (("TallTuraco",myWord,"6"),("Grade 7","given to StLuke",myShapes))

  ,    let
        myWord = "mask"
        myCode = 648
        myShapes model = [group [oval 40 55
          |> filled lightGreen
          |> scale 2.3
          ,circle 40
          |> filled black
          |> scale 0.25
          |> move (-20,20)
          ,circle 40
          |> filled black
          |> scale 0.25
          |> move (20,20)
          ,roundedRect 10 100 15
          |> filled black
          |> scale 1
          |> rotate (degrees 90)
          |> move (0,-10)
          ,roundedRect 10 100 15
          |> filled black
          |> scale 1.25

         ] |> scale 0.8 ]



    in (("TimidWasabi",myWord,"6"),("the mask","given to StLuke",myShapes))

  ,    let
        myWord = "mice" -- put your work here (in quotes) --
        myCode =652 -- put your code number here, which came with your word (not in quotes) --
        myShapes model = [ body,
                           head



                        ]

        body = group [ circle 20
          |> filled (rgb 230 125 50)

          ]

        head = group [ circle 10
          |> filled (rgb 55 55 55)
          |> move (20,20)
          , circle 10
          |> filled (rgb 55 55 55)
          |> move (-20,20)
          , circle 4
          |> filled (rgb 255 255 255)
          |> move (-12,0)
          ,circle 4
          |> filled (rgb 255 255 255)
          |> move (12,0)
          , triangle 5
          |> filled (rgb 55 55 55)
          |> rotate (degrees 30)
          |> move (0,-5)
          , circle 1
          |> filled (rgb 0 0 0)
          |> move (-12,0)
          ,circle 1
          |> filled (rgb 0 0 0)
          |> move (12,0)
          ,  curve (-10,0) [Pull (-27,-22) (-42,-1), Pull (-27,-22) (-10,0) ]
          |> outlined (solid 1) pink
          |>scale 0.5
          |> move (13,-11)



          ]


    in (("WhisperingAlmond",myWord,"6"),("mice","given to StLuke",myShapes))

  ,    let
        myWord = "tree"-- put your work here (in quotes) --
        myCode = 750-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ group [rect 10 15
                         |> filled darkBrown
                         |> scale 2
                         |> move (-1,-20)

                         ,circle 10
                         |> filled green
                         |> scale 2
                         |> move (-1,12)

                         ,circle 10
                         |> filled green
                         |> scale 1
                         |> move (-5,30)

                         ,circle 10
                         |> filled green
                         |> scale 1
                         |> move (5,30)

                         ,circle 10
                         |> filled green
                         |> scale 1
                         |> move (12,20)

                         ,circle 10
                         |> filled green
                         |> scale 1
                         |> move (-15,20)

                          ,circle 10
                         |> filled green
                         |> scale 1
                         |> move (-15,5)

                          ,circle 10
                         |> filled green
                         |> scale 1
                         |> move (14,5)
                         ] |> scale 1.1

                         ]

        myBackground = square 200 |> filled pink
    in (("WonderfulAsh",myWord,"6"),("Tree","given to StLuke",myShapes))

  ,    let
        myWord = "juice"-- put your work here (in quotes) --
        myCode = 633
        -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [rect 15 20
          |> filled orange
          |> scale 2
          |> move (-1,-15)


          ,rect 5 15
          |> filled gray
          |> scale 2
          |> move (-1,20)

          ,rect 15 20
          |> filled yellow
          |> scale 1
          |> move (-1,-15)
          ]

        myBackground = square 200 |> filled pink
    in (("WonderfulAsh",myWord,"6"),("Juice","given to StLuke",myShapes))

  ,    let
        myWord = "Butterfly"
        myCode = 504
        myShapes model = [  myBackground

                   ,group[ roundedRect 50 15 20
          |> filled black
          |> rotate (degrees -90)
          |> move (-10,10)
                   , curve (0,0) [Pull (10,0) (20,-10)]
          |> filled black
          |> rotate (degrees -90)
          |> move (0,50)
                   , curve (0,0) [Pull (10,0) (20,-10)]
          |> filled black
          |> rotate (degrees -30)
          |> move (-20,50)
                 , oval 25 15
          |> filled lightPurple
          |> rotate (degrees 30)
          |> move (7,20)
                , oval 25 15
          |> filled lightPurple
          |> rotate (degrees 1230)
          |> move (-25,20)
               , oval 30 15
          |> filled lightPurple
          |> rotate (degrees 1230)
          |> move (8,2)
             , oval 30 15
          |> filled lightPurple
          |> rotate (degrees 30)
          |> move (-28,2)]
            |> move(10,-10)
            |> move (sin(model.time*2)*10, cos(model.time*2)*10)
            |> scale (0.2*sin((model.time))+1)
                         ]

        myBackground = square 200 |> filled lightBlue
    in (("ToughWheat",myWord,"6"),("Butterfly","given to StLuke",myShapes))

  ,    let
        myWord = "rain"
        myCode =  687

        myShapes model = myShaper { time = model.time - 8 * toFloat (round (model.time * 0.125)) }
        myShaper model = [myBackground,
             myRainDrop
              |> move(0,(-(model.time*10))),

            myRainDrop
              |> move(40, 50)
              |> move(0,(-(model.time*10))),

            myRainDrop
              |> move(-25,-50)
              |> move(0,(-(model.time*10)))

            ,myRainDrop
              |> move(-40, 90)
              |> move(0,(-(model.time*10)))

             ,myRainDrop
             |> move(35,80)
             |> move(0,(-(model.time*10)))


              ,myRainDrop
              |> move (-40,20)
              |> move(0,(-(model.time*10)))

              ,myRainDrop
              |> move (20,-40)
              |> move(0,(-(model.time*10)))

              ,myRainDrop
              |> move (-5,30)
              |> move(0,(-(model.time*10)))

              ,myRainDrop
              |> move (25,30)
              |> move(0,(-(model.time*10)))

              ]


        myRainDrop = group [circle 10
          |> filled lightBlue
          |> rotate (degrees 30)

            ,triangle 10
          |> filled lightBlue
          |> rotate (degrees 90)
          |> move (0,10)
          ]
        myRainDrop2 = group [circle 10
          |> filled lightBlue
          |> rotate (degrees 30)

             ,triangle 10
          |> filled lightBlue
          |> rotate (degrees(90))
          |> move (60,60)]

        myBackground = square 200 |> filled lightCharcoal
    in (("UsefulWren",myWord,"6"),("rain","given to StLuke",myShapes))

  ,    let
        myWord ="crayon" -- put your work here (in quotes) --
        myCode = 558 --put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , myDrawing
                         |> move(0, 8)
                         ,myCrayon
                         |> move (18*sin(5*model.time),0)
                         ]

        myBackground = square 200 |> filled pink

        myDrawing = group[
                 rect 15 40
          |> filled white
          |> rotate (degrees 90)
          |> move (0, -50) ,

                  text "______"
          |> filled red
          |> scaleX 0.5
          |> scaleY 0.5
          |> rotate (degrees 180) |> move (0,-50) ,

                       text "______"
          |> filled red
          |> scaleX 0.5
          |> scaleY 0.5
          |> rotate (degrees 180) |> move (0,-55) ,

                         text"______"
          |> filled red
          |> scaleX 0.5
          |> scaleY 0.5
          |> rotate (degrees 180) |> move (10,-55)

                  ]

        myCrayon = group[rect 20 25
                      |> filled red
                      |> scaleY 2
                      |> move (0,0) ,

                    triangle 11
          |> filled red
          |> rotate (degrees 30)
          |> move (0,-31) ,

                    rect 15 30
          |> outlined (solid 1) black ,

                   rect 20 3
          |> filled black
          |> rotate (degrees 180)
          |> move (0,-25) ,

                    rect 20 3
          |> filled black
          |> rotate (degrees 180)
          |> move (0,22) ,
          text "Crayola"
          |> outlined (solid 1) black
          |> scale 0.75
          |> scaleX 0.75
          |> scaleY 0.75
          |> rotate (degrees 90)
          |> move (3,-10)
         ]
    in (("WittyApricot",myWord,"6"),("crayon","given to StLuke",myShapes))

  ,    let
        myWord = "jeff" -- put your work here (in quotes) --
        myCode =644 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground,
                          jeff
                             |> rotate (model.time)
                             |> scale (sin(model.time))
                         ]

        myBackground = square 500 |> filled black

        jeff = group[
          oval 60 70
          |> filled white,
          circle 3
          |> filled black
          |> move (-15, 10),
          circle 3
          |> filled black
          |> move (15, 10),
          circle 2
          |> filled white
          |> move (-15, 10),
          circle 2
          |> filled white
          |> move (15, 10),
          circle 0.5
          |> filled red
          |> move (-15, 10),
          circle 0.5
          |> filled red
          |> move (15, 10),
          curve (0,0) [Pull (-20,-8) (-40,0), Pull (-20,-3) (0,0), Pull (0,0) (0,0), Pull (0,0) (0,0), Pull (0,0) (0,0), Pull (0,0) (0,0), Pull (0,0) (0,0) ]
          |> filled (rgb 255 0 0)
          |> move (20,-8)]
    in (("BrightBulrush",myWord,"6"),("jeff","given to StLuke",myShapes))

  ,    let
        myWord = "face" -- put your work here (in quotes) --
        myCode = 616  -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [myBackground, myFace |> scale 0.7]

        myFace = group[ circle 15
                            |> filled black
                             , circle 10
                            |> filled white
                            |> scale 1,
                            triangle 10
          |> filled darkCharcoal
          |> scale 0.75
          |> move (-25,35) ,
          triangle 10
          |> filled darkCharcoal
          |> scale 0.75
          |> move (29,35),
          circle 10
          |> filled darkCharcoal
          |> scale 2.5
          |> scaleX 2.5
          |> scaleY 2.5,
          circle 10
          |> filled white
          |> scale 1.50
          |> move (-27,35),
          circle 10
          |> filled white
          |> scale 1.5
          |> move (27,35),
          oval 10 15
          |> filled hotPink
          |> scaleY 1.75
          |> rotate (degrees 90)
          |> move (3,-25)
          ,circle 10
          |> filled black
          |> scale 0.75
          |> move (-25,40),
          circle 10
          |> filled black
          |> scale 0.75
          |> move (30,40),
          curve (0,0) [Pull (10,0) (20,-10)]
          |> filled pink
          |> scale 1.75
          |> rotate (degrees 20)
          |> move (5,7)]

        myBackground = square 200 |> filled blue
    in (("NaughtyNectarine",myWord,"6"),("face","given to Westview",myShapes))

  ,    let
        myWord = "mountains" -- put your work here (in quotes) --
        myCode = 123 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                        , triangle 30
          |> filled lightCharcoal
          |> rotate (degrees -30)
          |> move (-20,-15)
          , triangle 30
          |> filled lightCharcoal
          |> rotate (degrees -30)
          |> move (20, -15)
          , triangle 35
          |> filled charcoal
          |> rotate (degrees -30)
          |> move (0,-13)
          , triangle 15
          |> filled white
          |> rotate (degrees -30)
          |> move (0,7)
          , triangle 10
          |> filled white
          |> rotate (degrees -30)
          |> move (-20,6)
          , triangle 10
          |> filled white
          |> rotate (degrees -30)
          |> move (20,6)
          , circle 10
          |> filled lightYellow
          |> rotate (degrees -30)
          |> move (30,33)
          ]

        myBackground = square 200 |> filled darkBlue
    in (("MistyMustard",myWord,"6"),("Moon and Stars","given to Westview",myShapes))

  ,    let
        myWord = "kite"-- kite put your work here (in quotes) --
        myCode =686 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [myBackground ,
                          square 45
                             |> filled red
                             |> rotate (degrees 45)
                          , rect 25 10

                            |> filled gray
                            |> rotate (degrees 90)
                            |> move (0,-37)



                         ]





        myBackground = square 200 |> filled blue
    in (("NoisyNutmeg",myWord,"6"),("kite","given to Westview",myShapes))

  ,    let
        myWord = "ball" -- put your work here (in quotes) --
        myCode ="514" -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , circle 20
                             |> filled red
                             |> rotate model.time

                         ]

        myBackground = square 200 |> filled yellow
    in (("MajesticMoss",myWord,"6"),("ball","given to Westview",myShapes))

  ,    let
        myWord = "apple"
        myCode = 508
        myShapes model = [ myBackground
                         , circle 25
                         |> filled darkRed
                         , roundedRect 30 15 5
          |> filled darkGreen
          |> scale 0.75
          |> rotate (degrees 90)
          |> move (0,30)
                         , oval 30 15
          |> filled lightYellow
          |> scale 1
          |> rotate (degrees 90)
          |> move (7,4)]

















        myBackground = square 200 |> filled pink

    in (("ObservantOcelot",myWord,"6"),("Apple","given to Westview",myShapes))

  ,    let
        myWord = "cake"-- put your work here (in quotes) --
        myCode = 551-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , circle 10
          |> filled red
          |> scale 2.85
          |> rotate (degrees 30),
          circle 10
          |> filled (rgb 230 125 57)
          |> scale 2.5
          |> rotate (degrees 30)
          |> move (0,0),
          circle 10
          |> filled yellow
          |> scale 2.2
          |> rotate (degrees 30)
          |> move (0,0),
          circle 10
          |> filled green
          |> scale 1.95
          |> rotate (degrees 30)
          |> move (0,0),
          circle 10
          |> filled lightBlue
          |> scale 1.70
          |> rotate (degrees 30)
          |> move (0,0),
          circle 10
          |> filled lightPurple
          |> scale 1.45
          |> rotate (degrees 30)
          |> move (0,0),
          circle 10
          |> filled pink
          |> scale 1.30
          |> rotate (degrees 30)
          |> move (0,0)


                         , graphPaper 10 |> makeTransparent 0.4

                         ]

        myBackground = square 200 |> filled white
    in (("MelodicMulberry",myWord,"6"),("Cake","given to Westview",myShapes))

  ,    let
        myWord = "man"--
        --myCode = 709--
        myShapes model =[circle 10|> filled black|> move (0,25)
                 ,rect 15 25 |> filled black |> move (0,3)
                 ,rect 5 15|> filled black|> rotate(degrees 55)
                 |> move (12,5)
                 ,rect 5 15 |> filled black|> rotate(degrees 125)
                 |> move (-12,5)
                 ,rect 5 15|> filled black|> move(-5,-14)
                 ,rect 5 15|> filled black|> move(5,-14)]







    in (("OutrageousOlive",myWord,"6"),("Men","given to Westview",myShapes))

  ,    let
        myWord = "food"
        myCode = 634

        myShapes model = [circle 40 |> filled lightBrown,
                          polygon [(10,0),(0,-10),(4,4)]
                           |> filled hotPink,circle 10
                            |> filled red
                           |> scale 3.5,circle 10
                           |> filled lightYellow
                            |> scale 3,circle 2
                          |> filled darkRed
                               |> scale 1.75
                             |> move (-10,10),circle 2
                                 |> filled darkRed
                           |> scale 1.75
                               |> move (-10,-10),circle 2
                     |> filled darkRed
                            |> scale 1.75
                           |> move (10,10),
                            circle 2
                           |> filled darkRed
                            |> scale 1.75
                              |> move (10,-10),circle 3
                        |> filled darkRed,circle 2
                            |> filled darkRed
                           |> scale 1.75
                           |> move(0,20),circle 2
                         |> filled darkRed
                              |> scale 1.75
                        |> move (-0,-20),circle 2
                           |> filled darkRed
                                |> scale 1.75
                         |> move (20,0),circle 2
          |> filled darkRed
          |> scale 1.75
          |> move (-20,0)]







        myBackground = [square 200 |> filled brown]
    in (("PleasantOregano",myWord,"6"),("Food","given to Westview",myShapes))

  ,    let
        myWord = "clover" -- put your work here (in quotes) --
        myCode = 574  -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ -- background
                greentriangle |> rotate (degrees 80)  |> move(-25,10)
                , greentriangle |> rotate (degrees 220) |> move (5,10)
                , greentriangle |> rotate (degrees 90) |> move (-9,-22)
                , greenrectangle |> rotate (degrees 40) |> move (10,-20)]




        greentriangle = triangle 10
          |> filled green
          |> scale 2

        greenrectangle =  rect 10 25
          |> filled green
          |> scaleY 2







    in (("MuteMyrtle",myWord,"6"),("clover","given to Westview",myShapes))

  ,    let
        myWord = "desk"   -- put your work here (in quotes) --
        myCode = 597 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , square 10
                             |> filled yellow
                         ,  rect 30 15
                             |> filled lightBrown
                             |> scale 2
                             |> rotate (degrees 180)
                         ,  rect 10 25
                            |> filled lightCharcoal
                            |> rotate (degrees 180)
                            |> move (-25,-27)
                         ,  rect 10 25
                            |> filled lightCharcoal
                            |> rotate (degrees -180)
                            |> move (25,-27)
                         ,  rect 10 15
                            |> filled blue
                            |> rotate (degrees -180)
                            |> move (-8,0) ]
        myBackground = square 200 |> filled yellow
    in (("NoisyNutmeg",myWord,"6"),("Kylie and Xenia's Desk","given to Westview",myShapes))

  ,    let
        myWord = "boat"
        myCode = 123

        myShapes model = [ myBackground, roundedRect 10 15 5
                                           |>filled brown
                                           |>scale 4
                                           |>rotate (degrees 90)
                                           |>move (0,-30),
                                         rect 10 45
                                           |>filled brown
                                           |>scaleX 1
                                           |>scaleY 1.75
                                           |>move (0,20),
                                         triangle 10
                                           |>filled white
                                           |>scale 3
                                           |>rotate (degrees 180)
                                           |>move (-10,20)
                                           ]







        myBackground = square 200 |> filled darkBlue
    in (("NervousNettles",myWord,"6"),("Name","given to Westview",myShapes))

  ,    let
        myWord = "glue"
        myCode = 645

        myShapes model = [ myBackground
                         , rect 20 20
          |> filled white
          |> scale 1.50
          |> scaleY 1.75
                         , oval 20 20
          |> filled white
          |> scale 1
          |> scaleY 1.75
          |> rotate (degrees -90)
          |> move (0,25)
                          , rect 20 20
          |> filled lightOrange
          |> scale 1
          |> scaleY 1.75
          |> rotate (degrees 0)
          |> move (0,4)
                          , text "GLUE"
          |> filled white
          |> scale 0.50
          |> scaleY 1.75
          |> rotate(degrees 0)
          |> move (-8,10)
                          ,
         triangle 20
          |> filled orange
          |> scale 0.50
          |> scaleY 0.75
          |> rotate (degrees 90)
          |> move (0,37)]


        myBackground = square 200 |> filled grey
    in (("ObservantOcelot",myWord,"6"),("Glue","given to Westview",myShapes))

  ,    let
        myWord = "club"
        myCode = 575

        myShapes model = [ mySquare

                   , circle 15
                          |> filled grey
                          |> move(0,-30),
                   rect 10 85
                          |> filled yellow
                          |> move (-20,0)
                         ]


        mySquare = group [square 30 |> filled white ]




    in (("ThrilledSumac",myWord,"6"),("golf club","given to Ridgemount",myShapes))

  ,    let
        myWord = "family"
        myCode = 617

        myShapes model = [ mybody,myHead, mybody |> move(30,0) ,myHead|>move(30,0)
                         ]

        myBackground = square 200 |> filled pink

        mybody = group[ rect 20 45|> filled red
                      ,oval 10 45|>filled red
                                 |>rotate(degrees 30)
                                 |>move(11,0)
                                 ,oval 10 45
                                 |>filled red
                                 |>rotate(degrees -30)
                                 |>move(-11,0)
                                 ,oval 10 45
                                 |>filled red
                                 |>rotate(degrees 0)
                                 |>move(0,-20)
                                 |>move(5,0)
                                 ,oval 10 45
                                 |>filled red
                                 |>rotate(degrees 0)
                                 |>move(-5,-19)

                        ]



        myHead = group[ circle 10
                  |> filled lightBrown
                  |> move(0,30)]

    in (("WhisperingWalrus",myWord,"6"),("happy family","given to Ridgemount",myShapes))

  ,    let
        myWord = "Beast" --
        myCode = 528

        myShapes model =  [circle 25
          |> filled darkBrown
            ,rect 10 15
          |> filled darkBrown
          |> rotate (degrees 90)
          |> move (30,-5)
          , circle 5 |> filled lightRed
         |> move (10,10)
         , triangle 5
          |> filled darkBrown
          |> scale 2
          |> rotate (degrees 90)
          |> move (-3,27)
          , rect 10 15
          |> filled darkBrown
          |> rotate (degrees 45) |> move (20,-15)
          , circle 2
          |> filled black
          |> rotate (degrees 90)
          |> move (12,10)
          , triangle 5
          |> filled lightBrown
          |> rotate (degrees 330)
          |> move (-3, 27)]


        myBackground = square 200 |> filled red
    in (("MoaningMyrrh",myWord,"6"),("beast","given to Westview",myShapes))

  ,    let
        myWord = "cat"--
        --myCode = 112

        myShapes model =[circle 25|> filled yellow
                 ,triangle 10|> filled yellow|>rotate(degrees 133)|>move(-20,20),
                 triangle 10|> filled yellow|>rotate(degrees 43)|>move(20,20)
                 ,triangle 5|> filled orange|>rotate(degrees 43)|>move(19,20)
                 ,triangle 5|>filled orange|>rotate(degrees 133)|>move(-19,20)
                 ,circle 3|>filled black|>move(-10,5)
                 ,circle 3|>filled black|>move(10,5)
                 ,circle 2|>filled black|>move(0,-10)]
    in (("OutrageousOlive",myWord,"6"),("Sir meow","given to Westview",myShapes))

  ,    let
        myWord = "bubble"-- put your work here (in quotes) --
        myCode = 546-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [
                          circle 10
          |> filled pink
          |> scale 3
          |> rotate (degrees 30)
          |> move (0,0)
          |> makeTransparent 0.5,
          circle 10
          |> filled white
          |> scale 1
          |> rotate (degrees 30)
          |> move (0,0),
          triangle 10
          |> filled white
          |> scale 0.90
          |> rotate (degrees 30)
          |> move (0,-11),
          triangle 10
          |> filled white
          |> scale 0.90
          |> rotate (degrees -30)
          |> move (0,11),
          triangle 10
          |> filled white
          |> scale 0.95
          |> rotate (degrees 0)
          |> move (10,0),triangle 10
          |> filled white
          |> scale 0.95
          |> rotate (degrees -60)
          |> move (-10,0),
          circle 10
          |> filled pink
          |> scale 0.25
          |> rotate (degrees -60)
          |> move (40,40)
          |> makeTransparent 0.5


                         ]




    in (("MelodicMulberry",myWord,"6"),("Bubble","given to Westview",myShapes))

  ,    let
        myWord = "jellyfish"
        myCode = 680

        myShapes model = [ myBackground
                         , oval 30 45

                             |> filled green
                             |> rotate (degrees 90)


                        , oval 5 20
                             |> filled pink
                             |> move (7,-22)
                        , oval 5 20
                             |> filled pink
                             |> move (-1,-22)
                        , oval 5 20
                             |> filled pink
                             |> move (-10,-22)

                        , oval 5 20
                             |> filled pink
                             |> move (15,-20)
                        , oval 5 20
                             |> filled pink
                             |> move (15,-20)
                        , circle 2
                             |> filled grey
                             |> move (-4,4)

                        , circle 2
                             |> filled grey
                             |> move (2,4)

                        , oval 5 20
                             |> filled pink
                             |> move (-10,-20)

                    ]



        myBackground = square 200 |> filled grey
    in (("PeacefulOrange",myWord,"6"),("Jellyfish","given to Westview",myShapes))

  ,    let
        myWord ="grass" -- put your work here (in quotes) --
        myCode = 654-- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                         , grass
                             |> move (0,-50)
                          , grass
                              |> move (10, -50)
                              ,grass
                              |> move(20,-50)
                              , grass
                              |> move(-10,-50)
                              ,grass
                              |>move (-20,-50)
                              ,grass
                              |>move(-30,-50)
                               ,grass
                               |>move(-40,-50)

                               ,grass
                               |>move(30,-50)

                               ,grass
                               |>move(-50,-50)
                                ,grass
                                |>move(30,-50)
                                ,grass
                                |>move(40,-50)

                               ,grass
                               |>move(50,-50)



          |> makeTransparent 0.4

                         ]

        grass = isosceles 10 21
          |> filled green

        myBackground = square 200 |> filled blue
    in (("MajesticMoss",myWord,"6"),("Grass","given to Westview",myShapes))

  ,    let
        myWord = "bird"
        myCode = 613

        myShapes model = [-- myBackground
                   oval 10 13
                    |> filled (rgb 230 125 50)
                    |> scale 2.5
                    |> rotate (degrees -90)

           ,

          curve (0,0) [Pull (0,0) (0,0), Pull (0,0) (0,0), Pull (0,0) (0,0), Pull (-16,0) (0,0), Pull (0,0) (0,9), Pull (-23,0) (0,0), Pull (0,0) (0,0) ]
          |> filled (rgb 250 150 0)
         |>move (-25,5)

         , circle 10
             |> filled (rgb 230 125 50)
             |> move (-20,10)
             |> scale 1.0 ,
             roundedRect 10 15 5
          |> filled yellow
          |> scale 0.4
          |>move (3,-11)
            ,
            rect 10 25
          |> filled yellow
          |> scale 0.2
          |> rotate (degrees 240)
          |> move (0,-12) ,

           circle 10
          |> filled black
          |> move (-25,14)
          |> scale 0.2
          |> rotate (degrees -60)






         ]



        -- myBackground =
    in (("OutgoingOctopus",myWord,"6"),("Bird","given to Westview",myShapes))

  ,    let
        myWord = "cup"
        myCode = 592
        myShapes model = [ myBackground
                         , square 60
          |> filled white
          |> scale 0.90
          |> scaleX 1
          |> rotate (degrees 60)
          |> move (0,7)
                        , wedge 90 0.5
          |> filled darkBlue
          |> scale 0.29
          |> scaleX 0.75
          |> scaleY 0.75
          |> rotate (degrees 150)
          |> move (-25,19)
                      , wedge 80 0.5
          |> filled grey
          |> scale 0.15
          |> rotate (degrees 150)
          |> move (-25,19)]


        myBackground = square 200 |> filled grey
    in (("ObservantOcelot",myWord,"6"),("Cup","given to Westview",myShapes))

  ,    let
        myWord = "mountains" -- put your work here (in quotes) --
        myCode = 123 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [ myBackground
                        , triangle 30
          |> filled lightCharcoal
          |> rotate (degrees -30)
          |> move (-20,-15)
          , triangle 30
          |> filled lightCharcoal
          |> rotate (degrees -30)
          |> move (20, -15)
          , triangle 35
          |> filled charcoal
          |> rotate (degrees -30)
          |> move (0,-13)
          , triangle 15
          |> filled white
          |> rotate (degrees -30)
          |> move (0,7)
          , triangle 10
          |> filled white
          |> rotate (degrees -30)
          |> move (-20,6)
          , triangle 10
          |> filled white
          |> rotate (degrees -30)
          |> move (20,6)
          , circle 10
          |> filled lightYellow
          |> rotate (degrees -30)
          |> move (30,33)
          ]

        myBackground = square 200 |> filled darkBlue
    in (("MistyMustard",myWord,"6"),("Mt.XAbby","given to Westview",myShapes))

  ,    let
        myWord = "home"
        myCode = 664

        myShapes model = [square 13
          |> filled charcoal
          |> scale 2
          |> scaleX 2
          |> scaleY 2
          |> move (0,-17),triangle 7.5
          |> filled lightCharcoal
          |> scale 2
          |> scaleX 2
          |> scaleY 2
          |> rotate (degrees -30)
          |> move (-0,23.8),
          rect 5 7
          |>filled white
          |> scale 2
          |> scaleX 2
          |> scaleY 2
          |> move (-7,-30),
          square 7
          |> outlined (solid 1) white
          |> scale 2
          |> move (11,-2)




          ]
        myBackground = square 200 |> filled pink
    in (("ObedientOats",myWord,"6"),("House","given to Westview",myShapes))

  ,    let
        myWord = "soda"
        myCode = 790

        myShapes model = [myBackground
                   , triangle 50
                       |> filled white
                   , mySquare
                       |> move (5,5)
                   , rect 30 45
                     |> filled darkGray, rect 30 35
                      |> filled lightGray, text "Pop"
                       |> filled black
                       |> move (-12, 0)
                         ]


        mySquare = square 10
                     |> filled white
                     |> makeTransparent 0.5  -- value between 0 and 1

        myBackground = square 200 |> filled white
    in (("AwesomeApple",myWord,"6"),("HI","given to Ridgemount",myShapes))

  ,    let
        myWord = "birthday"-- put your work here (in quotes) --
        myCode =534 -- put your code number here, which came with your word (not in quotes) --

        myShapes model =[
           triangle 10
          |> filled green
          |> scale 3
          |> rotate (degrees -150)
          |> move (0,0),
          circle 10
          |> filled pink
          |> scale 1
          |> rotate (degrees -360)
          |> move (0,30)


                           ]




    in (("MelodicMulberry",myWord,"6"),("Birthday","given to Westview",myShapes))

  ,    let
        myWord = "moon"
        myCode = 715
        myShapes model = [  myBackground
                   ,circle 50
                       |> filled white
                       |> move (40-(model.time - 5 * toFloat (round <| 0.2 * model.time))*80,0)



                   ,circle 50
                       |> filled black
                       |> move (-20,0)
                       |> move (40-(model.time - 5 * toFloat (round <| 0.2 * model.time))*80,0)

              ]


        myBackground = square 500 |> filled black


    in (("CarefulBat",myWord,"6"),("Moon","given to Ridgemount",myShapes))

  ,    let
        myWord = "number"
        myCode = 724

        myShapes model = [ myBackground , myRect , myRect2 , myLine

                         ]

        myBackground= square 2000 |> filled pink
        myRect = rect 10 65
                    |> filled yellow
        myRect2 = rect 10 35
          |> filled yellow
          |> rotate (degrees 150)
          |> move (-5,14)
        myLine= rect 10 70
          |> filled yellow
          |> rotate (degrees 270)
          |> move (7,-30)
    in (("DeafeningCat",myWord,"6"),("number","given to Ridgemount",myShapes))

  ,    let
        myWord = "cookie"
        myCode = 123

        myShapes model = [ myBackground
                         , square 10
                             |> filled red
                             |> rotate model.time
                         , circle 40
          |> filled darkYellow
         ,circle 10
          |> filled darkBrown
         ]

        myBackground = square 200 |> filled pink
    in (("MistyMustard",myWord,"6"),("Quadruple chocolate chip cookie :)","given to Westview",myShapes))

  ,    let
        myWord = "car"
        myCode = 557
        myShapes model = [myBackground,roundedRect 20 25 5
          |> filled blue
          |> scale 2
          |> scaleY 2
          |> rotate (degrees 90),circle 10
          |> filled black |>move(-30,-20),circle 10
          |> filled black |>move (30,-20),roundedRect 30 20 5
          |> filled white
          |> rotate (degrees -360)|> move (-25,5),roundedRect 30 20 5
          |> filled white |> move (15,5),circle 10
          |> filled black|> move  (-20,4),oval 5 5
          |> filled white|> move (-24,7),oval 5 5
          |> filled white |> move (-18,7),curve (0,0) [Pull (10,0) (20,-10)]
          |> filled white
          |> scale 0.5
          |> rotate (degrees -150) |> move (-16,0)
          ]

        myBackground = square 200 |> filled lightGreen




    in (("MerryMushroom",myWord,"6"),("a car","given to Westview",myShapes))

  ,    let
        myWord = "nose"
        myCode = 733

        myShapes model = [-- myBackground--
             curve (-9,48) [Pull (0,0) (0,0), Pull (0,0) (0,0), Pull (0,0) (0,0), Pull (5,55) (0,0), Pull (0,56) (0,1), Pull (0,110) (-43,0), Pull (0,0) (0,0) ]
                         |> filled (rgb 250 150 0)
                         |> rotate (degrees  -90)
                         |> move (-10,-5) ,
                         oval 10 15
          |> filled (rgb 230 125 50)
          |> rotate (degrees 270)
          |> move (10,0)




                         ]

        --myBackground = square 200 |> filled pink--
    in (("OutgoingOctopus",myWord,"6"),("A NOSE","given to Westview",myShapes))

  ,    let
        myWord =  "door"
        myCode = 606

        myShapes model = [ myBackground
                         ,      rect 100 60
          |> filled darkBrown
          |> scale 0.80
          |> scaleY 1
          |> rotate (degrees 270)
          |> move (-9,9)
                         , circle 100
          |> filled darkYellow
          |> scale 0.10
          |> scaleX 0.25
          |> scaleY 0.25
          |> move (7
         ,10)
                        , rect 100 100
          |> filled lightCharcoal
          |> scale 0.5
          |> scaleX 0.5
          |> move (-10,10) ]

        myBackground = square 200 |> filled grey
    in (("ObservantOcelot",myWord,"6"),("Door","given to Westview",myShapes))

  ,    let
        myWord ="house"
        --myCode =803

        myShapes model = [rect 140 30|> filled green|>move(0,-50)
                         ,rect 40 60|> filled brown|> move(0,-42)
                         ,triangle 25|> filled grey|>rotate (degrees 90) |> move (0,0)
                         ,rect 8 19|>filled grey|>move(-8,-25)
                         ,rect 8 19|>filled grey|>move(8,-25)
                         ,rect 8 25|>filled purple|>move (0,-50)
                         ,circle 1|> filled yellow|>move (-2,-47)]









    in (("OutrageousOlive",myWord,"6"),("House","given to Westview",myShapes))

  ,    let
        myWord = "crown"
        myCode = 590
        myShapes model = [ myBackground
                         ,  dog |> move (13,-17),
                         crown |> scale 0.15 |> move (-9,13),
                         text "WOOF" |> filled black |> move (-46,17)
                         ]

        myBackground = square 200 |> filled green
        dogHead = group [rect 11 16 |> filled brown |> rotate (degrees -70) |> move (-3,-1),
                    circle 2 |> filled black |> move (-10,1)|> rotate (degrees -60),
                    circle 10 |> filled brown,
                 circle 3 |> filled black |> move (-3, 4),
                 rectangle 5 10 |> filled black |> move (5,4)]
        dogBody = group [oval 37 14 |> filled brown |> rotate (degrees -40) |> move (0,2),
                  rectangle 5 22 |> filled brown |>move (-11,0),
                  rectangle 5 18 |> filled brown |>move (0,-2),
                  rectangle 3 15 |> filled brown |> rotate (degrees -60) |> move (13,-5)]
        dog = group [dogHead |> move (-20,20),
                  dogBody |> scale 1.1]
        crown = group [rectangle 74 20 |> filled yellow,
                    triangle 15 |> filled yellow |> move (-29,8),
                    triangle 15 |> filled yellow |> move (29,8) |> rotate (degrees 180),
                    triangle 15 |> filled yellow |> move (0,10) |> rotate (degrees 90)]
    in (("MagnificientMoose",myWord,"6"),("all hail doggo","given to Westview",myShapes))

  ,    let
        myWord = "grade"
        myCode = 649
        myShapes model = [ myBackground
                  , rect 10 45
                      |> filled black
                      |> rotate (degrees 160)
                      |> move (-20, 0)
                  , rect 10 45
                      |> filled black
                      |> rotate ( degrees 20)
                  , rect 10 30
                      |> filled black
                      |> scaleY 0.75
                      |> rotate ( degrees 90)
                      |> move (-10, -5)
                      ]



        mySquare = square 10
                     |> filled pink
                     |> makeTransparent 0.5  -- value between 0 and 1

        myBackground = square 200 |> filled pink
    in (("DefiantCelery",myWord,"6"),("Grade","given to Ridgemount",myShapes))

  ,    let
        myWord = "snow"
        myCode = 788

        myShapes model = [  square 200 |> filled blue
                     , mySnow |> move(25,25)
                     , mySnow |> move(-40,0)
                     , mySnow |> move(-20,0)
                     , mySnow |> move(-50,20)
                     , mySnow |> move(-60,60)
                     , mySnow |> move(-50,40)
                     , mySnow |> move(30,45)
                     ,mySnow |> move(20,-10)
                     ,mySnow |> move(-5,-20)
                     ,mySnow |> move(-30,-10)
                     ,mySnow |> move(-50,-25)
                     ,mySnow |> move(-70,-60)
                     ,mySnow |> move(-90,-40)
                     ]

        myBackground = square 1000
          |> filled red

        mySnow = circle 10
          |> filled white
    in (("DramaticCitron",myWord,"6"),("mrsnow","given to Ridgemount",myShapes))

  ,    let
        myWord = "plane" -- put your work here (in quotes) --
        myCode = 741 -- put your code number here, which came with your word (not in quotes) --

        myShapes model = [circle 15
                  |> filled darkGray
                  |> move (-35,0)
                  , rect 40 15
                  |> filled darkGray
                  |> scale 2
                  |> move (5,0)
                  , triangle 20
                  |> filled darkGray
                  |> scaleY 0.5
                  |> rotate (degrees 90) |> move (36,25)
                  , triangle 40
                  |> filled darkGray
                  |> rotate (degrees 280)
                  |> scaleY 0.5
                  |> move (0,-10)
                  , square 60
          |> filled lightBlue
          |> scaleX 0.25
          |> scaleY 0.25
          |> move (-40,0)
                  , square 60
          |> filled lightBlue
          |> scaleX 0.25
          |> scaleY 0.25
          |> move (-24,0)
                  , square 60
                  |> filled lightBlue
                  |> scaleX 0.25
                  |> scaleY 0.25
                  |> move (-8,0)
                  , square 60
          |> filled lightBlue
          |> scaleX 0.25
          |> scaleY 0.25
          |> move (8,0)
                   , square 60
          |> filled lightBlue
          |> scaleX 0.25
          |> scaleY 0.25
          |> move (24,0)
                 , triangle 60
          |> filled darkGray
          |> scaleX 0.25
          |> scaleY 0.25
          |> rotate (degrees 330) |> move (0,20)








                  ]
















    in (("MuteMyrtle",myWord,"6"),("Plane","given to Westview",myShapes))

  ]
