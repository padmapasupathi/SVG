module Main exposing (main)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (GetKeyState,gameApp)


myShapes model = [ rect 1000 1000 |> filled lightYellow |> notifyTap ClickNone
                , fridge model
                , indr model |> scale 0.25 |> move (0,-10)
                , indf model |> scale 0.25 |> move (0,25)
                -- , indicator model  |> move (10,10)
                -- , ngon 3 5 |> filled red |> rotate (degrees 90) |> move (25,20) |> notifyTap Increase
                -- , ngon 3 5 |> filled red |> rotate (degrees 270) |> move (25,0) |> notifyTap Decrease
                -- , text (Debug.toString model.selected ++ " Temperature:" ++ Debug.toString model.score) |> filled black |> move (-50,-35)
                 ]
                 ++
                 case model.selected of
                   None -> [ text "Select compartment to set/view its temperature"
                           |> centered
                           |> filled blue
                           |> scale 0.5
                           |> move (10,50)
                           ]
                   Freezer -> [ text ("Freezer Temperature:" ++ Debug.toString model.ftemp)
                                |> centered
                                |> filled blue
                                |> scale 0.5
                                |> move (10,50)
                                , cooler model |> move (-25,10)
                                , knobf model |> scale 0.5 |> move (-50,25)
                               --, ngon 3 5 |> filled red |> rotate (degrees 90) |> move (25,20) |> notifyTap Increase
                               --, ngon 3 5 |> filled red |> rotate (degrees 270) |> move (25,0) |> notifyTap Decrease
                               ]
                   Refrigerator -> [ text ("Refrigerator Temperature:" ++ Debug.toString model.rtemp)
                                |> centered
                                |> filled blue
                                |> scale 0.5
                                |> move (10,50)
                                , cooler model |> move (-25,10)
                                , knobr model |> scale 0.5 |> move (-50,-10)

                              -- , ngon 3 5 |> filled red |> rotate (degrees 90) |> move (25,20) |> notifyTap Increase
                               --, ngon 3 5 |> filled red |> rotate (degrees 270) |> move (25,0) |> notifyTap Decrease
                               ]

fridge model = group [ rect 40 80 |> filled pink |> makeTransparent 0.5 |> move (10,0)
                     , rect 20 10 |> filled lightBlue |> addOutline (case model.selected of Freezer -> solid (1 + cos (3*model.time))
                                                                                            _ -> solid 0.5) black |> scale 1.5 |> move (10,25) |> notifyTap ClickSelectFreezer
                    , rect 20 30 |> filled lightGreen |> addOutline (case model.selected of Refrigerator -> solid (1 + cos (3*model.time))
                                                                                            _ -> solid 0.5) black |> scale 1.5 |> move (10,-10) |> notifyTap ClickSelectRefridge
                                                                                           ]

cooler model = group [rect 8 10 |> filled blank |> addOutline (solid 0.5) black
                     , group [ rect 20 2 |> filled blank |> addOutline (solid 0.5) black  |> move (11,0)
                     , rect 8 0.5 |> outlined (dotted 1) (myColor model.rcolor)  |> move ((case model.rtemp of 0 -> abs(0*sin(model.time))
                                                                                                               1 -> abs(10*sin(model.time))
                                                                                                               2 -> abs(20*sin(model.time))
                                                                                                               3 -> abs(30*sin(model.time))
                                                                                                               4 -> abs(40*sin(model.time))
                                                                                                               _ -> abs(50*sin(model.time))),0) ] |> rotate (degrees 25)
                     , group [ rect 20 2 |> filled blank |> addOutline (solid 0.5) black  |> move (11,0)
                     , rect 8 0.5 |> outlined (dotted 1) (myColor model.rcolor)  |> move ((case model.rtemp of 0 -> abs(50*sin(model.time))
                                                                                                               1 -> abs(40*sin(model.time))
                                                                                                               2 -> abs(30*sin(model.time))
                                                                                                               3 -> abs(20*sin(model.time))
                                                                                                               4 -> abs(10*sin(model.time))
                                                                                                               _ -> abs(0*sin(model.time))),0) ] |> rotate (degrees -25)
                     , circle 4 |> filled blue
                     ]

