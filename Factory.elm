module Main exposing (main)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (GetKeyState,gameApp)

init = { time = 0 , pos =0, myTractor =0 , myTractorDx = 1}

type alias Model =
       { time : Float
       , pos: Float
       , myTractor : Float
       --, state : State
       , myTractorDx : Float}

type Msg = Tick Float GetKeyState

--type State = Company | Factory

update msg model =
    case msg of
        Tick t _ ->  let posX = model.myTractor
                         dirX = model.myTractorDx
                         (newPosX,newDirX) = if posX > 500 then (500, -1)
                                          else if posX < -500 then (-500, 1)
                                          else (posX + dirX, dirX)

                        in
                              { model | time = t
                              , myTractor = newPosX
                              , myTractorDx = newDirX

                              }

view model = collage 1250 900 [ square 2000 |> filled lightGreen
                              , circle 10 |> filled yellow
                              , factory model |> move (-500,150)
                              , factory model |> move (-500,-150)
                              , company model |> move (500,150)
                              , company model |> move (500,-150)
                              , route  |>move (0,80)
                              , route |> move (0,-220)
                              --, tractor model |> scale 0.4 |> move (0,100)
                              --, tractor model |> scale 0.4 |> move (0,-200)
                              --, tractor model |> scale 0.4 |> mirrorX|>  move (model.myTractor,0)
                              , if model.myTractorDx == 1 then tractor model |> scale 0.4 |> mirrorX |>  move (model.myTractor,80)
                                else tractor model |> scale 0.4 |>  move (model.myTractor,100)
                              , if model.myTractorDx == 1 then tractor model |> scale 0.4 |> mirrorX |>  move (model.myTractor,-220)
                                else tractor model |> scale 0.4 |>  move (model.myTractor,-200)
                                  ]

factory model = group [ rect 20 40 |> filled darkGray |> addOutline (solid 1) black |> move (-15, 30)
                      , rect 20 40 |> filled darkGray |> addOutline (solid 1) black |> move (15, 30)
                      , group [circle 5 |> filled gray |> move (-15,55)
                      , circle 5 |> filled gray |> move (-17,59)
                      , circle 5 |> filled gray |> move (-12,62)
                      , circle 5 |> filled gray |> move (-13,67)
                      , circle 5 |> filled gray |> move (-18,72)
                      , circle 5 |> filled gray |> move (-11, 75)] |> addOutline(solid 1) black |> makeTransparent (cos(model.time))
                      , group [circle 5 |> filled gray |> move (-15,55)
                      , circle 5 |> filled gray |> move (-17,59)
                      , circle 5 |> filled gray |> move (-12,62)
                      , circle 5 |> filled gray |> move (-13,67)
                      , circle 5 |> filled gray |> move (-18,72)
                      , circle 5 |> filled gray |> move (-11, 75)] |> addOutline(solid 1) black |> makeTransparent (sin(model.time))|> move (30,0)
                      , group [ rect 80 40 |> filled red
                      , rightTriangle 20 15 |> filled red |> move (-40,20)
                      , rightTriangle 20 15 |> filled red |> move (-20,20)
                      , rightTriangle 20 15 |> filled red |> move (0,20)
                      , rightTriangle 20 15 |> filled red |> move (20,20) ] |> addOutline (solid 1) black
                      , roundedRect 10 10 2 |> filled white |> addOutline (solid 1) black |> move (30,10)
                      , roundedRect 10 10 2 |> filled white |> addOutline (solid 1) black |> move (10,10)
                      , roundedRect 10 10 2 |> filled white |> addOutline (solid 1) black |> move (-10,10)
                      , roundedRect 10 10 2 |> filled white |> addOutline (solid 1) black |> move (-30,10)
                      , roundedRect 10 10 2 |> filled white |> addOutline (solid 1) black |> move (30,-10)
                      , roundedRect 10 10 2 |> filled white |> addOutline (solid 1) black |> move (10,-10)
                      , roundedRect 10 10 2 |> filled white |> addOutline (solid 1) black |> move (-10,-10)
                      , roundedRect 10 10 2 |> filled white |> addOutline (solid 1) black |> move (-30,-10)
                      , rect 80 5 |> filled darkGray |> addOutline (solid 1) black |> move (0,-20)
                      , rect 100 10 |> filled gray |> addOutline (solid 1) black |> move (0,-27)
                      ]

company model = group [ oval 100 10 |> filled darkGray |> move (0,-30)
                      , rect 70 100 |> filled lightBlue |> move (0,20)
                      , rect 50 10 |> filled lightBlue |> move (7,70)
                      , rect 20 10 |> filled lightBlue |> move (20,80)
                      , window |> move (0,55)
                      , window |> move (-20,55)
                      , window |> move (20,55)
                      , window |> move (0,35)
                      , window |> move (-20,35)
                      , window |> move (20,35)
                      , window |> move (0,15)
                      , window |> move (-20,15)
                      , window |> move (20,15)
                      , rect 70 10 |> filled gray |> move (0,-20)
                      , door |> move (0,-15)
                      ]

window = group [ square 10 |> filled darkBlue |> addOutline (solid 1) black
               , line (-3,-3)(2,2) |> outlined(solid 2) lightBlue |> makeTransparent 0.5 |> move (0,2)
               , line (-3,-3)(2,2) |> outlined(solid 1) lightBlue |> makeTransparent 0.5 |> move (0,-1)
               , rect 10 1 |> filled white |> move (0,-5)
               ]
door = group [ rect 50 30 |> filled darkBlue |> addOutline (solid 1) black
              , line (10,-15)(10,15) |> outlined (solid 1) darkGray
              , line (-10,-15)(-10,15) |> outlined (solid 1) darkGray
              , line (-20,10)(-20,-5) |> outlined(solid 1) lightBlue |> makeTransparent 0.5
              , line (20,5)(20,-15) |> outlined (solid 1) lightBlue |> makeTransparent 0.5
              ]
-- route1 = group [curve (0,0) [Pull (10,0) (12,-3), Pull (17,-5) (20,0), Pull (30,10) (35,0), Pull (46,-17) (50,0), Pull (53,15) (64,3), Pull (67,0) (75,0) ] |> outlined (solid 2) gray ]

route = group [ rect 1500 50 |> filled darkGray |> addOutline (solid 1) black
              , line (-900,0)(900,0) |> outlined (dashed 1) white
              ]

tractor model = group [
                      group [ roundedRect 150 50 5 |> filled red |> addOutline (solid 1) black |> move (40,0)
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
                      , group [  rect 100 50 |> filled red |> move (-60,-10)
                      , group [ circle 15 |> filled white
                      , circle 10 |> filled black |> addOutline (dotted 3) black
                      , circle 6 |> filled white ] |> move (-90,-40)
                      , group [ circle 15 |> filled white
                      , circle 10 |> filled black |> addOutline (dotted 3) black
                      , circle 6 |> filled white ] |> move (-30,-40)]
                      ]

main =
    gameApp
        Tick
        {
            model = init
        ,   view = view
        ,   update = update
        ,   title = "Factory Example" -- This is the title of the browser window / tab
        }
