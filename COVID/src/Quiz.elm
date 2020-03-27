module Quiz exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing(..)
import List
import String
import Dict exposing (Dict)

main = gameApp Tick { model = init, view = view, update = update, title = "COVID-19 Quiz" }

view model = collage 192 128 (myShapes model)

-----------------------------------------------
---- this is where code from GameSlot goes ----
---- BUT MOVE "import"s above main         ----
-----------------------------------------------
myShapes model = [ initialBackground
                 , case model.state of
                     -- Start --
                     Start -> group
                              [ soap (-50, -20)
                              , text "Instruction: Choose the best answer in each question."
                                  |> filled black
                                  |> scale 0.6
                                  |> move (-80, 30)
                              , text "Human will win if you get more right answer"
                                  |> filled black
                                  |> scale 0.6
                                  |> move (-45, 20)
                              , text "than the wrong ones."
                                  |> filled black
                                  |> scale 0.6
                                  |> move (-45, 10)
                              , rect 28 12
                                  |> filled blue
                                  |> move (11, -6)
                                  |> notifyTap GoToQuestion1
                              , text "Start"
                                  |> filled red
                                  |> move (0, -9)
                                  |> notifyTap GoToQuestion1
                              ]
                     -- Question 1 --
                     Question1 -> group
                                  [ soap (-50, -20)
                                  , text "Question 1"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "How long do we have to rub our hands while washing"
                                      |> filled black
                                      |> move (-125, 45)
                                      |> scale 0.7
                                  , text "to prevent the spread of the Corona Virus?"
                                      |> filled black
                                      |> move (-70, 30)
                                      |> scale 0.7
                                  , text "A. 10s"
                                      |> filled black
                                      |> move (-70, 10)
                                      |> scale 0.65
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "B. 20s"
                                      |> filled black
                                      |> move (-20, 10)
                                      |> scale 0.65
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , text "C. Don't wash your hands"
                                      |> filled black
                                      |> move (20, 10)
                                      |> scale 0.65
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , resetButton |> notifyTap Reset
                                  ]

                     SoapToVirus 1 -> soapToVir 50 15 (-11, 10) "Question 2"  GoToQuestion2
                     VirusToHuman 1 -> virusToHomo 50 15 (-11, 10) "Question 2" GoToQuestion2

                     -- Question 2 --
                     Question2 -> group
                                  [ soap (-50, -20)
                                  , text "Question 2"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "What is the official name of the virus?"
                                      |> filled black
                                      |> scale 0.8
                                      |> move (-60, 30)
                                  , text "A. COVID-19"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-40, 10)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "B. SARS-CoV-2"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (20, 10)
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                      , resetButton |> notifyTap Reset
                                      ]
                     SoapToVirus 2 -> soapToVir 50 15 (-11, 10) "Question 3" GoToQuestion3
                     VirusToHuman 2 -> virusToHomo 50 15 (-11, 10) "Question 3" GoToQuestion3

                     -- Question 3 --
                     Question3 -> group
                                  [ soap (-50, -20)
                                  , text "Question 3"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "What is the origin of the virus?"
                                      |> filled black
                                      |> scale 0.8
                                      |> move (-50, 30)
                                  , text "A. Canada"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-50, 10)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "B. England"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (0, 10)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "C. China"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (50, 10)
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , resetButton |> notifyTap Reset
                                      ]
                     SoapToVirus 3 -> soapToVir 50 15 (-11, 10) "Question 4" GoToQuestion4
                     VirusToHuman 3 -> virusToHomo 50 15 (-11, 10) "Question 4" GoToQuestion4


                    -- Question 4 --
                     Question4 -> group
                                  [ soap (-50, -20)
                                  , text "Question 4"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "How close should you stand with a stranger"
                                      |> filled black
                                      |> scale 0.8
                                      |> move (-80, 30)
                                  , text "to not be affected by CoronaVirus ?"
                                      |> filled black
                                      |> scale 0.8
                                      |> move (-60, 20)
                                  , text "C. At least 1 metre"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (25, 0)
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , text "A. 80cm"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-50, 0)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "B. 50cm"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-10, 0)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , resetButton |> notifyTap Reset

                                  ]
                     SoapToVirus 4 -> soapToVir 50 15 (-11, 10) "Question 5" GoToQuestion5
                     VirusToHuman 4 -> virusToHomo 50 15 (-11, 10) "Question 5" GoToQuestion5

                     -- Question 5 --
                     Question5 -> group
                                  [ soap (-50, -20)
                                  , text "Question 5"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "How should you not press the elevator button?"
                                      |> filled black
                                      |> scale 0.8
                                      |> move (-85, 30)
                                  , text "D. With hands"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (25, 0)
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , text "A. With elbows"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-45, 15)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "C. With sleeves"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-45, 0)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                      , text "B. With tools"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (25, 15)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , resetButton |> notifyTap Reset

                                  ]
                     SoapToVirus 5 -> soapToVir 50 15 (-11, 10) "Question 6" GoToQuestion6
                     VirusToHuman 5 -> virusToHomo 50 15 (-11, 10) "Question 6" GoToQuestion6

                     -- Question 6 --
                     Question6 -> group
                                  [ soap (-50, -20)
                                  , text "Question 6"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "How should you sneeze or cough?"
                                      |> filled black
                                      |> scale 0.8
                                      |> move (-50, 30)
                                  , text "B. Into elbow"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (30, 15)
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , text "C. Into the air"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-50, 0)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "D. Into your hands"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (30, 0)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                      , text "A. Into someones face"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-50, 15)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                      , resetButton |> notifyTap Reset

                                  ]
                     SoapToVirus 6 -> soapToVir 50 15 (-11, 10) "Question 7" GoToQuestion7
                     VirusToHuman 6 -> virusToHomo 50 15 (-11, 10) "Question 7" GoToQuestion7

                     -- Question 7 --
                     Question7 -> group
                                  [ soap (-50, -20)
                                  , text "Question 7"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "If you become ill what should you not do?"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-50, 30)
                                  , text "B. Stay home"
                                      |> filled black
                                      |> scale 0.6
                                      |> move (55, 15)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "C. Drink plenty of fluids"
                                      |> filled black
                                      |> scale 0.6
                                      |> move (-50, 5)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "D. Get rest"
                                      |> filled black
                                      |> scale 0.6
                                      |> move (55, 5)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "A. Go out and use public transport"
                                      |> filled black
                                      |> scale 0.6
                                      |> move (-50, 15)
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                      , resetButton |> notifyTap Reset

                                  ]
                     SoapToVirus 7 -> soapToVir 50 15 (-11, 10) "Question 8" GoToQuestion8
                     VirusToHuman 7 -> virusToHomo 50 15 (-11, 10) "Question 8" GoToQuestion8

                     -- Question 8 --
                     Question8 -> group
                                  [ soap (-50, -20)
                                  , text "Question 8"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "What part of your body has to be washed"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-60, 35)
                                  , text "when you come back from somewhere?"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-60, 25)
                                  , text "A. Both face and hands"
                                      |> filled black
                                      |> scale 0.65
                                      |> move (-40, 10)
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , text "B. Face"
                                      |> filled black
                                      |> scale 0.65
                                      |> move (-40, 0)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "C. None"
                                      |> filled black
                                      |> scale 0.65
                                      |> move (40, 10)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "D. Hands"
                                      |> filled black
                                      |> scale 0.65
                                      |> move (40, 0)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                      , resetButton |> notifyTap Reset
                                      ]
                     SoapToVirus 8-> soapToVir 50 15 (-11, 10) "Question 9" GoToQuestion9
                     VirusToHuman 8 -> virusToHomo 50 15 (-11, 10) "Question 9" GoToQuestion9

                     -- Question 9 --
                     Question9 -> group
                                  [ soap (-50, -20)

                                  , text "Question 9"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "What kind of hand sanitizer should you use"
                                      |> filled black
                                      |> move (-90, 45)
                                      |> scale 0.7
                                  , text "if soap and water are not available?"
                                      |> filled black
                                      |> move (-70, 30)
                                      |> scale 0.7
                                  , text "A. Alcohol-based "
                                      |> filled black
                                      |> move (-55, 5)
                                      |> scale 0.7
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , text "B. Any kind"
                                      |> filled black
                                      |> move (50, 5)
                                      |> scale 0.7
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                      , resetButton |> notifyTap Reset
                                      ]


                     SoapToVirus 9 -> soapToVir 50 15 (-13, 10) "Question 10" GoToQuestion10
                     VirusToHuman 9 -> virusToHomo 50 15 (-13, 10) "Question 10" GoToQuestion10

                     -- Question 10 --
                     Question10 -> group
                                  [ soap (-50, -20)
                                  , text "Question 10"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "What percent of alcohol kills coronavirus?"
                                      |> filled black
                                      |> scale 0.8
                                      |> move (-75, 30)
                                  , text "C. At least 60%"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-40, 0)
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , text "B. 25%"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (30, 15)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "D. 50%"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (30, 0)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "A. 0%"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-40, 15)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                      , resetButton |> notifyTap Reset

                                  ]
                     SoapToVirus 10 -> soapToVir 50 15 (-13, 10) "Question 11" GoToQuestion11
                     VirusToHuman 10 -> virusToHomo 50 15 (-13, 10) "Question 11" GoToQuestion11


                     -- Question 11 --
                     Question11 -> group
                                  [ soap (-50, -20)
                                  , text "Question 11"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "Should you wash your hands even though"
                                      |> filled black
                                      |> move (-80, 45)
                                      |> scale 0.7
                                  , text "they don't look dirty?"
                                      |> filled black
                                      |> move (-30, 30)
                                      |> scale 0.7

                                  , text "A. Yes"
                                      |> filled black
                                      |> move (-40, 5)
                                      |> scale 0.7
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , text "B. No"
                                      |> filled black
                                      |> move (40, 5)
                                      |> scale 0.7
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                      , resetButton |> notifyTap Reset
                                      ]

                     SoapToVirus 11 -> soapToVir 50 15 (-13, 10) "Question 12" GoToQuestion12
                     VirusToHuman 11 -> virusToHomo 50 15 (-13, 10) "Question 12" GoToQuestion12



                     -- Question 12 --
                     Question12 -> group
                                  [ soap (-50, -20)

                                  , text "Question 12"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "Have there been cases of COVID-19 before 2019?"
                                      |> filled black
                                      |> move (-110, 40)
                                      |> scale 0.7
                                  , text "A. Yes"
                                      |> filled black
                                      |> move (-50, 15)
                                      |> scale 0.7
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "B. No, it is a novel coronavirus"
                                      |> filled black
                                      |> move (-50, 0)
                                      |> scale 0.7
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                      , resetButton |> notifyTap Reset
                                      ]


                     SoapToVirus 12 -> soapToVir 50 15 (-13, 10) "Question 13" GoToQuestion13
                     VirusToHuman 12 -> virusToHomo 50 15 (-13, 10) "Question 13" GoToQuestion13




                     -- Question 13 --
                     Question13 -> group
                                  [ soap (-50, -20)

                                  , text "Question 13"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "What should you do if you are a traveller?"
                                      |> filled black
                                      |> move (-80, 40)
                                      |> scale 0.7
                                  , text "A. Eat raw or undercooked food and meat"
                                      |> filled black
                                      |> move (-80, 30)
                                      |> scale 0.5
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "B. Avoid close contact with people who may be sick "
                                      |> filled black
                                      |> move (-80, 10)
                                      |> scale 0.5
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , text "C. Go to areas such as farms"
                                      |> filled black
                                      |> move (-80, -10)
                                      |> scale 0.5
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "D. Never wash your hand"
                                      |> filled black
                                      |> move (-80, -30)
                                      |> scale 0.5
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                      , resetButton |> notifyTap Reset
                                      ]


                     SoapToVirus 13 -> soapToVir 50 15 (-13, 10) "Question 14" GoToQuestion14
                     VirusToHuman 13 -> virusToHomo 50 15 (-13, 10) "Question 14" GoToQuestion14



                     -- Question 14 --
                     Question14 -> group
                                  [ soap (-50, -20)

                                  , text "Question 14"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "At what temperature of water should we wash our hands?"
                                      |> filled black
                                      |> move (-138, 40)
                                      |> scale 0.68
                                  , text "A. Hot"
                                      |> filled black
                                      |> move (-50, 10)
                                      |> scale 0.7
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "B. Cold"
                                      |> filled black
                                      |> move (0, 10)
                                      |> scale 0.7
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "C. Warm"
                                      |> filled black
                                      |> move (50, 10)
                                      |> scale 0.7
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                      , resetButton |> notifyTap Reset
                                      ]

                     SoapToVirus 14 -> soapToVir 50 15 (-13, 10) "Question 15" GoToQuestion15
                     VirusToHuman 14 -> virusToHomo 50 15 (-13, 10) "Question 15" GoToQuestion15

                     -- Question 15 --
                     Question15 -> group
                                  [ soap (-50, -20)
                                  , text "Question 15"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "As of March 2020, how is coronavirus treated?"
                                      |> filled black
                                      |> move (-100, 50)
                                      |> scale 0.7
                                  , text " A. With vaccine"
                                      |> filled black
                                      |> move (-75, 35)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text " B. There is currently no vaccine or treatment"
                                      |> filled black
                                      |> move (-75, 15)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text " C. Symptoms usually go away on their own"
                                      |> filled black
                                      |> move (-75, -5)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text " D. Both B and C"
                                      |> filled black
                                      |> move (-75, -25)
                                      |> scale 0.6
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                      , resetButton |> notifyTap Reset
                                      ]


                     SoapToVirus 15 -> soapToVir 50 15 (-13, 10) "Question 16" GoToQuestion16
                     VirusToHuman 15 -> virusToHomo 50 15 (-13, 10) "Question 16" GoToQuestion16

                     -- Question 16 --
                     Question16-> group
                                  [ soap (-50, -20)

                                  , text "Question 16"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "How does the coronavirus spread?"
                                      |> filled black
                                      |> move (-50, 40)
                                      |> scale 0.7
                                  , text "A. From person to person through close contact"
                                      |> filled black
                                      |> move (-70, 20)
                                      |> scale 0.6
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , text "B. It spreads over long distance"
                                      |> filled black
                                      |> move (-70, 0)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "C. It does not spread"
                                      |> filled black
                                      |> move (-70, -20)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                      , resetButton |> notifyTap Reset
                                       ]

                     SoapToVirus 16 -> soapToVir 50 15 (-13, 10) "Question 17" GoToQuestion17
                     VirusToHuman 16 -> virusToHomo 50 15 (-13, 10) "Question 17" GoToQuestion17

                     -- Question 17 --
                     Question17 -> group
                                  [ soap (-50, -20)
                                  , text "Question 17"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "Which one of the following is not a symptom of coronavirus?"
                                      |> filled black
                                      |> move (-140, 50)
                                      |> scale 0.6
                                  , text "A. Fever"
                                      |> filled black
                                      |> move (-50, 30)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "B. Pneumonia in both lungs"
                                      |> filled black
                                      |> move (-50, 10)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "C. Difficulty breathing"
                                      |> filled black
                                      |> move (-50, -10)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "D. Nose bleeding"
                                      |> filled black
                                      |> move (-50, -30)
                                      |> scale 0.6
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                      , resetButton |> notifyTap Reset
                                      ]

                     SoapToVirus 17 -> soapToVir 50 15 (-13, 10) "Question 18" GoToQuestion18
                     VirusToHuman 17 -> virusToHomo 50 15 (-13, 10) "Question 18" GoToQuestion18

                    -- Question 18 --
                     Question18 -> group
                                  [ soap (-50, -20)
                                  , text "Question 18"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "How often should you touch your face unnecessarily?"
                                      |> filled black
                                      |> move (-130, 50)
                                      |> scale 0.7
                                  , text "A. Never"
                                      |> filled black
                                      |> move (-50, 30)
                                      |> scale 0.6
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , text "B. Once per hour "
                                      |> filled black
                                      |> move (-50, 10)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "C. 5 times per hour"
                                      |> filled black
                                      |> move (-50, -10)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "D. 20 times per hour "
                                      |> filled black
                                      |> move (-50, -30)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                      , resetButton |> notifyTap Reset
                                      ]

                     SoapToVirus 18 -> soapToVir 50 15 (-13, 10) "Question 19" GoToQuestion19
                     VirusToHuman 18 -> virusToHomo 50 15 (-13, 10) "Question 19" GoToQuestion19

                     -- Question 19 --
                     Question19 -> group
                                  [ soap (-50, -20)

                                  , text "Question 19"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "How many days should you be self-isolating if you have been to"
                                      |> filled black
                                      |> move (-150, 50)
                                      |> scale 0.6

                                  , text "a country that has high risk of infection?"
                                      |> filled black
                                      |> move (-80, 35)
                                      |> scale 0.6

                                  , text "A. 24 hours"
                                      |> filled black
                                      |> move (-70, 20)
                                      |> scale 0.5
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "B. 14 days "
                                      |> filled black
                                      |> move (-70, 0)
                                      |> scale 0.5
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , text "C. One month"
                                      |> filled black
                                      |> move (-70, -20)
                                      |> scale 0.5
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "D. 3 hours "
                                      |> filled black
                                      |> move (-70, -40)
                                      |> scale 0.5
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                      , resetButton |> notifyTap Reset
                                      ]

                     SoapToVirus 19 -> soapToVir 50 15 (-13, 10) "Question 20" GoToQuestion20
                     VirusToHuman 19 -> virusToHomo 50 15 (-13, 10) "Question 20" GoToQuestion20

                     -- Question 20 --
                     Question20 -> group
                                  [ soap (-50, -20)

                                  , text "Question 20"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "What are the steps that you should do to wash your hands?"
                                      |> filled black
                                      |> move (-140, 50)
                                      |> scale 0.65
                                  , text "A. Wet your hands, apply soap"
                                      |> filled black
                                      |> move (-85, 25)
                                      |> scale 0.52
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "B. Lather your hands, including the backs,fingers,nails"
                                      |> filled black
                                      |> move (-85, 5)
                                      |> scale 0.52
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "C. Scrub for at least 20 seconds, rinse"
                                      |> filled black
                                      |> move (-85, -15)
                                      |> scale 0.52
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "D. All of the above "
                                      |> filled black
                                      |> move (-85, -35)
                                      |> scale 0.52
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                      , resetButton |> notifyTap Reset
                                      ]

                     SoapToVirus 20 -> soapToVir 50 15 (-13, 10) "Question 21" GoToQuestion21
                     VirusToHuman 20 -> virusToHomo 50 15 (-13, 10) "Question 21" GoToQuestion21

                     -- Question 21 --
                     Question21 -> group
                                  [ soap (-50, -20)
                                  , text "Question 21"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "Who is at a higher risk of getting severe illness from COVID-19?"
                                      |> filled black
                                      |> move (-155, 55)
                                      |> scale 0.6
                                  , text "A. Older Adults"
                                      |> filled black
                                      |> move (-70, 30)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "B. People who have serious chronic medical"
                                      |> filled black
                                      |> move (-70, 10)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text " conditions like heart disease, diabletes,"
                                      |> filled black
                                      |> move (-60, -5)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text " lung disease"
                                      |> filled black
                                      |> move (-60, -20)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "C. Both A and B"
                                      |> filled black
                                      |> move (-70, -35)
                                      |> scale 0.6
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                      , resetButton |> notifyTap Reset
                                      ]

                     SoapToVirus 21 -> soapToVir 30 15 (-2, 10) "Result" GoToResult
                     VirusToHuman 21 -> virusToHomo 30 15 (-2, 10) "Result" GoToResult

                     -- Result --
                     Result -> group
                               [ text "RESULT"
                                   |> filled red
                                   |> move (-5, 50)
                               , whoWins model.humanHealth model.virusHealth model.time model.score

                               ]
                     otherwise -> group[]

                 ]