indr model = group [ roundedRect 5 50 5 |> filled blank |> addOutline (solid 1) white
                  , roundedRect 5 (case model.ftemp of 0 -> 0
                                                       1 -> 10
                                                       2 -> 20
                                                       3 -> 30
                                                       4 -> 40
                                                       _ -> 50) 5 |> filled (myColor model.fcolor) |> addOutline (solid 1) white
                  , circle 5 |> filled (myColor model.fcolor) |> addOutline (solid 1) white |> move (0,-20)
                  ]

indf model = group [ roundedRect 5 50 5 |> filled blank |> addOutline (solid 1) white
                  , roundedRect 5 (case model.ftemp of 0 -> 0
                                                       1 -> 10
                                                       2 -> 20
                                                       3 -> 30
                                                       4 -> 40
                                                       _ -> 50) 5 |> filled (myColor model.fcolor) |> addOutline (solid 1) white
                  , circle 5 |> filled (myColor model.fcolor) |> addOutline (solid 1) white |> move (0,-20)
                  ]

knobf1 model = group [circle 10 |> filled white |> addOutline (solid 1) black
                    , wedge 10 0.2 |> filled (myColor White) |> addOutline (solid 0.5) black|> rotate (degrees 240)
                    , wedge 10 0.2 |> filled (myColor Blue1) |> addOutline (solid 0.5) black|> rotate (degrees 180)
                    , wedge 10 0.2 |> filled (myColor Blue2) |> addOutline (solid 0.5) black|> rotate (degrees 120)
                    , wedge 10 0.2 |> filled (myColor Blue3) |> addOutline (solid 0.5) black|> rotate (degrees 60)
                    , wedge 10 0.2 |> filled (myColor Blue4) |> addOutline (solid 0.5) black|> rotate (degrees 0)
                    , wedge 10 0.2 |> filled (myColor Blue5) |> addOutline (solid 0.5) black|> rotate (degrees 300)
                    ]

knobf model = group [circle 17 |> filled lightBlue|> addOutline (solid 1) black
                    , circle 10 |> filled white |> addOutline (solid 1) black
                    , wedge 10 0.03 |> filled black |> rotate (degrees (case model.ftemp of 0 ->250
                                                                                            1 -> 180
                                                                                            2 -> 120
                                                                                            3 -> 60
                                                                                            4 -> 0
                                                                                            5 -> 300
                                                                                            _ -> 270))
                    , text "0" |> filled black |> scale 0.5 |> move (-7,-14)  |> notifyTap ClickF0
                    , text "1" |> filled black |> scale 0.5 |> move (-15,-2)  |> notifyTap ClickF1
                    , text "2" |> filled black |> scale 0.5 |> move (-8,10)  |> notifyTap ClickF2
                    , text "3" |> filled black |> scale 0.5 |> move (5,10)  |> notifyTap ClickF3
                    , text "4" |> filled black |> scale 0.5 |> move (12,-2)  |> notifyTap ClickF4
                    , text "5" |> filled black |> scale 0.5 |> move (7,-13)  |> notifyTap ClickF5
                  ]

knobr model = group [circle 17 |> filled lightBlue|> addOutline (solid 1) black
                    , circle 10 |> filled white |> addOutline (solid 1) black
                    , wedge 10 0.03 |> filled black |> rotate (degrees (case model.rtemp of 0 ->250
                                                                                            1 -> 180
                                                                                            2 -> 120
                                                                                            3 -> 60
                                                                                            4 -> 0
                                                                                            5 -> 300
                                                                                            _ -> 270))
                    , text "0" |> filled black |> scale 0.5 |> move (-7,-14)  |> notifyTap ClickR0
                    , text "1" |> filled black |> scale 0.5 |> move (-15,-2)  |> notifyTap ClickR1
                    , text "2" |> filled black |> scale 0.5 |> move (-8,10)  |> notifyTap ClickR2
                    , text "3" |> filled black |> scale 0.5 |> move (5,10)  |> notifyTap ClickR3
                    , text "4" |> filled black |> scale 0.5 |> move (12,-2)  |> notifyTap ClickR4
                    , text "5" |> filled black |> scale 0.5 |> move (7,-13)  |> notifyTap ClickR5

                    ]

