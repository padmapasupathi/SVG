module School exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing(..)
import List
import String
import Dict exposing (Dict)

main = gameApp Tick { model = init, view = view, update = update, title = "Going to School without COVID-19" }

view model = collage 192 128 (myShapes model)

-----------------------------------------------
---- this is where code from GameSlot goes ----
---- BUT MOVE "import"s above main         ----
-----------------------------------------------
myShapes model =
    case model.state of
        StartPage  ->
            [
              group [
                rect 300 300
                  |> filled lightBlue
              , rect 500 65
                  |> filled lightGreen
                  |> move (0, -32)
              , text "Choose Your Destiny: The Corona"
                  |> centered
                  |> customFont "Helvetica"
                  |> filled black
                  |> move (0, 40)
              , rect 80 30
                  |> filled (rgb 255 163 51)
              , rect 75 15
                  |> filled orange
                  |> move(0, 22)
              , rightTriangle 10 15
                  |> filled orange
                  |> move (37.4, 15)
              , rightTriangle 10 15
                  |> filled orange
                  |> mirrorX
                  |> move (-37.4, 15)
              , roundedRect 98 2 0.5
                  |> filled red
                  |> move (0, 14)
              , roundedRect 78 2 0.5
                  |> filled red
                  |> move (0, 30)
              , window
              , rect 25 35
                  |> filled (rgb 255 190 51)
                  |> move (0, 2.5)
              , isosceles 25 10
                  |> filled (rgb 255 190 51)
                  |> move (0, 20)
              , roundedRect 19 2 0.5
                  |> filled red
                  |> rotate (degrees 38)
                  |> move (-7, 25)
              , roundedRect 19 2 0.5
                  |> filled red
                  |> rotate (degrees 38)
                  |> move (-7, 25)
                  |> mirrorX
              , circle 5
                  |> filled orange
                  |> move (0, 15)
              , circle 4
                  |> filled white
                  |> move (0, 15)
              , circle 0.5
                  |> filled black
                  |> move (0, 15)
              , rect 2 0.5
                  |> filled black
                  |> move (1, 15)
              , rect 0.5 3.5
                  |> filled black
                  |> move (0, 16.5)
              , rect 16 15
                  |> filled red
                  |> move (0, -7.4)
              , rect 7 14
                  |> filled lightRed
                  |> move (3.5, -8)
              , rect 7 14
                  |> filled orange
                  |> move (-3.5, -8)
              , rect 4 5
                  |> filled lightBlue
                  |> move (-3.5, -5)
              , rect 4 5
                  |> filled lightBlue
                  |> move (3.5, -5)
              , window
                  |> move (-32, 6)
              , window
                  |> move (-32, -4)
              , window
                  |> move (-21, 6)
              , window
                  |> move (-21, -4)
              , window
                  |> move (32, 6)
              , window
                  |> move (32, -4)
              , window
                  |> move (21, 6)
              , window
                  |> move (21, -4)
              , rect 200 4
                  |> filled black
                  |> move (0, -17)

              ]
            , createButton green 23 60 "Start" blue GoToInstructionsPage
                |> move (0, -40)

            ]
        InstructionsPage  ->
            [     rect 200 140
                    |> filled lightBlue
                   ,text "Choose Your Destiny: The Corona"
                    |> centered
                    |> customFont "Helvetica"
                    |> filled black
                    |> move (0, 40)
                  ,text "In this game, you will play as a person trying to get to the second floor of a "
                    |> size 8
                    |> filled yellow
                    |> move (-125,34)
                    |> scale 0.75
                   ,text "school without getting sick. You will be put in situations where you will"
                    |> size 8
                    |> filled yellow
                    |> move (-125,22)
                    |> scale 0.75
                    ,text "use your knowledge to answer questions and learn as well! Try to get through "
                    |> size 8
                    |> filled yellow
                    |> move (-125,10)
                    |> scale 0.75
                    ,text "the game without making any mistakes, and prove you are a true expert!"
                    |> size 8
                    |> filled yellow
                    |> move (-125,-2)
                    |> scale 0.75
                    ,rect 200 20
                       |> filled black
                       |> move (0, -60)
                    ,roundedRect 60 20 5
                     |> filled (rgb 230 125 50)
                     |> scale 1
                     |> move (0,-45)
                     |> notifyTap GoToCoronaLevel

                    ,text "Next"
                    |> centered
                    |> filled white
                    |> move (0, -63)
                    |> scale 0.75
                    |> notifyTap GoToCoronaLevel




            ]

        CoronaLevel ->
          [
            rect 200 140
              |> filled lightBlue
          , text "Choose Your Destiny: The Corona"
              |> centered
              |> customFont "Helvetica"
              |> filled black
              |> move (0, 40)
          ,rect 200 20
                       |> filled black
                       |> move (0, -60)
                    ,roundedRect 60 20 5
                     |> filled (rgb 230 125 50)
                     |> scale 1
                     |> move (0,-45)
                     |> notifyTap GoToStoryPage

                    ,text "Next"
                    |> centered
                    |> filled white
                    |> move (0, -63)
                    |> scale 0.75
                    |> notifyTap GoToStoryPage
         , group [ rect 80 15
             |> filled black
             |> move (-50, 22)
         , text ("Corona Risk Level: " ++ (String.fromInt (model.mistakes * 20)) ++ "%")
             |> centered
             |> size 8
             |> filled white
             |> move (-50, 20)]
           |> move (-5, 0)
         , text "This is your 'Corona Risk Level'. The Corona Risk Level"
             |> size 8
             |> centered
             |> filled yellow
         , text "tracks how many mistakes you have made, and the risk"
             |> size 8
             |> centered
             |> filled yellow
             |> move (0, -8)
         , text "that you will be infected with the Coronavirus."
             |> size 8
             |> centered
             |> filled yellow
             |> move (0, -16)


          ]

        StoryPage  ->
          [
                rect 300 300
                  |> filled lightBlue
              , rect 500 55
                  |> filled lightGreen
                  |> move (0, -32)
              , text "You finally make your way to the entrance of the building you need to get to."
                  |> centered
                  |> size 6
                  |> filled black
                  |> move (0, 55)
              , text "Your friend had been working on something, and wanted to show it to you. He"
                  |> centered
                  |> size 6
                  |> filled black
                  |> move (0, 47)
              , text "called you to come to your school where he was working on the second"
                  |> centered
                  |> size 6
                  |> filled black
                  |> move (0, 39)
              , text "floor, and after walking a long way, you finally made it to the school."
                  |> centered
                  |> size 6
                  |> filled black
                  |> move (0, 31)
              , group [ rect 80 30
                  |> filled (rgb 255 163 51)
              , rect 75 15
                  |> filled orange
                  |> move(0, 22)
              , rightTriangle 10 15
                  |> filled orange
                  |> move (37.4, 15)
              , rightTriangle 10 15
                  |> filled orange
                  |> mirrorX
                  |> move (-37.4, 15)
              , roundedRect 98 2 0.5
                  |> filled red
                  |> move (0, 14)
              , roundedRect 78 2 0.5
                  |> filled red
                  |> move (0, 30)
              , window
              , rect 25 35
                  |> filled (rgb 255 190 51)
                  |> move (0, 2.5)
              , isosceles 25 10
                  |> filled (rgb 255 190 51)
                  |> move (0, 20)
              , roundedRect 19 2 0.5
                  |> filled red
                  |> rotate (degrees 38)
                  |> move (-7, 25)
              , roundedRect 19 2 0.5
                  |> filled red
                  |> rotate (degrees 38)
                  |> move (-7, 25)
                  |> mirrorX
              , circle 5
                  |> filled orange
                  |> move (0, 15)
              , circle 4
                  |> filled white
                  |> move (0, 15)
              , circle 0.5
                  |> filled black
                  |> move (0, 15)
              , rect 2 0.5
                  |> filled black
                  |> move (1, 15)
              , rect 0.5 3.5
                  |> filled black
                  |> move (0, 16.5)
              , rect 16 15
                  |> filled red
                  |> move (0, -7.4)
              , rect 7 14
                  |> filled lightRed
                  |> move (3.5, -8)
              , rect 7 14
                  |> filled orange
                  |> move (-3.5, -8)
              , rect 4 5
                  |> filled lightBlue
                  |> move (-3.5, -5)
              , rect 4 5
                  |> filled lightBlue
                  |> move (3.5, -5)
              , window
                  |> move (-32, 6)
              , window
                  |> move (-32, -4)
              , window
                  |> move (-21, 6)
              , window
                  |> move (-21, -4)
              , window
                  |> move (32, 6)
              , window
                  |> move (32, -4)
              , window
                  |> move (21, 6)
              , window
                  |> move (21, -4)
              , rect 200 4
                  |> filled black
                  |> move (0, -17) ]
                  |> move (0, -8)
              , rect 200 20
                       |> filled black
                       |> move (0, -60)
                    ,roundedRect 60 20 5
                     |> filled (rgb 230 125 50)
                     |> scale 1
                     |> move (0,-45)
                     |> notifyTap GoToChoice1

                    ,text "Begin"
                    |> centered
                    |> filled white
                    |> move (0, -63)
                    |> scale 0.75
                    |> notifyTap GoToChoice1
          ]

        Choice1  ->
            [ resetButton |> notifyTap Reset
                  , rect 1000 400
                     |> filled darkOrange,
                   rect 40 90
                     |> filled lightBlue
                     |> move (35, 0),
                  rect 35 90
                     |>filled darkGrey
                     |> move (0, 0),
                  rect 35 90
                     |> outlined (solid 1) black
                     |> move (0, 0),
                  rect 40 90
                     |> filled darkGrey
                     |> move (55, 0)
                     |> move (18* cos model.time, 0),
                  rect 40 90
                     |> outlined (solid 1) black
                     |> move (55, 0)
                     |> move (18* cos model.time, 0),

                   group [rect 50 90
                     |> filled darkGray
                     |> move (-70, 0),
                   circle 3
                     |> filled yellow
                     |> move (-50,0),
                   rect 300 50
                   |> filled darkBrown
                   |> move (0,-60)]
                   |> move (10, 0),

                 group[
                   rect 188 10
                     |> filled black
                     |> addOutline (solid 1) white
                     |> move (0, 59)
                  ,text "You see two entrances: an automatic sliding door and a door with a handle."
                   |> centered
                   |> filled white
                   |> scale 0.5
                   |> move (0,57)]
                   |> move (0, -4),
                   group[
                 rect 80 7.5
                   |> filled black
                   |> addOutline (solid 1) white
                   |> move (0, 52)
               , text "Which do you enter by?"
                   |> centered
                   |> filled white
                   |> scale 0.5
                   |> move (0,50)]
                   |> move (0, -92),

                   group[rect 80 10
                   |> centered
                   |> filled lightYellow
                   |> addOutline (solid 1) black
                   |> move (-60,-61)
                   |> notifyTap (GoToExplanation1 Incorrect)
                 , text "Take the regular door"
                   |> filled black
                   |> scale 0.4
                   |> move (-85,-62)
                   |> notifyTap (GoToExplanation1 Incorrect)]
                   |> move (10, 10)
                 , group [ rect 80 10
                   |> centered
                   |> filled lightYellow
                   |> addOutline (solid 1) black
                   |> move (70,-61)
                   |> notifyTap (GoToExplanation1 Correct)
                 , text "Take the automatic sliding door"
                   |> centered
                   |> filled black
                   |> scale 0.4
                   |> move (70,-62)
                   |> notifyTap (GoToExplanation1 Correct) ]
                   |> move (-20, 10)

            ]
        Choice2  ->
            [ resetButton |> notifyTap Reset
              , rect 400 400
                  |> filled lightBlue,
                 rect 50 80
                  |> filled lightCharcoal,
                 circle 10
                  |> filled grey
                  |> move (0, 15),
                 triangle 7
                  |> filled black
                  |> rotate (degrees 90)
                  |> move (0, 15),
                 circle 10
                  |> filled grey
                  |> move (0, -15),
                  triangle 7
                  |> filled black
                  |> rotate (degrees 270)
                  |> move (0, -15),
                  hand
                  |> move (abs(1*sin model.time*50),-10)
                , rect 180 10
                    |> centered
                    |> filled black
                    |> addOutline (solid 1) white
                    |> move (0, 52)
                , text "To get to the room, you will need to travel up an elevator."
                    |> size 6.5
                    |> centered
                    |> filled white
                    |> move (0, 50)
                , rect 180 10
                    |> centered
                    |> filled black
                    |> addOutline (solid 1) white
                    |> move (0, -38)
                , text "How will you press the button?"
                    |> size 6.5
                    |> centered
                    |> filled white
                    |> move (0, -40)
             ,  group[rect 80 10
                   |> centered
                   |> filled lightYellow
                   |> addOutline (solid 1) black
                   |> move (-60,-61)
                   |> notifyTap (GoToExplanation2 Correct)
                 , text "With your Elbow"
                   |> filled black
                   |> scale 0.4
                   |> move (-77,-62)
                   |> notifyTap (GoToExplanation2 Correct)]
                   |> move (10, 10)
                 , group [ rect 80 10
                   |> centered
                   |> filled lightYellow
                   |> addOutline (solid 1) black
                   |> move (70,-61)
                   |> notifyTap (GoToExplanation2 Incorrect)
                 , text "With your Finger"
                   |> centered
                   |> filled black
                   |> scale 0.4
                   |> move (70,-62)
                   |> notifyTap (GoToExplanation2 Incorrect) ]
                   |> move (-20, 10)
                 ]

        Choice3  ->
            [resetButton |> notifyTap Reset

              , rect 200 200
                |> filled lightBlue
             , group[ graphPaper 10 |> makeTransparent 0.4 |>rotate (degrees 210) |> move (5,-32)
              ,roundedRect 400 35 5
              |> filled grey --grey counter
              |> scale 2
              |> rotate (degrees 210)
              |> move (-10,0),

              roundedRect 40 30 5
              |> filled (rgb 173 216 255) --outer blue sink
              |> scale 2
              |> rotate (degrees 210)
              |> move (-10,0),
              roundedRect 40 30 5 --inner sink
              |> filled (rgb 230 234 214)
              |> scale 1.75
              |> rotate (degrees 210)
              |> move (-10,0),


              roundedRect 120 25 10 --tap base
              |> filled darkGray
              |> scale 0.5
              |> rotate (degrees 210)
              |> move (-19,18),
              sink,--Sink
              roundedRect 120 25 10 --tap base outline
              |> outlined (solid 2) lightCharcoal
              |> scale 0.5
              |> rotate (degrees 210)
              |> move (-19,18),

              group[curve (0,0) [Pull (15,0) (20,-10)] --tap
              |> filled (lightCharcoal)
              |> scale 2.2
              |> rotate (degrees 90),
              roundedRect 70 35 20 --tap head
              |> filled (lightCharcoal)
              |> scale 0.3
              |> rotate (degrees 120)
              |> move (29,35)] --move tap
              |> move (-32,8)
              |> scale 0.8,
              curve (0,0) [Pull (10,5) (25,-15)] --water drop
              |> filled lightBlue
              |> scale 0.4
              |> rotate (degrees 120)
              |> move (0,-5)
              |> move (0, abs(2*sin model.time*1))
              |> makeTransparent (1*abs(sin model.time *0.5)),

              curve (0,0) [Pull (10,5) (25,-15)] --water drop 2
              |> filled lightBlue
              |> scale 0.4
              |> rotate (degrees 120)
              |> move (0,10)
              |> move (0, abs(2*sin model.time*2.5))
              |> makeTransparent (3*abs(sin model.time *0.5)) ]
              |> move (0, -10)
            , rect 190 30
                    |> centered
                    |> filled black
                    |> addOutline (solid 1) white
                    |> move (0, 48)
            , text "While waiting for  the elevator, you realize you really need to go to the"
                  |> size 6
                  |> centered
                  |> filled white
                  |> move (0, 56)

            , text "washroom. You find a washroom, do your business, and before you leave you"
                  |> size 6
                  |> centered
                  |> filled white
                  |> move (0, 48)
            , text "have a choice."
                  |> size 6
                  |> centered
                  |> filled white
                  |> move (0, 40)
            ,  group[rect 80 10
                   |> centered
                   |> filled lightYellow
                   |> addOutline (solid 1) black
                   |> move (-60,-61)
                   |> notifyTap (GoToExplanation3 Incorrect)
                 , text "Leave"
                   |> filled black
                   |> scale 0.4
                   |> move (-65,-62)
                   |> notifyTap (GoToExplanation3 Incorrect)]
                   |> move (10, 10)
                 , group [ rect 80 10
                   |> centered
                   |> filled lightYellow
                   |> addOutline (solid 1) black
                   |> move (70,-61)
                   |> notifyTap (GoToExplanation3 Correct)
                 , text "Wash your Hands"
                   |> centered
                   |> filled black
                   |> scale 0.4
                   |> move (70,-62)
                   |> notifyTap (GoToExplanation3 Correct) ]
                   |> move (-20, 10)
            ]
        Choice5  ->
            [  resetButton |> notifyTap Reset

                ,  rect 400 400
                  |> filled lightBlue,


                  rect 35 40
                  |> filled brown
                  |> move (30,40),

                  oval 10 35
                  |> filled brown
                  |> rotate (degrees 90)
                  |> move (30, 60),
                  oval 5 15
                  |> filled gray
                  |> rotate (degrees 90)
                  |> move (30, 60),
                  oval 10 35
                  |> filled brown
                  |> rotate (degrees 90)
                  |> move (30, 20)
                  ,
                  rect 35 40
                  |> filled brown
                  |> move (70,40),

                  oval 10 35
                  |> filled brown
                  |> rotate (degrees 90)
                  |> move (70, 60),
                  oval 5 15
                  |> filled gray
                  |> rotate (degrees 90)
                  |> move (70, 60),
                  oval 10 35
                  |> filled brown
                  |> rotate (degrees 90)
                  |> move (70, 20),

                 roundedRect 50 70 15
                  |> filled white
                  |> rotate (degrees 90)
                  |> move (-50, 40)
                  ,
                  circle 5
                  |> filled gray
                  |> move (-32 , 30)
                 ,
                 rect 60 0.5
                 |> filled gray
                 |> move (-50, 50)
                 ,
                 wedge 10 1
                 |> filled gray
                 |> move (-65, 35),
                rect 20 10
                |> filled gray
                |> move (-65, 30),

                openPolygon [(0,0),(0,10),(-10,0)]
                |> filled white
                |> move (-52, 25),

               openPolygon [(0,0),(0,10),(10,0)]
                |> filled white
                |> move (-78, 25)
                ,
              openPolygon [(0,0),(0,20),(20,0)]
                |> filled lightBlue
                |> move (-85, 6)
                 ,
                 openPolygon [(0,0),(0,20),(-20,0)]
                |> filled lightBlue
                |> move (-15.5, 6),

                rect 500 70
                |>filled pink
                |> move (0, -60)

                ,hand1
                  |> move (abs(2*cos model.time*100),-10)
                  , rect 180 12
                    |> centered
                    |> filled black
                    |> addOutline (solid 1) white
                    |> move (0, 55)
                 , text "Before you leave after washing your hands, how do you dry them?"
                    |> size 6
                    |> centered
                    |> filled white
                    |> move (0, 54)
                 , group[rect 80 10
                     |> centered
                     |> filled lightYellow
                     |> addOutline (solid 1) black
                     |> move (-60,-61)
                     |> notifyTap (GoToExplanation5 Incorrect)
                 , text "Leave them Wet"
                     |> filled black
                     |> scale 0.4
                     |> move (-75,-62)
                     |> notifyTap (GoToExplanation5 Incorrect)]
                     |> move (10, 10)


                 ,  group[rect 80 10
                     |> centered
                     |> filled lightYellow
                     |> addOutline (solid 1) black
                     |> move (-60,-61)
                     |> notifyTap (GoToExplanation5 Correct)
                 , text "Dry with Paper Towels"
                     |> filled black
                     |> scale 0.4
                     |> move (-83,-62)
                     |> notifyTap (GoToExplanation5 Correct)]
                     |> move (10, 24)
                 , group [ rect 80 10
                     |> centered
                     |> filled lightYellow
                     |> addOutline (solid 1) black
                     |> move (70,-61)
                     |> notifyTap (GoToExplanation5 Incorrect)
                 , text "Dry with Air Dryer"
                     |> centered
                     |> filled black
                     |> scale 0.4
                     |> move (70,-62)
                     |> notifyTap (GoToExplanation5 Incorrect) ]
                   |> move (-20, 24)
            ]
        Explanation3  ->
            [
               rect 400 200
                |> filled blue
             ,group[ graphPaper 10 |> makeTransparent 0.4 |>rotate (degrees 210) |> move (5,-32)
              ,roundedRect 400 35 5
              |> filled grey --grey counter
              |> scale 2
              |> rotate (degrees 210)
              |> move (-10,0),

              roundedRect 40 30 5
              |> filled (rgb 173 216 255) --outer blue sink
              |> scale 2
              |> rotate (degrees 210)
              |> move (-10,0),
              roundedRect 40 30 5 --inner sink
              |> filled (rgb 230 234 214)
              |> scale 1.75
              |> rotate (degrees 210)
              |> move (-10,0),


              roundedRect 120 25 10 --tap base
              |> filled darkGray
              |> scale 0.5
              |> rotate (degrees 210)
              |> move (-19,18),
              sink,--Sink
              roundedRect 120 25 10 --tap base outline
              |> outlined (solid 2) lightCharcoal
              |> scale 0.5
              |> rotate (degrees 210)
              |> move (-19,18),

              group[curve (0,0) [Pull (15,0) (20,-10)] --tap
              |> filled (lightCharcoal)
              |> scale 2.2
              |> rotate (degrees 90),
              roundedRect 70 35 20 --tap head
              |> filled (lightCharcoal)
              |> scale 0.3
              |> rotate (degrees 120)
              |> move (29,35)] --move tap
              |> move (-32,8)
              |> scale 0.8,
              curve (0,0) [Pull (10,5) (25,-15)] --water drop
              |> filled lightBlue
              |> scale 0.4
              |> rotate (degrees 120)
              |> move (0,-5)
              |> move (0, abs(2*sin model.time*1))
              |> makeTransparent (1*abs(sin model.time *0.5)),

              curve (0,0) [Pull (10,5) (25,-15)] --water drop 2
              |> filled lightBlue
              |> scale 0.4
              |> rotate (degrees 120)
              |> move (0,10)
              |> move (0, abs(2*sin model.time*2.5))
              |> makeTransparent (3*abs(sin model.time *0.5)) ]
              |> move (0, -10)
             ,rect 90 14
                     |> filled black
                     |> addOutline (solid 1) white
                     |> move (0, 53)
              ,rect 300 60
                   |> filled blue
                   |> move (0,-60)
              ,    text "Explanation"
                   |> bold
                   |> customFont "Helvetica"
                   |> filled black
                   |> scale 0.75
                   |> move (-90,-40)

                   ,text "Washrooms are filled with germs, and after using the bathroom you need to wash off the"
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-48)

                   ,text "germs so you do not spread them elsewhere or get sick."
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-53)

                   , case model.thirdCorrectness of
                       Just Correct ->
                         text "Correct!"
                           |> centered
                           |> filled green
                           |> move (0, 50)
                       Just Incorrect ->
                         text "Incorrect :("
                           |> bold
                           |> centered
                           |> filled white
                           |> move (0, 50)
                       otherwise ->
                         text "should never happen"
                           |> filled black
                   , group [
                       roundedRect 30 13 1
                         |> filled green

                      ,text "Next"
                         |> bold
                         |> filled black
                         |> move (-13, -3)

          ]
              |> notifyTap GoToChoice4
              |> move (70, -57)
            , group [ rect 80 15
             |> filled black
             |> move (-50, 22)
         , text ("Corona Risk Level: " ++ (String.fromInt (model.mistakes * 20)) ++ "%")
             |> centered
             |> size 8
             |> filled white
             |> move (-50, 20)]
           |> scale 0.93
           |> move (-10, 0)

            ]
        Explanation2  ->
            [  rect 400 400
                  |> filled lightBlue,
                 rect 90 14
                     |> filled black
                     |> addOutline (solid 1) white
                     |> move (0, 53)
              ,  rect 50 80
                  |> filled lightCharcoal,
                 circle 10
                  |> filled grey
                  |> move (0, 15),
                 triangle 7
                  |> filled black
                  |> rotate (degrees 90)
                  |> move (0, 15),
                 circle 10
                  |> filled grey
                  |> move (0, -15),
                  triangle 7
                  |> filled black
                  |> rotate (degrees 270)
                  |> move (0, -15),
                  hand
                  |> move (abs(1*sin model.time*50),-10)
              ,   rect 300 65
                   |> filled blue
                   |> move (0,-60)
              ,    text "Explanation"
                   |> bold
                   |> customFont "Helvetica"
                   |> filled black
                   |> scale 0.75
                   |> move (-90,-36)

                   ,text "Though it may look silly, using your elbow helps you prevent germs from spreading to your"
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-44)

                   ,text "hands, which is what you use to interact with. Pressing the button with your finger means more"
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-49)

                   ,text "germs on your finger that are easier to spread compared to your elbow."
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-54)
                   , case model.secondCorrectness of
                       Just Correct ->
                         text "Correct!"
                           |> centered
                           |> filled green
                           |> move (0, 50)
                       Just Incorrect ->
                         text "Incorrect :("
                           |> bold
                           |> centered
                           |> filled white
                           |> move (0, 50)
                       otherwise ->
                         text "should never happen"
                           |> filled black
                   , group [
                       roundedRect 30 13 1
                         |> filled green

                      ,text "Next"
                         |> bold
                         |> filled black
                         |> move (-13, -3)

          ]
              |> notifyTap GoToChoice3
              |> move (70, -57)
            , group [ rect 80 15
             |> filled black
             |> move (-50, 22)
         , text ("Corona Risk Level: " ++ (String.fromInt (model.mistakes * 20)) ++ "%")
             |> centered
             |> size 8
             |> filled white
             |> move (-50, 20)]
           |> scale 0.93
           |> move (-10, 0)


            ]
        Choice4  ->
            [
              rect 200 200
                |> filled lightBlue
                , resetButton |> notifyTap Reset
            , graphPaper 40 |> makeTransparent 0.1, --background
             circle 45 |> filled lightGrey, --outer circle

             rect 10 1 --time stamp up
                  |> filled lightBlue
                  |> move (40,0),
              rect 10 1 --time stamp down
                  |> filled lightBlue
                  |> move (-40,0),
              rect 1 10 --time stamp right
                  |> filled lightBlue
                  |> move (0,40),
              rect 1 10 --time stamps left
                  |> filled lightBlue
                  |> move (0,-40),
              rect 10 1 --time stamp
                  |> filled lightBlue
                  |> rotate (degrees 30)
                  |> move (32,25),
                rect 10 1 --time stamp
                  |> filled lightBlue
                  |> rotate (degrees 30)
                  |> move (-32,-25),
                rect 1 10 --time stamp
                  |> filled lightBlue
                  |> rotate (degrees 240)
                  |> move (-29,29),
                rect 1 10 --time stamp
                  |> filled lightBlue
                  |> rotate (degrees 240)
                  |> move (29,-29),
              circle 45 |> outlined (solid 2) black, --outlined black circle

              circle 5 |> filled lightBlue |> move (0,0),  --inner blue circle
              circle 5 |> outlined (solid 1) black  |> move (0,0),



            roundedRect 5 40 5 --slower longer tick
                     |> filled black
                     |> move (0,20)
                     |> rotate (-0.08* model.time ),
              roundedRect 5 30 5 --moving tick
                     |> filled darkGrey
                     |> move (0,15)
                     |> rotate (-0.8*model.time ),
              roundedRect 5 30 5 --moving tick outline
                     |> outlined (solid 1) black
                     |> move (0,15)
                     |> rotate (-0.8*model.time )

            , rect 180 20.5
                    |> centered
                    |> filled black
                    |> addOutline (solid 1) white
                    |> move (0, 53)
            , if (model.thirdCorrectness == Just Correct) then
                  text "You choose to wash your hands."
                    |> size 6
                    |> centered
                    |> filled white
                    |> move (0, 56)
              else if (model.thirdCorrectness == Just Incorrect) then
                  text "Though you refuse to wash your hands, you do it anyways."
                    |> size 6
                    |> centered
                    |> filled white
                    |> move (0, 56)
               else
                 text "Though you refuse to wash your hands, you do it anyways."
                    |> size 6
                    |> centered
                    |> filled white
                    |> move (0, 56)
             , text "How long do you scrub your hands for?"
                 |> size 6
                 |> centered
                 |> filled white
                 |> move (0, 48)
             ,  group[rect 80 10
                   |> centered
                   |> filled lightYellow
                   |> addOutline (solid 1) black
                   |> move (-60,-61)
                   |> notifyTap (GoToExplanation4 Incorrect)
                 , text "Atleast 5 seconds"
                   |> filled black
                   |> scale 0.4
                   |> move (-75,-62)
                   |> notifyTap (GoToExplanation4 Incorrect)]
                   |> move (10, 10)
                 , group [ rect 80 10
                   |> centered
                   |> filled lightYellow
                   |> addOutline (solid 1) black
                   |> move (70,-61)
                   |> notifyTap (GoToExplanation4 Correct)
                 , text "Atleast 20 seconds"
                   |> centered
                   |> filled black
                   |> scale 0.4
                   |> move (70,-62)
                   |> notifyTap (GoToExplanation4 Correct) ]
                   |> move (-20, 10)


                 ,  group[rect 80 10
                   |> centered
                   |> filled lightYellow
                   |> addOutline (solid 1) black
                   |> move (-60,-61)
                   |> notifyTap (GoToExplanation4 Incorrect)
                 , text "Atleast 2 minute"
                   |> filled black
                   |> scale 0.4
                   |> move (-75,-62)
                   |> notifyTap (GoToExplanation4 Incorrect)]
                   |> move (10, 24)
                 , group [ rect 80 10
                   |> centered
                   |> filled lightYellow
                   |> addOutline (solid 1) black
                   |> move (70,-61)
                   |> notifyTap (GoToExplanation4 Incorrect)
                 , text "Atleast 5 minutes"
                   |> centered
                   |> filled black
                   |> scale 0.4
                   |> move (70,-62)
                   |> notifyTap (GoToExplanation4 Incorrect) ]
                   |> move (-20, 24)
            ]
        Explanation1  ->
            [rect 1000 400
                     |> filled darkOrange,
                  rect 90 14
                     |> filled black
                     |> addOutline (solid 1) white
                     |> move (0, 53)
                ,  rect 40 90
                     |> filled lightBlue
                     |> move (35, 0),
                  rect 35 90
                     |>filled darkGrey
                     |> move (0, 0),
                  rect 35 90
                     |> outlined (solid 1) black
                     |> move (0, 0),
                  rect 40 90
                     |> filled darkGrey
                     |> move (55, 0)
                     |> move (18* cos model.time, 0),
                  rect 40 90
                     |> outlined (solid 1) black
                     |> move (55, 0)
                     |> move (18* cos model.time, 0),

                   group[ rect 50 90
                     |> filled darkGray
                     |> move (-70, 0),
                   circle 3
                     |> filled yellow
                     |> move (-50,0),
                   rect 300 50
                   |> filled darkBrown
                   |> move (0,-60)]
                   |> move (10, 0),
                   rect 300 60
                   |> filled blue
                   |> move (0,-60),

                    text "Explanation"
                   |> bold
                   |> customFont "Helvetica"
                   |> filled black
                   |> scale 0.75
                   |> move (-90,-40.8)

                   ,text "Door knobs are touched by many people with dirty hands, and touching the door handle can"
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-48.8)

                   ,text "spread germs and bacteria to your hands, where you can get sick or spread"
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-53.8)

                   ,text "the germs further."
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-58.8)
                   , case model.firstCorrectness of
                       Just Correct ->
                         text "Correct!"
                           |> centered
                           |> filled green
                           |> move (0, 50)
                       Just Incorrect ->
                         text "Incorrect :("
                           |> bold
                           |> centered
                           |> filled white
                           |> move (0, 50)
                       otherwise ->
                         text "should never happen"
                           |> filled black
                   , group [
                       roundedRect 30 13 1
                         |> filled green

                      ,text "Next"
                         |> bold
                         |> filled black
                         |> move (-13, -3)

          ]
              |> notifyTap GoToChoice2
              |> move (70, -57)
           , group [ rect 80 15
             |> filled black
             |> move (-50, 22)
         , text ("Corona Risk Level: " ++ (String.fromInt (model.mistakes * 20)) ++ "%")
             |> centered
             |> size 8
             |> filled white
             |> move (-50, 20)]
           |> scale 0.93
           |> move (-10, 0)


            ]
        Explanation4  -> [
              rect 300 300
                |> filled lightBlue
              , rect 300 60
                   |> filled blue
                   |> move (0,-60)
            , circle 45 |> filled lightGrey, --outer circle

             rect 10 1 --time stamp up
                  |> filled lightBlue
                  |> move (40,0),
              rect 10 1 --time stamp down
                  |> filled lightBlue
                  |> move (-40,0),
              rect 1 10 --time stamp right
                  |> filled lightBlue
                  |> move (0,40),
              rect 1 10 --time stamps left
                  |> filled lightBlue
                  |> move (0,-40),
              rect 10 1 --time stamp
                  |> filled lightBlue
                  |> rotate (degrees 30)
                  |> move (32,25),
                rect 10 1 --time stamp
                  |> filled lightBlue
                  |> rotate (degrees 30)
                  |> move (-32,-25),
                rect 1 10 --time stamp
                  |> filled lightBlue
                  |> rotate (degrees 240)
                  |> move (-29,29),
                rect 1 10 --time stamp
                  |> filled lightBlue
                  |> rotate (degrees 240)
                  |> move (29,-29),
              circle 45 |> outlined (solid 2) black, --outlined black circle

              circle 5 |> filled lightBlue |> move (0,0),  --inner blue circle
              circle 5 |> outlined (solid 1) black  |> move (0,0),



            roundedRect 5 40 5 --slower longer tick
                     |> filled black
                     |> move (0,20)
                     |> rotate (-0.08* model.time ),
              roundedRect 5 30 5 --moving tick
                     |> filled darkGrey
                     |> move (0,15)
                     |> rotate (-0.8*model.time ),
              roundedRect 5 30 5 --moving tick outline
                     |> outlined (solid 1) black
                     |> move (0,15)
                     |> rotate (-0.8*model.time )

                , rect 90 14
                     |> filled black
                     |> addOutline (solid 1) white
                     |> move (0, 53)
                , text "Explanation"
                   |> bold
                   |> customFont "Helvetica"
                   |> filled black
                   |> scale 0.75
                   |> move (-90,-40.8)

                   ,text "Washing your hands for atleast 20 seconds is ideal to make sure you get all the germs off."
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-48.8)

                   ,text "Washing 5 seconds is too short, and washing 2 or 6 minutes is excessive."
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-53.8)

                   ,text "Tip: Sing happy birthday twice while washing your hands!"
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-60)
                   , case model.fourthCorrectness of
                       Just Correct ->
                         text "Correct!"
                           |> centered
                           |> filled green
                           |> move (0, 50)
                       Just Incorrect ->
                         text "Incorrect :("
                           |> bold
                           |> centered
                           |> filled white
                           |> move (0, 50)
                       otherwise ->
                         text "should never happen"
                           |> filled black
                   , group [
                       roundedRect 30 13 1
                         |> filled green

                      ,text "Next"
                         |> bold
                         |> filled black
                         |> move (-13, -3)

          ]
              |> notifyTap GoToChoice5
              |> move (70, -57)

            , group [ rect 80 15
             |> filled black
             |> move (-50, 22)
         , text ("Corona Risk Level: " ++ (String.fromInt (model.mistakes * 20)) ++ "%")
             |> centered
             |> size 8
             |> filled white
             |> move (-50, 20)]
           |> scale 0.93
           |> move (-10, 0)
            ]
        Explanation8  ->
            [
                  rect 500 200
                   |> filled (rgb 255 206 180),
                   rect 500 49
                   |> filled (rgb 193 154 107)
                   |> move (0,-39),
                   rect 40 60
                   |> filled darkBrown
                   |> move (-20,15),
                    rect 30 15
                   |> outlined (solid 1) black
                   |> move (-19.5,30),
                   rect 30 30
                   |> outlined (solid 1) black
                   |> move (-19.5,5),
                   circle 2
                   |> filled black
                   |> move (-30, 10),


                   circle 8
                   |> filled (rgb 80 51 53)
                   |> move (5*sin model.time, 10),
                   rect 3 8
                   |> filled (rgb 80 51 53)
                   |> rotate (degrees -75)
                   |> move (5*sin model.time, 8)
                   |> move (7,-9),
                   rect 3.5 4
                   |> filled (rgb 80 51 53)
                   |> rotate (degrees 10)
                   |> move (5*sin model.time, 8)
                   |> move (9.5,-5)
                   |> skewX (degrees 36)
                   |> makeTransparent (sin(model.time)),
                   rect 3 7
                   |> filled (rgb 80 51 53)
                   |> rotate (degrees 10)
                   |> move (5*sin model.time, 8)
                   |> move (10,-6.25)
                   |> skewX (degrees -36)
                   |> makeTransparent (-1*sin(model.time)),
                   rect 3 9
                   |> filled (rgb 80 51 53)
                   |> rotate (degrees -50)
                   |> move (5*sin model.time, 8)
                   |> move (-6,-12),

                   rect 8.5 15
                   |> filled red
                   |> move (5*sin model.time, -4),

                   rect 7 10
                   |> filled black
                   |> move (5*sin model.time, -4)
                   |> move (4,-10)
                   |> skewX (turns -0.07),
                   rect 7 10
                   |> filled black
                   |> move (5*sin model.time, -4)
                   |> move (-4,-10)
                   |> skewX (turns 0.07),

                   oval 2 4
                   |> filled black
                   |> move (5*sin model.time, -4)
                   |> move (4,15),
                   oval 2 4
                   |> filled black
                   |> move (5*sin model.time, -4)
                   |> move (-4,15),

                   circle 2
                   |> filled black
                   |> move (-10,0)
                   |> rotate (degrees -90)
                   |> move (5*sin model.time, -4)
                , rect 300 60
                   |> filled blue
                   |> move (0,-60)
                , rect 90 14
                     |> filled black
                     |> addOutline (solid 1) white
                     |> move (0, 53)
                , text "Explanation"
                   |> bold
                   |> customFont "Helvetica"
                   |> filled black
                   |> scale 0.75
                   |> move (-90,-40.8)

                   ,text "Though giving a fistbump is more sanitary than giving a high-five, it is always better to avoid"
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-48.8)

                   ,text "physical contact when there is a sickness going around, like the"
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-53.8)
                   ,text "Coronavirus."
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-58.8)
                   , case model.eighthCorrectness of
                       Just Correct ->
                         text "Correct!"
                           |> centered
                           |> filled green
                           |> move (0, 50)
                       Just Incorrect ->
                         text "Incorrect :("
                           |> bold
                           |> centered
                           |> filled white
                           |> move (0, 50)
                       otherwise ->
                         text "should never happen"
                           |> filled black
                   , group [
                       roundedRect 30 13 1
                         |> filled green

                      ,text "Next"
                         |> bold
                         |> filled black
                         |> move (-13, -3)

          ]
              |> notifyTap GoToChoice9
              |> move (70, -57)
            , group [ rect 80 15
             |> filled black
             |> move (-50, 22)
         , text ("Corona Risk Level: " ++ (String.fromInt (model.mistakes * 20)) ++ "%")
             |> centered
             |> size 8
             |> filled white
             |> move (-50, 20)]
           |> scale 0.93
           |> move (-10, 0)
            ]
        Explanation7  ->
            [
                  rect 500 500
                    |> filled lightBlue
                 ,rect 300 60
                   |> filled blue
                   |> move (0,-60)
                ,group[ polygon [(0,0),(0,-30),(30,-50),(80,-30),(80,0),(50,15)]
               |> filled grey
               |>move (-50,0)
           , polygon [(-50,0),(-50,-30),(-20,-50),(-20,-15)]
               |>filled darkGrey
           , polygon [(-25,-1),(-20,-3),(4,4),(-1,6)]
               |>filled black
           , polygon [(-20,-15),(30,0),(29.9,0.01)]
               |>filled black
           , polygon [(-20,-2),(-2,3),(0,25),(-25,17)]
               |>filled white
               ]
               |> move (0, 18)
                , rect 90 14
                     |> filled black
                     |> addOutline (solid 1) white
                     |> move (0, 53)
                , text "Explanation"
                   |> bold
                   |> customFont "Helvetica"
                   |> filled black
                   |> scale 0.75
                   |> move (-90,-40.8)

                   ,text "Sneezing into your elbow is the best way to avoid spreading germs into the air or towards"
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-48.8)

                   ,text "others. Sneezing in the air is the best way to spread germs, and you use"
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-53.8)

                   ,text "your hand to touch around and interact with things."
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-58.8)
                   , case model.seventhCorrectness of
                       Just Correct ->
                         text "Correct!"
                           |> centered
                           |> filled green
                           |> move (0, 50)
                       Just Incorrect ->
                         text "Incorrect :("
                           |> bold
                           |> centered
                           |> filled white
                           |> move (0, 50)
                       otherwise ->
                         text "should never happen"
                           |> filled black
                   , group [
                       roundedRect 30 13 1
                         |> filled green

                      ,text "Next"
                         |> bold
                         |> filled black
                         |> move (-13, -3)

          ]
              |> notifyTap GoToChoice8
              |> move (70, -57)
            , group [ rect 80 15
             |> filled black
             |> move (-50, 22)
         , text ("Corona Risk Level: " ++ (String.fromInt (model.mistakes * 20)) ++ "%")
             |> centered
             |> size 8
             |> filled white
             |> move (-50, 20)]
           |> scale 0.93
           |> move (-10, 0)
            ]
        Explanation6  ->
            [
                rect 500 500
                  |> filled lightBlue
                , rect 500 75
                |> filled red
                |> move (100,30),

               rightTriangle 36 15
                |> filled red
                |> scale 4.15
                |> rotate (degrees 270)
                |> scaleX 2.25
                |> move (-100,75),
                 rect 80 15
                |> filled lightBrown,
                rect 80 15
                |> filled lightBrown
                |> move (25,25),
                rect 80 15
                |> filled lightBrown
                |> move (50,50),
                rect 80 15
                |> filled lightBrown
                |> move (12.5,12.5),
                rect 80 15
                |> filled lightBrown
                |> move (37.5,37.5),
                 rect 50 10
                |> filled yellow
                |> scale 0.5
                |> scaleX 0.25
                |> rotate (degrees 180)
                |> move (-50,30),
                rect 100 10
                |> filled brown
                |> scale 0.75
                |> scaleX 1.25
                |> scaleY 1
                |> rotate (degrees 45)
                |> move (-30,45),
                rect 30 10
                |> filled black
                |> scaleX 1.25
                |> rotate (degrees 360)
                |> move (50,63)
                , rect 90 14
                     |> filled black
                     |> addOutline (solid 1) white
                     |> move (0, 53)
                , rect 300 60
                   |> filled blue
                   |> move (0,-60)
                , text "Explanation"
                   |> bold
                   |> customFont "Helvetica"
                   |> filled black
                   |> scale 0.75
                   |> move (-90,-40.8)

                   ,text "People can spread bacteria through hand rails, as many people touch them. Touching hand"
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-48.8)

                   ,text "railings spreads bacteria to your hands, allowing you to get sick and"
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-53.8)

                   ,text "spread it more."
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-58.8)
                   , case model.sixthCorrectness of
                       Just Correct ->
                         text "Correct!"
                           |> centered
                           |> filled green
                           |> move (0, 50)
                       Just Incorrect ->
                         text "Incorrect :("
                           |> bold
                           |> centered
                           |> filled white
                           |> move (0, 50)
                       otherwise ->
                         text "should never happen"
                           |> filled black
                   , group [
                       roundedRect 30 13 1
                         |> filled green

                      ,text "Next"
                         |> bold
                         |> filled black
                         |> move (-13, -3)

          ]
              |> notifyTap GoToChoice7
              |> move (70, -57)
            , group [ rect 80 15
             |> filled black
             |> move (-50, 22)
         , text ("Corona Risk Level: " ++ (String.fromInt (model.mistakes * 20)) ++ "%")
             |> centered
             |> size 8
             |> filled white
             |> move (-50, 20)]
           |> scale 0.93
           |> move (-10, 0)
            ]
        Explanation5  ->
            [
                 rect 500 500
                   |> filled lightBlue
                ,rect 300 60
                   |> filled blue
                   |> move (0,-60)
                ,rect 35 40
                  |> filled brown
                  |> move (30,40),

                  oval 10 35
                  |> filled brown
                  |> rotate (degrees 90)
                  |> move (30, 60),
                  oval 5 15
                  |> filled gray
                  |> rotate (degrees 90)
                  |> move (30, 60),
                  oval 10 35
                  |> filled brown
                  |> rotate (degrees 90)
                  |> move (30, 20)
                  ,
                  rect 35 40
                  |> filled brown
                  |> move (70,40),

                  oval 10 35
                  |> filled brown
                  |> rotate (degrees 90)
                  |> move (70, 60),
                  oval 5 15
                  |> filled gray
                  |> rotate (degrees 90)
                  |> move (70, 60),
                  oval 10 35
                  |> filled brown
                  |> rotate (degrees 90)
                  |> move (70, 20),

                 roundedRect 50 70 15
                  |> filled white
                  |> rotate (degrees 90)
                  |> move (-50, 40)
                  ,
                  circle 5
                  |> filled gray
                  |> move (-32 , 30)
                 ,
                 rect 60 0.5
                 |> filled gray
                 |> move (-50, 50)
                 ,
                 wedge 10 1
                 |> filled gray
                 |> move (-65, 35),
                rect 20 10
                |> filled gray
                |> move (-65, 30),

                openPolygon [(0,0),(0,10),(-10,0)]
                |> filled white
                |> move (-52, 25),

               openPolygon [(0,0),(0,10),(10,0)]
                |> filled white
                |> move (-78, 25)
                ,
              openPolygon [(0,0),(0,20),(20,0)]
                |> filled lightBlue
                |> move (-85, 6)
                 ,
                 openPolygon [(0,0),(0,20),(-20,0)]
                |> filled lightBlue
                |> move (-15.5, 6),


                 hand1
                  |> move (abs(2*cos model.time*100),-10)

                , rect 90 14
                     |> filled black
                     |> addOutline (solid 1) white
                     |> move (0, 53)
                , text "Explanation"
                   |> bold
                   |> customFont "Helvetica"
                   |> filled black
                   |> scale 0.75
                   |> move (-90,-40.8)

                   ,text "First off, washing your hands does not completely rid them of bacteria, and wet hands can"
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-47.8)

                   ,text "spread bacteria easier than dry hands. Secondly, air dryers absorb air that"
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-52.8)

                   ,text " contains bacteria, and when you put your hands under them, it spits the"
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-57.8)
                   ,text "bacteria onto your hands, effectively making your hands dirty again."
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-62.8)
                   , case model.fifthCorrectness of
                       Just Correct ->
                         text "Correct!"
                           |> centered
                           |> filled green
                           |> move (0, 50)
                       Just Incorrect ->
                         text "Incorrect :("
                           |> bold
                           |> centered
                           |> filled white
                           |> move (0, 50)
                       otherwise ->
                         text "should never happen"
                           |> filled black
                   , group [
                       roundedRect 30 13 1
                         |> filled green

                      ,text "Next"
                         |> bold
                         |> filled black
                         |> move (-13, -3)

          ]
              |> notifyTap GoToChoice6
              |> move (70, -57)
            , group [ rect 80 15
             |> filled black
             |> move (-50, 22)
         , text ("Corona Risk Level: " ++ (String.fromInt (model.mistakes * 20)) ++ "%")
             |> centered
             |> size 8
             |> filled white
             |> move (-50, 20)]
           |> scale 0.93
           |> move (-10, 0)
            ]
        Explanation9  ->
            [
                rect 500 200
                |> filled (rgb 255 206 180)
           , rect 500 30
                   |> filled (rgb 193 154 107)
                   |> move (0,-56)
           , group[ rect 40 60
                   |> filled darkBrown
                   |> move (-20,15),
                    rect 30 15
                   |> outlined (solid 1) black
                   |> move (-19.5,30),
                   rect 30 30
                   |> outlined (solid 1) black
                   |> move (-19.5,5),
                   circle 2
                   |> filled black
                   |> move (-30, 10)]
                 |> scale 1.5
                 |> move (20, -20)
                , rect 300 60
                   |> filled blue
                   |> move (0,-60)
                , rect 90 14
                     |> filled black
                     |> addOutline (solid 1) white
                     |> move (0, 53)
                , text "Explanation"
                   |> bold
                   |> customFont "Helvetica"
                   |> filled black
                   |> scale 0.75
                   |> move (-90,-40.8)

                   ,text "Using your hands to open a doorknob is the worst thing you can do. People touch doorknobs"
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-48.8)

                   ,text "with their hands and the knobs overflow with bacteria. Open it with"
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-53.8)

                   ,text "something else, like your elbows or a tissue."
                   |> filled yellow
                   |> scale 0.4
                   |> move (-90,-58.8)
                   , case model.ninthCorrectness of
                       Just Correct ->
                         text "Correct!"
                           |> centered
                           |> filled green
                           |> move (0, 50)
                       Just Incorrect ->
                         text "Incorrect :("
                           |> bold
                           |> centered
                           |> filled white
                           |> move (0, 50)
                       otherwise ->
                         text "should never happen"
                           |> filled black
                   , group [
                       roundedRect 30 13 1
                         |> filled green

                      ,text "Next"
                         |> bold
                         |> filled black
                         |> move (-13, -3)

          ]
              |> notifyTap GoToEnd
              |> move (70, -57)
            , group [ rect 80 15
             |> filled black
             |> move (-50, 22)
         , text ("Corona Risk Level: " ++ (String.fromInt (model.mistakes * 20)) ++ "%")
             |> centered
             |> size 8
             |> filled white
             |> move (-50, 20)]
           |> scale 0.93
           |> move (-10, 0)

            ]
        Choice6  ->
            [
               rect 200 200
                |> filled lightBlue
             , rect 500 75
                |> filled red
                |> move (100,30),

               rightTriangle 36 15
                |> filled red
                |> scale 4.15
                |> rotate (degrees 270)
                |> scaleX 2.25
                |> move (-100,75),
                 rect 80 15
                |> filled lightBrown,
                rect 80 15
                |> filled lightBrown
                |> move (25,25),
                rect 80 15
                |> filled lightBrown
                |> move (50,50),
                rect 80 15
                |> filled lightBrown
                |> move (12.5,12.5),
                rect 80 15
                |> filled lightBrown
                |> move (37.5,37.5),
                 rect 50 10
                |> filled yellow
                |> scale 0.5
                |> scaleX 0.25
                |> rotate (degrees 180)
                |> move (-50,30),
                rect 100 10
                |> filled brown
                |> scale 0.75
                |> scaleX 1.25
                |> scaleY 1
                |> rotate (degrees 45)
                |> move (-30,45),
                rect 30 10
                |> filled black
                |> scaleX 1.25
                |> rotate (degrees 360)
                |> move (50,63)
            , rect 185 30
                    |> centered
                    |> filled black
                    |> addOutline (solid 1) white
                    |> move (0, -25)
            , text "After exiting the bathroom, you find an entrance to a stairwell beside you,"
                  |> size 6
                  |> centered
                  |> filled white
                  |> move (0, -18)
            , text "and decide to take the stairwell instead."
                  |> size 6
                  |> centered
                  |> filled white
                  |> move (0, -26)
            , text "Do you hold onto the railing while climbing the stairs?"
                  |> size 6
                  |> centered
                  |> filled white
                  |> move (0, -36)
            ,  group[rect 80 10
                   |> centered
                   |> filled lightYellow
                   |> addOutline (solid 1) black
                   |> move (-60,-61)
                   |> notifyTap (GoToExplanation6 Correct)
                 , text "Don't Hold onto the Railing"
                   |> filled black
                   |> scale 0.4
                   |> move (-87,-62)
                   |> notifyTap (GoToExplanation6 Correct)]
                   |> move (10, 10)
                 , group [ rect 80 10
                   |> centered
                   |> filled lightYellow
                   |> addOutline (solid 1) black
                   |> move (70,-61)
                   |> notifyTap (GoToExplanation6 Incorrect)
                 , text "Hold onto the Railing"
                   |> centered
                   |> filled black
                   |> scale 0.4
                   |> move (70,-62)
                   |> notifyTap (GoToExplanation6 Incorrect) ]
                   |> move (-20, 10)
                   , resetButton |> notifyTap Reset

            ]
        Choice7  ->
            [
              rect 200 200
                |> filled lightBlue
            ,group[ polygon [(0,0),(0,-30),(30,-50),(80,-30),(80,0),(50,15)]
               |> filled grey
               |>move (-50,0)
           , polygon [(-50,0),(-50,-30),(-20,-50),(-20,-15)]
               |>filled darkGrey
           , polygon [(-25,-1),(-20,-3),(4,4),(-1,6)]
               |>filled black
           , polygon [(-20,-15),(30,0),(29.9,0.01)]
               |>filled black
           , polygon [(-20,-2),(-2,3),(0,25),(-25,17)]
               |>filled white
               ]
               |> move (0, 18)
            , rect 180 20.5
                    |> centered
                    |> filled black
                    |> addOutline (solid 1) white
                    |> move (0, 53)
            , text "As you get to the top of the stairwell, you feel the need to sneeze."
                  |> size 6
                  |> centered
                  |> filled white
                  |> move (0, 56)
            , text "Where do you sneeze? "
                  |> size 6
                  |> centered
                  |> filled white
                  |> move (0, 48)
            , group[rect 80 10
                   |> centered
                   |> filled lightYellow
                   |> addOutline (solid 1) black
                   |> move (-60,-61)
                   |> notifyTap (GoToExplanation7 Incorrect)
                 , text "Into your Hand"
                   |> filled black
                   |> scale 0.4
                   |> move (-75,-62)
                   |> notifyTap (GoToExplanation7 Incorrect)]
                   |> move (10, 10)


                 ,  group[rect 80 10
                   |> centered
                   |> filled lightYellow
                   |> addOutline (solid 1) black
                   |> move (-60,-61)
                   |> notifyTap (GoToExplanation7 Correct)
                 , text "Into your Elbow"
                   |> filled black
                   |> scale 0.4
                   |> move (-75,-62)
                   |> notifyTap (GoToExplanation7 Correct)]
                   |> move (10, 24)
                 , group [ rect 80 10
                   |> centered
                   |> filled lightYellow
                   |> addOutline (solid 1) black
                   |> move (70,-61)
                   |> notifyTap (GoToExplanation7 Incorrect)
                 , text "Into the Air"
                   |> centered
                   |> filled black
                   |> scale 0.4
                   |> move (70,-62)
                   |> notifyTap (GoToExplanation7 Incorrect) ]
                   |> move (-20, 24)
                   , resetButton |> notifyTap Reset

            ]
        Choice8  ->
            [
              rect 500 200
                   |> filled (rgb 255 206 180),
                   rect 500 49
                   |> filled (rgb 193 154 107)
                   |> move (0,-39),

                   rect 40 60
                   |> filled darkBrown
                   |> move (-20,15),
                    rect 30 15
                   |> outlined (solid 1) black
                   |> move (-19.5,30),
                   rect 30 30
                   |> outlined (solid 1) black
                   |> move (-19.5,5),
                   circle 2
                   |> filled black
                   |> move (-30, 10), --door


                   circle 8
                   |> filled (rgb 80 51 53)
                   |> move (5*sin model.time, 10),
                   rect 3 8
                   |> filled (rgb 80 51 53)
                   |> rotate (degrees -75)
                   |> move (5*sin model.time, 8)
                   |> move (7,-9),
                   rect 3.5 4
                   |> filled (rgb 80 51 53)
                   |> rotate (degrees 10)
                   |> move (5*sin model.time, 8)
                   |> move (9.5,-5)
                   |> skewX (degrees 36)
                   |> makeTransparent (sin(model.time)),
                   rect 3 7
                   |> filled (rgb 80 51 53)
                   |> rotate (degrees 10)
                   |> move (5*sin model.time, 8)
                   |> move (10,-6.25)
                   |> skewX (degrees -36)
                   |> makeTransparent (-1*sin(model.time)),
                   rect 3 9
                   |> filled (rgb 80 51 53)
                   |> rotate (degrees -50)
                   |> move (5*sin model.time, 8)
                   |> move (-6,-12),

                   rect 8.5 15
                   |> filled red
                   |> move (5*sin model.time, -4),

                   rect 7 10
                   |> filled black
                   |> move (5*sin model.time, -4)
                   |> move (4,-10)
                   |> skewX (turns -0.07),
                   rect 7 10
                   |> filled black
                   |> move (5*sin model.time, -4)
                   |> move (-4,-10)
                   |> skewX (turns 0.07),

                   oval 2 4
                   |> filled black
                   |> move (5*sin model.time, -4)
                   |> move (4,15),
                   oval 2 4
                   |> filled black
                   |> move (5*sin model.time, -4)
                   |> move (-4,15),

                   circle 2
                   |> filled black
                   |> move (-10,0)
                   |> rotate (degrees -90)
                   |> move (5*sin model.time, -4) --person

            , rect 180 29
                    |> centered
                    |> filled black
                    |> addOutline (solid 1) white
                    |> move (0, 49)
            , text "After you arrive at the room, you see your friend waiting"
                  |> size 6
                  |> centered
                  |> filled white
                  |> move (0, 56)
            , text "and they want to say hello."
                  |> size 6
                  |> centered
                  |> filled white
                  |> move (0, 48)
            , text "How do you greet them?"
                  |> size 6
                  |> centered
                  |> filled white
                  |> move (0, 40)
            , group[rect 80 10
                   |> centered
                   |> filled lightYellow
                   |> addOutline (solid 1) black
                   |> move (-60,-61)
                   |> notifyTap (GoToExplanation8 Correct)
                 , text "Just say Hi"
                   |> filled black
                   |> scale 0.4
                   |> move (-75,-62)
                   |> notifyTap (GoToExplanation8 Correct)]
                   |> move (10, 10)


                 ,  group[rect 80 10
                   |> centered
                   |> filled lightYellow
                   |> addOutline (solid 1) black
                   |> move (-60,-61)
                   |> notifyTap (GoToExplanation8 Incorrect)
                 , text "Give them a fistbump"
                   |> filled black
                   |> scale 0.4
                   |> move (-80,-62)
                   |> notifyTap (GoToExplanation8 Incorrect)]
                   |> move (10, 24)
                 , group [ rect 80 10
                   |> centered
                   |> filled lightYellow
                   |> addOutline (solid 1) black
                   |> move (70,-61)
                   |> notifyTap (GoToExplanation8 Incorrect)
                 , text "Give them a high-five"
                   |> centered
                   |> filled black
                   |> scale 0.4
                   |> move (70,-62)
                   |> notifyTap (GoToExplanation8 Incorrect) ]
                   |> move (-20, 24)
                   , resetButton |> notifyTap Reset

            ]
        Choice9  ->
            [

              rect 500 200
                |> filled (rgb 255 206 180)
           , rect 500 30
                   |> filled (rgb 193 154 107)
                   |> move (0,-56)
           , group[ rect 40 60
                   |> filled darkBrown
                   |> move (-20,15),
                    rect 30 15
                   |> outlined (solid 1) black
                   |> move (-19.5,30),
                   rect 30 30
                   |> outlined (solid 1) black
                   |> move (-19.5,5),
                   circle 2
                   |> filled black
                   |> move (-30, 10)]
                 |> scale 1.5
                 |> move (20, -20)
            , rect 180 20.5
                    |> centered
                    |> filled black
                    |> addOutline (solid 1) white
                    |> move (0, 53)
            , text "They politely allow you to go first, and you must open the door."
                  |> size 6
                  |> centered
                  |> filled white
                  |> move (0, 56)
            , text "How do you open the door?"
                  |> size 6
                  |> centered
                  |> filled white
                  |> move (0, 48)
             , group[rect 80 10
                   |> centered
                   |> filled lightYellow
                   |> addOutline (solid 1) black
                   |> move (-60,-61)
                   |> notifyTap (GoToExplanation9 Correct)
                 , text "Use a tissue to open the doorknob"
                   |> filled black
                   |> scale 0.4
                   |> move (-95,-62)
                   |> notifyTap (GoToExplanation9 Correct)]
                   |> move (10, 10)


                ,  group[rect 80 10
                   |> centered
                   |> filled lightYellow
                   |> addOutline (solid 1) black
                   |> move (-60,-61)
                   |> notifyTap (GoToExplanation9 Incorrect)
                 , text "Open the doorknob with your hands"
                   |> filled black
                   |> scale 0.4
                   |> move (-95,-62)
                   |> notifyTap (GoToExplanation9 Incorrect)]
                   |> move (10, 24)
                 , group [ rect 80 10
                   |> centered
                   |> filled lightYellow
                   |> addOutline (solid 1) black
                   |> move (70,-61)
                   |> notifyTap (GoToExplanation9 Correct)
                 , text "Use your elbows to open the doorknob"
                   |> centered
                   |> filled black
                   |> scale 0.4
                   |> move (70,-62)
                   |> notifyTap (GoToExplanation9 Correct) ]
                   |> move (-20, 24)
                   , resetButton |> notifyTap Reset

            ]
        End  ->
            [

              rect 200 200
                |> filled lightBlue
            , group [circle 8
                   |> filled (rgb 80 51 53)
                   |> move (5*sin model.time, 10),
                   rect 3 8
                   |> filled (rgb 80 51 53)
                   |> rotate (degrees -75)
                   |> move (5*sin model.time, 8)
                   |> move (7,-9),
                   rect 3.5 4
                   |> filled (rgb 80 51 53)
                   |> rotate (degrees 10)
                   |> move (5*sin model.time, 8)
                   |> move (9.5,-5)
                   |> skewX (degrees 36)
                   |> makeTransparent (sin(model.time)),
                   rect 3 7
                   |> filled (rgb 80 51 53)
                   |> rotate (degrees 10)
                   |> move (5*sin model.time, 8)
                   |> move (10,-6.25)
                   |> skewX (degrees -36)
                   |> makeTransparent (-1*sin(model.time)),
                   rect 3 9
                   |> filled (rgb 80 51 53)
                   |> rotate (degrees -50)
                   |> move (5*sin model.time, 8)
                   |> move (-6,-12),

                   rect 8.5 15
                   |> filled red
                   |> move (5*sin model.time, -4),

                   rect 7 10
                   |> filled black
                   |> move (5*sin model.time, -4)
                   |> move (4,-10)
                   |> skewX (turns -0.07),
                   rect 7 10
                   |> filled black
                   |> move (5*sin model.time, -4)
                   |> move (-4,-10)
                   |> skewX (turns 0.07),

                   oval 2 4
                   |> filled black
                   |> move (5*sin model.time, -4)
                   |> move (4,15),
                   oval 2 4
                   |> filled black
                   |> move (5*sin model.time, -4)
                   |> move (-4,15),

                   circle 2
                   |> filled black
                   |> move (-10,0)
                   |> rotate (degrees -90)
                   |> move (5*sin model.time, -4)]
                   |> scale 1.5
                   |> move (0, 10)

            , group [rect 185 20.5
                    |> centered
                    |> filled black
                    |> addOutline (solid 1) white
                    |> move (0, 53)
             , text "You entered through the door, and your friend followed you through. You"
                  |> centered
                  |> size 6
                  |> filled white
                  |> move (0, 55)
             ,text "and your friend talked for an hour and had a great time! It was awesome."
                  |> centered
                  |> size 6
                  |> filled white
                  |> move (0, 47)]
                |> move (0, -5)
             , group [
                 roundedRect 30 13 1
                   |> filled green

                ,text "Next"
                   |> bold
                   |> filled black
                   |> move (-13, -3)

          ]
              |> notifyTap GoToEnd1
              |> move (70, -57)
          , group[rect 5 40 --left front legs
                  |> filled (rgb 133 94 66)
                  |> move (-27.5, -17.5),
                  rect 5 40
                  |> outlined (solid 0.5) black
                  |> move (-27.5, -17.5),

                  rect 2 35
                  |> filled (rgb 133 94 66)
                  |> move (-23.75, 9.5)
                  |> skewY (degrees -50),
                  rect 2 35
                  |> outlined (solid 0.5) black
                  |> move (-23.75, 9.5)
                  |> skewY (degrees -50),

                  rect 5 40 --right front legs
                  |> filled (rgb 133 94 66)
                  |> move (27.5, -17.5),
                  rect 5 40
                  |> outlined (solid 0.5) black
                  |> move (27.5, -17.5),

                  rect 2 35
                  |> filled (rgb 133 94 66)
                  |> move (23.75, 10.5)
                  |> skewY (degrees 50),
                  rect 2 35
                  |> outlined (solid 0.5) black
                  |> move (23.75, 9.5)
                  |> skewY (degrees 50),


                  rect 5 20 --left back legs
                  |> filled (rgb 133 94 66)
                  |> move (-15, -10.5),
                  rect 5 20
                  |> outlined (solid 0.5) black
                  |> move (-15, -10.5),

                  rect 2 17
                  |> filled (rgb 133 94 66)
                  |> move (-11, 3)
                  |> skewY (degrees -50),
                  rect 2 17
                  |> outlined (solid 0.5) black
                  |> move (-11,3)
                  |> skewY (degrees -50),

                  rect 5 20 --right back legs
                  |> filled (rgb 133 94 66)
                  |> move (15, -10.5),
                  rect 5 20
                  |> outlined (solid 0.5) black
                  |> move (15, -10.5),

                  rect 2 17
                  |> filled (rgb 133 94 66)
                  |> move (11, 3)
                  |> skewY (degrees 50),
                  rect 2 17
                  |> outlined (solid 0.5) black
                  |> move (11,3)
                  |> skewY (degrees 50),

                  rect 50 5 --under the table
                  |> filled (rgb 133 94 66),
                  rect 50 5
                  |> outlined (solid 0.5) black,

                  rect 70 2-- Top of the table
                  |> filled (rgb 133 94 66)
                  |> move (0, 3),


                  rect 70 2
                  |> outlined (solid 0.5) black
                  |> move (0,3),

                  rect 40 20-- Top of the table, Skewed
                  |> filled (rgb 133 94 66)
                  |> skewX (degrees 35)
                  |> move (8.5,14)
                  ,





                   rect 40 20-- Top of the table, Skewed
                  |> filled (rgb 133 94 66)
                  |> skewX (degrees -35)
                  |> move (-8.5,14) ]
                  |> scale 0.8
                  |> move (0, -14)


            ]
        End1  ->
            [
               rect 500 500
                 |> filled green
             , text ("Corona Risk Level: " ++ (String.fromInt (model.mistakes * 20)) ++ "%")
                 |> centered
                 |> filled black
                 |> move (0, 44)
             , text (findMistakes model 0)
                  |> centered
                  |> customFont "Helvetica"
                  |> size 5
                  |> filled black
                  |> move (0, 33)
             , text (findMistakes model 1)
                  |> centered
                  |> size 5
                  |> customFont "Helvetica"
                  |> filled black
                  |> move (0, 25)
             , text (findMistakes model 2)
                 |> centered
                 |> size 18
                 |> filled black
                 |> move (0, -15)
              , group[rect 80 20
                   |> centered
                   |> filled lightYellow
                   |> addOutline (solid 1) black
                   |> move (-68,-60)
                 , text "Play Again"
                   |> filled black
                   |> move (-95,-62)]
                   |> move (67, 10)
                   |> notifyTap GoToStartPage


            ]