resetButton = group [ roundedRect 20 10 5 |> filled green |> addOutline (solid 1) black
                    , text "Reset" |> centered |> filled black |> scale 0.25
                    ] |> move (-50,-50) |> notifyTap Reset


-- Auxiliary Result Function
whoWins humanHP virusHP time score =
         if (humanHP > virusHP)
         then
              group
              [ text "YAY! HUMAN WINS :)"
                  |> filled red
                  |> move (-55, 10)
                  |> move (20 * sin (2 * time), 10)
              , text ("SCORE: " ++ (String.fromInt (score)) ++ "/21")
                 |> filled black
                 |> scale 0.7
                 |> move (-20, 10)
              , rect 40 12
                  |> filled blue
                  |> move (11, -6)
                  |> notifyTap GoToStart
              , text "Play Again"
                  |> filled red
                  |> scale 0.7
                  |> move (-8, -8)
                  |> notifyTap GoToStart
              ]
         else if (humanHP < virusHP)
         then
             group
             [ text "OH NO! VIRUS WINS :("
                 |> filled red
                 |> move (-55, 10)
                 |> move (20 * sin (2 * time), 10)
             , text ("SCORE: " ++ (String.fromInt (score)) ++ "/21")
                 |> filled black
                 |> scale 0.7
                 |> move (-20, 10)
             , rect 40 12
                  |> filled blue
                  |> move (11, -6)
                  |> notifyTap GoToStart
              , text "Play Again"
                  |> filled red
                  |> scale 0.7
                  |> move (-8, -8)
                  |> notifyTap GoToStart
             ]
         else
             group[]