type Msg = Tick Float GetKeyState | Increase | Decrease | ClickNone | ClickSelectFreezer | ClickSelectRefridge | ClickF0 | ClickF1 | ClickF2 | ClickF3 | ClickF4 | ClickF5 | ClickR0 | ClickR1 | ClickR2 | ClickR3 | ClickR4 | ClickR5


update msg model = case msg of
                     Tick t _ -> { model | time = t }
                     ClickNone -> {model | selected = None }
                     ClickSelectFreezer -> {model | selected =  Freezer}
                     ClickSelectRefridge -> {model | selected =  Refrigerator}
                     ClickF0 -> { model | ftemp = 0
                                        , fcolor = White
                                }
                     ClickR0 -> { model | rtemp = 0
                                        , rcolor = White
                                }
                     ClickF1 -> { model | ftemp = 1
                                        , fcolor = Blue1
                                }
                     ClickR1 -> { model | rtemp = 1
                                        , rcolor = Blue1
                                }
                     ClickF2 -> { model | ftemp = 2
                                       , fcolor = Blue2
                                }
                     ClickR2 -> { model | rtemp = 2
                                       , rcolor = Blue2
                                }
                     ClickF3 -> { model | ftemp = 3
                                       , fcolor = Blue3
                                }
                     ClickR3 -> { model | rtemp = 3
                                       , rcolor = Blue3
                               }
                     ClickF4 -> { model | ftemp = 4
                                       , fcolor = Blue4
                                }
                     ClickR4 -> { model | rtemp = 4
                                       , rcolor = Blue4
                                }
                     ClickF5 -> { model | ftemp = 5
                                       , fcolor = Blue5
                                }
                     ClickR5 -> { model | rtemp = 5
                                       , rcolor = Blue5
                                }
                     Increase -> { model |  {- color = case model.color of
                                           White -> Blue1
                                           Blue1 -> Blue2
                                           Blue2 -> Blue3
                                           Blue3 -> Blue4
                                           Blue4 -> Blue5
                                           Blue5 -> Blue5 -}
                                   -- case model.selected of
                                    ftemp = if model.selected == Freezer then
                                               if model.ftemp >= 5 then 5
                                                 else model.ftemp +1
                                           else model.ftemp
                                   , rtemp = if model.selected == Refrigerator then
                                              if model.rtemp >= 5 then 5
                                                else model.rtemp +1
                                           else model.rtemp


                                }
                     Decrease -> {model |

                                  {- color = case model.color of
                                           White -> White
                                           Blue1 -> White
                                           Blue2 -> Blue1
                                           Blue3 -> Blue2
                                           Blue4 -> Blue3
                                           Blue5 -> Blue4 -}
                                   ftemp = if model.selected == Freezer then
                                               if model.ftemp <= 0 then 0
                                                 else model.ftemp - 1
                                           else model.ftemp
                                   , rtemp = if model.selected == Refrigerator then
                                              if model.rtemp <= 0 then 0
                                                else model.rtemp - 1
                                           else model.rtemp
                                           }

myColor col = case col of
              White -> rgb 255 255 255
              Blue1 -> rgb 204 229 255
              Blue2 -> rgb 153 204 255
              Blue3 -> rgb 102 178 255
              Blue4 -> rgb 51 153 255
              Blue5 -> rgb 0 128 255


type Color = White | Blue1 | Blue2 | Blue3 | Blue4 | Blue5

type Select = None | Freezer | Refrigerator

type alias Model =
       { time : Float,
       ftemp : Int,
       rtemp : Int,
       fcolor : Color,
       rcolor : Color,
       selected : Select
       }

init = { time = 0
        , ftemp = 0
        , rtemp = 0
        , fcolor = White
        , rcolor = White
        , selected = None
        }


main = gameApp Tick { model = init, view = view, update = update, title = "Game Slot" }

view model = collage 192 128 (myShapes model)