resetButton = group [ roundedRect 20 10 5 |> filled green |> addOutline (solid 1) black
                                , text "Reset" |> centered |> filled black |> scale 0.25
                                ] |> move (-10,-10) |> notifyTap Reset


type Correctness = Correct | Incorrect

type Msg = Tick Float GetKeyState
         | GoToStartPage
         | GoToInstructionsPage
         | GoToCoronaLevel
         | GoToStoryPage
         | GoToChoice1
         | GoToChoice2
         | GoToExplanation1 Correctness
         | GoToExplanation2 Correctness
         | GoToChoice3
         | GoToExplanation3 Correctness
         | GoToChoice4
         | GoToChoice7
         | GoToChoice9
         | GoToChoice8
         | GoToChoice6
         | GoToChoice5
         | GoToExplanation4 Correctness
         | GoToExplanation5 Correctness
         | GoToExplanation7 Correctness
         | GoToExplanation6 Correctness
         | GoToExplanation8 Correctness
         | GoToExplanation9 Correctness
         | GoToEnd
         | GoToEnd1
         | Reset

type State = StartPage
           | InstructionsPage
           | CoronaLevel
           | StoryPage
           | Choice1
           | Choice2
           | Choice3
           | Choice5
           | Explanation3
           | Explanation2
           | Choice4
           | Explanation1
           | Explanation4
           | Explanation8
           | Explanation7
           | Explanation6
           | Explanation5
           | Explanation9
           | Choice6
           | Choice7
           | Choice8
           | Choice9
           | End
           | End1