-- Auxiliary Functions
soapToVir width height (x,y) numQues goto = group
                                           [ soap (-95, -45) |> scale 0.5
                                           , soap (-90, -40) |> scale 0.5
                                           , soap (-85,-35) |> scale 0.5
                                           , soap (-80,-30) |> scale 0.5
                                           , soap (-75,-25) |> scale 0.5
                                           , soap (-70,-20) |> scale 0.5
                                           , soap (-65,-15) |> scale 0.5
                                           , soap (-60,-10) |> scale 0.5
                                           , soap (0,-5) |> scale 0.7
                                           , soap (-5,-5)|> scale 0.7
                                           , soap (-10,-5) |> scale 0.7
                                           , soap (-15,-5) |> scale 0.7
                                           , soap (-20,-5) |> scale 0.7
                                           , soap (-25,-5) |> scale 0.7
                                           , soap (-30,-5) |> scale 0.7
                                           , soap (-35,-5) |> scale 0.7
                                           , soap (-60,-15) |> scale 0.5
                                           , soap (-55,-5) |> scale 0.5
                                           , rect 1 50
                                               |> filled yellow
                                               |> rotate (degrees 260)
                                               |>move (30,-10)
                                           , rect 1 50
                                               |> filled yellow
                                               |> rotate (degrees 262)
                                               |> move (30,-8)
                                           , rect 1 50
                                               |> filled yellow
                                               |> rotate (degrees 264)
                                               |>move (30,-4)
                                           , rect 1 50
                                               |> filled yellow
                                               |> rotate (degrees 266)
                                               |>move (30,-6)
                                           , soap (60, -10)
                                           , rect width height
                                               |> filled blue
                                               |> move (10, 12)
                                               |> notifyTap goto
                                           , text numQues
                                               |> filled red
                                               |> scale 0.8
                                               |> move (x,y)
                                               |> notifyTap goto
                                           ]

virusToHomo width height (x,y) numQues goto = group
                                             [ coronaVirus
                                                  |> scale 0.1
                                                  |> move (-60, 10)
                                             , coronaVirus
                                                  |> scale 0.1
                                                  |> move (-65, 5)
                                             , coronaVirus
                                                  |> scale 0.1
                                                  |> move (-55, 5)
                                             , coronaVirus
                                                  |> scale 0.1
                                                  |> move (-55, 0)
                                             , coronaVirus
                                                  |> scale 0.1
                                                  |> move (-62, 1)
                                             , coronaVirus
                                                  |> scale 0.1
                                                  |> move (-60, -5)
                                             , rect width height
                                                  |> filled blue
                                                  |> move (10, 12)
                                                  |> notifyTap goto
                                             , text numQues
                                                  |> filled red
                                                  |> scale 0.8
                                                  |> move (x,y)
                                                  |> notifyTap goto
                                             ]

finalResult numQues goto = group
                           [ rect 40 15
                                |> filled blue
                                |> move (10, 12)
                           , text numQues
                                |> filled red
                                |> scale 0.8
                                |> move (-2, 9)
                                |> notifyTap GoToResult
                           ]


-- Background
initialBackground = group
                    [ sky
                    , land
                    , grassLand
                    , finalCloud

                    , finalSun
                    , coronaVirus
                        |> scale 0.2
                        |> move (60, -10)
                    , boy
                        |> scale 0.5
                        |> move (-60,-10)
                    ]