update msg model =
    case msg of
        Tick t _ ->
            { model | time = t }
        GoToStartPage ->
            case model.state of
                End1  ->
                    { model | state = StartPage
                     , time = 0
                     , firstCorrectness = Nothing
                     , secondCorrectness = Nothing
                     , thirdCorrectness = Nothing
                     , fourthCorrectness = Nothing
                     , fifthCorrectness = Nothing
                     , sixthCorrectness = Nothing
                     , seventhCorrectness = Nothing
                     , eighthCorrectness = Nothing
                     , ninthCorrectness = Nothing
                     , mistakes = 0}
                otherwise ->
                    model
        GoToInstructionsPage ->
            case model.state of
                StartPage  ->
                    { model | state = InstructionsPage  }
                otherwise ->
                    model
        GoToCoronaLevel ->
            case model.state of
                InstructionsPage  ->
                    { model | state = CoronaLevel  }
                otherwise ->
                    model
        GoToStoryPage ->
            case model.state of
                CoronaLevel  ->
                    { model | state = StoryPage  }
                otherwise ->
                    model
        GoToChoice1 ->
            case model.state of
                StoryPage  ->
                    { model | state = Choice1  }
                otherwise ->
                    model
        GoToChoice2 ->
            case model.state of
                Explanation1  ->
                    { model | state = Choice2  }
                otherwise ->
                    model
        GoToExplanation1 correctnessState ->
            case model.state of
                  Choice1  ->
                      case correctnessState of
                        Correct ->
                          { model | state = Explanation1
                          , firstCorrectness = Just correctnessState }
                        Incorrect ->
                          { model | state = Explanation1
                          , firstCorrectness = Just correctnessState
                          , mistakes = model.mistakes + 1}
                  otherwise ->
                      model
        GoToExplanation2 correctnessState ->
            case model.state of
                Choice2  ->
                    case correctnessState of
                        Correct ->
                          { model | state = Explanation2
                          , secondCorrectness = Just correctnessState }
                        Incorrect ->
                          { model | state = Explanation2
                          , secondCorrectness = Just correctnessState
                          , mistakes = model.mistakes + 1}
                otherwise ->
                    model
        GoToChoice3 ->
            case model.state of
                Explanation2  ->
                    { model | state = Choice3  }
                otherwise ->
                    model
        GoToExplanation3 correctnessState ->
            case model.state of
                Choice3  ->
                    case correctnessState of
                        Correct ->
                          { model | state = Explanation3
                          , thirdCorrectness = Just correctnessState }
                        Incorrect ->
                          { model | state = Explanation3
                          , thirdCorrectness = Just correctnessState
                          , mistakes = model.mistakes + 1}
                otherwise ->
                    model
        GoToChoice4 ->
            case model.state of
                Explanation3  ->
                    { model | state = Choice4  }
                otherwise ->
                    model
        GoToChoice7 ->
            case model.state of
                Explanation6  ->
                    { model | state = Choice7  }
                otherwise ->
                    model
        GoToChoice9 ->
            case model.state of
                Explanation8  ->
                    { model | state = Choice9  }
                otherwise ->
                    model
        GoToChoice8 ->
            case model.state of
                Explanation7  ->
                    { model | state = Choice8  }
                otherwise ->
                    model
        GoToChoice6 ->
            case model.state of
                Explanation5  ->
                    { model | state = Choice6  }
                otherwise ->
                    model
        GoToChoice5 ->
            case model.state of
                Explanation4  ->
                    { model | state = Choice5  }
                otherwise ->
                    model
        GoToExplanation4 correctnessState ->
            case model.state of
                Choice4  ->
                    case correctnessState of
                        Correct ->
                          { model | state = Explanation4
                          , fourthCorrectness = Just correctnessState }
                        Incorrect ->
                          { model | state = Explanation4
                          , fourthCorrectness = Just correctnessState
                          , mistakes = model.mistakes + 1}
                otherwise ->
                    model
        GoToExplanation5 correctnessState ->
            case model.state of
                Choice5  ->
                    case correctnessState of
                        Correct ->
                          { model | state = Explanation5
                          , fifthCorrectness = Just correctnessState }
                        Incorrect ->
                          { model | state = Explanation5
                          , fifthCorrectness = Just correctnessState
                          , mistakes = model.mistakes + 1}
                otherwise ->
                    model
        GoToExplanation7 correctnessState ->
            case model.state of
                Choice7  ->
                    case correctnessState of
                        Correct ->
                          { model | state = Explanation7
                          , seventhCorrectness = Just correctnessState }
                        Incorrect ->
                          { model | state = Explanation7
                          , seventhCorrectness = Just correctnessState
                          , mistakes = model.mistakes + 1}
                otherwise ->
                    model
        GoToExplanation6 correctnessState ->
            case model.state of
                Choice6  ->
                    case correctnessState of
                        Correct ->
                          { model | state = Explanation6
                          , sixthCorrectness = Just correctnessState }
                        Incorrect ->
                          { model | state = Explanation6
                          , sixthCorrectness = Just correctnessState
                          , mistakes = model.mistakes + 1}
                otherwise ->
                    model
        GoToExplanation8 correctnessState ->
            case model.state of
                Choice8  ->
                    case correctnessState of
                        Correct ->
                          { model | state = Explanation8
                          , eighthCorrectness = Just correctnessState }
                        Incorrect ->
                          { model | state = Explanation8
                          , eighthCorrectness = Just correctnessState
                          , mistakes = model.mistakes + 1}
                otherwise ->
                    model
        GoToExplanation9 correctnessState ->
            case model.state of
                Choice9  ->
                    case correctnessState of
                        Correct ->
                          { model | state = Explanation9
                          , ninthCorrectness = Just correctnessState }
                        Incorrect ->
                          { model | state = Explanation9
                          , ninthCorrectness = Just correctnessState
                          , mistakes = model.mistakes + 1}
                otherwise ->
                    model
        GoToEnd ->
            case model.state of
                Explanation9  ->
                    { model | state = End  }
                otherwise ->
                    model
        GoToEnd1 ->
            case model.state of
                End  ->
                    { model | state = End1  }
                otherwise ->
                    model
        Reset -> { model | state = StartPage
                        , time = 0
                        , mistakes = 0 }