-- Blue Sky
sky = square 210 |> filled lightBlue

-- Land
land = rect 40 205
           |> filled darkBrown
           |> rotate (degrees 90)|> move (0,-50)

grass = triangle 10
          |> filled lightGreen
          |> rotate (degrees 30)

grassLand = group
            [ grass |> move (100,-35)
            , grass |> move (85,-35)
            , grass |> move (70,-35)
            , grass |> move (55,-35)
            , grass |> move (40,-35)
            , grass |> move (25,-35)
            , grass |> move (10,-35)
            , grass |> move (-5,-35)
            , grass |> move (-20,-35)
            , grass |> move (-35,-35)
            , grass |> move (-50,-35)
            , grass |> move (-65,-35)
            , grass |> move (-80,-35)
            , grass |> move (-95,-35)
            ]

-- Cloud
cloud = oval 80 15
          |> filled white

cloudbubble = circle 15
                |> filled white
                |> scaleX 0.5
                |> scaleY 0.5

finalCloud = group
             [ cloud |> move (-50,50)
             , cloudbubble |> move (-85,50)
             , cloudbubble |> scaleX 1.5
                           |> scaleY 1.5|> move (-70,50)
             , cloudbubble |> scaleX 1.5
                           |> scaleY 1.5|> move (-55,50)
             , cloudbubble |> scaleX 1.5
                           |> scaleY 1.5|> move (-40,50)
             , cloudbubble |> scaleX 0.75
                           |> scaleY 0.75|> move (-15,50)
             , cloudbubble |> scaleX 1.25
                           |> scaleY 1.25|> move (-25,50)
             ]

-- Sun
sunrays  = triangle 10
              |> filled lightYellow

sun =  circle 40
         |>filled lightYellow

finalSun = group
           [ sun |> move (80,65)
           , sunrays |> rotate (degrees 70)
                     |> move (40,50)
           , sunrays |> rotate (degrees 110)
                     |> move (52,32)
           , sunrays |> rotate (degrees 130)
                     |> move (70,23)
           , sunrays |> rotate (degrees 175)
                     |> move (95,24)
           ]
             |> scale 0.8
             |> move (20, 10)

-- Corona Virus
protein (x,y,deg) = triangle 5
                      |> filled darkGreen
                      |> addOutline (solid 1) darkGreen
                      |> rotate (degrees deg)
                      |> move (x,y)

coronaVirus = group
              [ circle 30
                  |> filled darkGreen
              , group (List.map protein [(0, 35, -90), (18, 30, 5), (30,18, -30), (35, 0, -180),
                                         (30, -18, 30), (18, -30, -5), (18,-30, -5), (0, -35, 90),
                                         (-18, -30, -70), (-30, -18, 30), (-35,0, 0),
                                         (-30, 18, -30), (-17, 30, 65)
                                        ])
              ]
                |> scale 0.9


-- Boy
boy = group[ circle 10
                |> filled lightBrown
                |> scale 2
                |> move(0,40)
           , roundedRect 7 10 3
                |> filled lightBrown
                |> scale 2
                |> move (0,20)
           , rect 40 48
                |> filled blue
                |> move (0,-7)
           , triangle 9
                |> filled lightBrown
                |> rotate (degrees 30)
                |> move (0,13)
           , rect 15 30
                |> filled black
                |> move (-11,-45)
           , rect 15 30
                |> filled black
                |> move (12,-45)
           , rect 10 10
                |> filled blue
                |> scale 2
                |> move (23,7)
           , rect 10 10
                |> filled blue
                |> scale 2
                |> move (-22,7)
           , rect 6 15
                |> filled lightBrown
                |> scale 2
                |> move (27,-18)
           , rect 5.5 15
                |> filled lightBrown
                |> scale 2
                |> move (-26,-18)
           , circle 2
                |> filled white
                |> scale 2
                |> move (7,43)
           , circle 2
                |> filled white
                |> scale 2
                |> move (-7,43)
           , circle 1
                |> filled black
                |> move (7,43)
           , circle 1
                |> filled black
                |> move (-7,43)
           , wedge 7 0.5
                |> filled black
                |> rotate (degrees -90)
                |> move (0,35)
           , curve (0,0) [Pull (10,0) (10,-5)]
                |> filled black
                |> rotate (degrees 20)
                |> move (2,49)
           , curve (10,-5) [Pull (10,0) (0,0)]
                |> filled black
                |> rotate (degrees 20)
                |> move (-12,49)
           , wedge 10 0.5
                |> filled black
                |> scale 2
                |> rotate (degrees 90)
                |> move (0,53)
           , wedge 2.75 0.5
                |> filled black
                |> scale 2
                |> rotate (degrees 180)
                |> move (-15,51)
           , curve (10,-5) [Pull (10,0) (0,0)]
                |> filled black
                |> scale 2
                |> rotate (degrees -50)
                |> move (13,65)
            ]
              |> scale 0.75