type alias Model =
    { time : Float
    , state : State
    , firstCorrectness : Maybe Correctness
    , secondCorrectness : Maybe Correctness
    , thirdCorrectness : Maybe Correctness
    , fourthCorrectness : Maybe Correctness
    , fifthCorrectness : Maybe Correctness
    , sixthCorrectness : Maybe Correctness
    , seventhCorrectness : Maybe Correctness
    , eighthCorrectness : Maybe Correctness
    , ninthCorrectness : Maybe Correctness
    , mistakes : Int
    }

init : Model
init = { time = 0
       , state = StartPage
       , firstCorrectness = Nothing
       , secondCorrectness = Nothing
       , thirdCorrectness = Nothing
       , fourthCorrectness = Nothing
       , fifthCorrectness = Nothing
       , sixthCorrectness = Nothing
       , seventhCorrectness = Nothing
       , eighthCorrectness = Nothing
       , ninthCorrectness = Nothing
       , mistakes = 0
       }

createButton rectcolour width length txt txtcolour message = group [
  rect length width
    |> filled rectcolour

 ,text txt
    |> bold
    |> filled txtcolour
    |> move (-13, -3)

  ]
    |> notifyTap message

hand = group [   oval 5 15
                  |> filled orange
                  |> rotate (degrees 7)
                  |> move (-84,-7),
                 oval 5 15
                  |> filled orange
                  |> rotate (degrees 5)
                  |> move (-80,0),
                 oval 5 20
                  |> filled orange
                  |> rotate (degrees 0)
                  |> move (-75,0),
                   oval 5 15
                  |> filled orange
                  |> rotate (degrees -10)
                  |> move (-70,0),
                 oval 5 15
                  |> filled orange
                  |> rotate (degrees -15)
                  |> move (-65,-3),
                 roundedRect 20 20 5
                  |> filled orange
                  |> rotate (degrees 90)
                  |> move (-73,-10)]

window = group [
  rect 5 7
    |> filled lightBlue
 ,roundedRect 6 1.1 0.5
    |> filled orange
    |> move (0, 3.5)
 ,roundedRect 6 1.1 0.5
    |> filled orange
    |> move (0, -3.5)
  ]


findMistakes model num = case model.mistakes of
  0 ->
    case num of
      0 -> "You left after having fun, and because of your 100% correct precautions,"
      1 -> "you never infected others with Coronavirus!"
      2 -> "Game Win!"
      _ -> ""
  1 ->
    case num of
      0 -> "You left after having fun, and because of your almost 100% correct precautions,"
      1 -> "you never infected others with Coronavirus!"
      2 -> "Game Win!"
      _ -> ""
  2 ->
    case num of
      0 -> "You left after having fun, and because of your almost 100% correct precautions,"
      1 -> "you never infected others with Coronavirus!"
      2 -> "Game Win!"
      _ -> ""
  _ ->
    case num of
      0 -> "You left after having fun, but about one and a half weeks later, you had"
      1 -> "found that your friend contracted Coronavirus!"
      2 -> "Game Over"
      _ -> ""

sink = group [circle 9|> filled darkGrey,
              circle 9|> outlined (solid 1) lightCharcoal,
              circle 1 |> outlined (solid 0.5) lightCharcoal,
              circle 1 |> outlined (solid 0.5) lightCharcoal |> move (5,2),
              circle 1 |> outlined (solid 0.5) lightCharcoal |> move (-5,-2),
              circle 1 |> outlined (solid 0.5) lightCharcoal |> move (0,6),
              circle 1 |> outlined (solid 0.5) lightCharcoal |> move (-5,4),
              circle 1 |> outlined (solid 0.5) lightCharcoal |> move (0,-6),
              circle 1 |> outlined (solid 0.5) lightCharcoal |> move (5,-4)
              ]