-- Soap
soap (x,y) = roundedRect 16 15 16
              |> filled lightYellow
              |> move (x, y)



-- UPDATE --
type Msg = Tick Float GetKeyState
         | GoToStart
         | GoToQuestion1
         | GoToQuestion2
         | GoToQuestion3
         | GoToQuestion4
         | GoToQuestion5
         | GoToQuestion6
         | GoToQuestion7
         | GoToQuestion8
         | GoToQuestion9
         | GoToQuestion10
         | GoToQuestion11
         | GoToQuestion12
         | GoToQuestion13
         | GoToQuestion14
         | GoToQuestion15
         | GoToQuestion16
         | GoToQuestion17
         | GoToQuestion18
         | GoToQuestion19
         | GoToQuestion20
         | GoToQuestion21
         | GoToResult
         | DecHumanHealth
         | DecVirusHealth
         | ThrowSoap
         | ThrowVirus
         | Reset

type State = Start
           | Question1
           | Question2
           | Question3
           | Question4
           | Question5
           | Question6
           | Question7
           | Question8
           | Question9
           | Question10
           | Question11
           | Question12
           | Question13
           | Question14
           | Question15
           | Question16
           | Question17
           | Question18
           | Question19
           | Question20
           | Question21
           | Result
           | SoapToVirus Int
           | VirusToHuman Int

update msg model = case msg of
                     Tick t _ -> { model | time = t }
                     GoToStart -> { model | state = Start
                                  , score = 0}
                     Reset -> { model | state = Start
                                  , score = 0}
                     GoToQuestion1 -> { model | state = Question1 }
                     GoToQuestion2 -> { model | state = Question2 }
                     GoToQuestion3 -> { model | state = Question3 }
                     GoToQuestion4 -> { model | state = Question4 }
                     GoToQuestion5 -> { model | state = Question5 }
                     GoToQuestion6 -> { model | state = Question6 }
                     GoToQuestion7 -> { model | state = Question7 }
                     GoToQuestion8 -> { model | state = Question8 }
                     GoToQuestion9 -> { model | state = Question9 }
                     GoToQuestion10 -> { model | state = Question10 }
                     GoToQuestion11 -> { model | state = Question11 }
                     GoToQuestion12 -> { model | state = Question12 }
                     GoToQuestion13 -> { model | state = Question13 }
                     GoToQuestion14 -> { model | state = Question14 }
                     GoToQuestion15 -> { model | state = Question15 }
                     GoToQuestion16 -> { model | state = Question16 }
                     GoToQuestion17 -> { model | state = Question17 }
                     GoToQuestion18 -> { model | state = Question18 }
                     GoToQuestion19 -> { model | state = Question19 }
                     GoToQuestion20 -> { model | state = Question20 }
                     GoToQuestion21 -> { model | state = Question21 }
                     GoToResult -> { model | state = Result
                                   , time = 0}

                     DecHumanHealth -> { model | humanHealth = model.humanHealth - 10 }
                     DecVirusHealth -> { model | virusHealth = model.virusHealth - 10
                                       , score = model.score + 1
                                       }

                     ThrowSoap -> case model.state of
                                      Question1 -> { model | state = SoapToVirus 1 }
                                      Question2 -> { model | state = SoapToVirus 2 }
                                      Question3 -> { model | state = SoapToVirus 3 }
                                      Question4 -> { model | state = SoapToVirus 4 }
                                      Question5 -> { model | state = SoapToVirus 5 }
                                      Question6 -> { model | state = SoapToVirus 6 }
                                      Question7 -> { model | state = SoapToVirus 7 }
                                      Question8 -> { model | state = SoapToVirus 8 }
                                      Question9 -> { model | state = SoapToVirus 9 }
                                      Question10 -> { model | state = SoapToVirus 10 }
                                      Question11 -> { model | state = SoapToVirus 11 }
                                      Question12 -> { model | state = SoapToVirus 12 }
                                      Question13 -> { model | state = SoapToVirus 13 }
                                      Question14 -> { model | state = SoapToVirus 14 }
                                      Question15 -> { model | state = SoapToVirus 15 }
                                      Question16 -> { model | state = SoapToVirus 16 }
                                      Question17 -> { model | state = SoapToVirus 17 }
                                      Question18 -> { model | state = SoapToVirus 18 }
                                      Question19 -> { model | state = SoapToVirus 19 }
                                      Question20 -> { model | state = SoapToVirus 20 }
                                      Question21 -> { model | state = SoapToVirus 21 }


                                      otherwise -> model
                     ThrowVirus -> case model.state of
                                      Question1 -> { model | state = VirusToHuman 1 }
                                      Question2 -> { model | state = VirusToHuman 2 }
                                      Question3 -> { model | state = VirusToHuman 3 }
                                      Question4 -> { model | state = VirusToHuman 4 }
                                      Question5 -> { model | state = VirusToHuman 5 }
                                      Question6 -> { model | state = VirusToHuman 6 }
                                      Question7 -> { model | state = VirusToHuman 7 }
                                      Question8 -> { model | state = VirusToHuman 8 }
                                      Question9 -> { model | state = VirusToHuman 9 }
                                      Question10 -> { model | state = VirusToHuman 10 }
                                      Question11 -> { model | state = VirusToHuman 11 }
                                      Question12 -> { model | state = VirusToHuman 12 }
                                      Question13 -> { model | state = VirusToHuman 13 }
                                      Question14 -> { model | state = VirusToHuman 14 }
                                      Question15 -> { model | state = VirusToHuman 15 }
                                      Question16 -> { model | state = VirusToHuman 16 }
                                      Question17 -> { model | state = VirusToHuman 17 }
                                      Question18 -> { model | state = VirusToHuman 18 }
                                      Question19 -> { model | state = VirusToHuman 19 }
                                      Question20 -> { model | state = VirusToHuman 20 }
                                      Question21 -> { model | state = VirusToHuman 21 }
                                      otherwise -> model



-- INIT --
type alias Model = { time : Float
                   , state : State
                   , humanHealth : Float
                   , virusHealth : Float
                   , score : Int
                   }

init = { time = 0
       , state = Start
       , humanHealth = 100
       , virusHealth = 100
       , score = 0
       }