bodyColour = rgb 1 123 224
beakColour = rgb 208 31 81
hand1  = group [
                 oval 5 20
                  |> filled lightBrown
                  |> rotate (degrees 0)
                  |> move (-75,0),
                  oval 5 15
                  |> filled lightBrown
                  |> rotate (degrees 5)
                  |> move (-80,0),
                  oval 5 15
                  |> filled lightBrown
                  |> rotate (degrees 7)
                  |> move (-84,-7),
                   oval 5 15
                  |> filled lightBrown
                  |> rotate (degrees -10)
                  |> move (-70,0),
                 oval 5 15
                  |> filled lightBrown
                  |> rotate (degrees -15)
                  |> move (-65,-3),
                 roundedRect 20 20 5
                  |> filled lightBrown
                  |> rotate (degrees 90)
                  |> move (-73,-10),
                  oval 5 20
                  |> filled lightBrown
                  |> rotate (degrees 0)
                  |> move (-105,0),
                  oval 5 15
                  |> filled lightBrown
                  |> rotate (degrees 5)
                  |> move (-110,-3),
                  oval 5 15
                  |> filled lightBrown
                  |> rotate (degrees -7)
                  |> move (-92,-7),
                   oval 5 15
                  |> filled lightBrown
                  |> rotate (degrees -10)
                  |> move (-100,3),
                 oval 5 15
                  |> filled lightBrown
                  |> rotate (degrees -15)
                  |> move (-95,0),
                 roundedRect 20 20 5
                  |> filled lightBrown
                  |> rotate (degrees 90)
                  |> move (-103,-10)
                 ]
