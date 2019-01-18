{-
Road Race Game
------------------
Here is a small game where you can have a nice ride. 
Watch out!! this is a road where vehicles can navigate in any directions. 
You have no scores or time limits here. Enjoy the never ending game.
-}

module Main exposing (main)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (GetKeyState,gameApp)

init = { time = 0 , myCar = (0,0) , playing = True} --initial values

type Msg = Tick Float GetKeyState

drawCar  = --Player's car
  group [ roundedRect 15 15 2 |> filled blue |> move (0,3)
          , roundedRect 10 5 2 |> filled white |> move (0,3)
          , rect 15 3 |> filled black
          , circle 1 |> filled yellow |> move (4,0)
          , circle 1 |> filled yellow |> move (-4,0)
          , oval 2 4 |> filled black |> move (5,-5)
          , oval 2 4 |> filled black |> move (-5,-5)
          
        ]

view model =
    collage 300 300 (myShapes model)

myShapes model = 
    [ if model.playing then
         group [ rectangle 150 300 |> filled gray -- Whole road
                 , rectangle 100 300 |> outlined (dashed 3) white -- Road limit
                 , drawCar |> scale 2 |> move model.myCar
                 , obstacle1 |> move(obs1Position model)
                 , obstacle2 |>move(obs2Position model)
                 , obstacle3 |>move(obs3Position model)
                 , obstacle4 |>move(obs4Position model)
               ]
      else
         group [ text "OOPS!! Game Over!!" |> filled red |> move(-50,0) ]
    ]

--Other vehicles moving in the road
obstacle1 = 
    group [ roundedRect 30 25 5 |> filled green |> move (10,10)
          , roundedRect 25 5 2 |> filled white |> move (10,10)
          , rect 30 5 |> filled black |> move (10,5)
          , circle 2 |> filled yellow |> move (0,5)
          , circle 2 |> filled yellow |> move (20,5)
          , oval 2 4 |> filled black |> move (0,0)
          , oval 2 4 |> filled black |> move (20,0)

    ]  
obstacle2 = 
    group [ roundedRect 50 25 5 |> filled lightBlue |> move (5,50)
          , roundedRect 40 5 2 |> filled white |> move (5,50)
          , rect 50 5 |> filled black |> move (5,45)
          , circle 2 |> filled yellow |> move (-10,45)
          , circle 2 |> filled yellow |> move (20,45)
          , oval 2 4 |> filled black |> move (-10,40)
          , oval 2 4 |> filled black |> move (20,40)

    ]    
obstacle3 = 
    group [ roundedRect 30 25 5 |> filled brown |> move (-10,10)
          , roundedRect 25 5 2 |> filled white |> move (-10,10)
          , rect 30 5 |> filled black |> move (-10,5)
          , circle 2 |> filled yellow |> move (0,5)
          , circle 2 |> filled yellow |> move (-20,5)
          , oval 2 4 |> filled black |> move (0,0)
          , oval 2 4 |> filled black |> move (-20,0)
    ]
obstacle4 =
    group [ roundedRect 50 25 5 |> filled yellow |> move (-5,50)
          , roundedRect 40 5 2 |> filled white |> move (-5,50)
          , rect 50 5 |> filled black |> move (-5,45)
          , circle 2 |> filled yellow |> move (10,45)
          , circle 2 |> filled yellow |> move (-20,45)
          , oval 2 4 |> filled black |> move (10,40)
          , oval 2 4 |> filled black |> move (-20,40)
    ]    
    
-- Speeds of the other vehicles. Two way vehicles
obs1Position model = (20,500*cos (0.3*model.time) )
obs2Position model = (20,1300*cos (0.2*model.time))
obs3Position model = (-20,1000*cos (0.1*model.time))
obs4Position model = (-20,700*cos (0.4*model.time))

{-
-- One way navigation of the other vehicles, but in this way all vehicles collides at a point
obs1Position model = (20,-700 * (model.time/20 - toFloat(round(model.time/20))))
obs2Position model = (20,1200* (model.time/20 - toFloat(round(model.time/20))))
obs3Position model = (-20,-1000* (model.time/20 - toFloat(round(model.time/20))))
obs4Position model = (-20,-500* (model.time/20 - toFloat(round(model.time/20))))
-}

update msg model = case msg of
                     Tick t (_,(x,y),_) -> 
                       let
                         (oldPlayerX,oldPlayerY) = model.myCar
                         --newPlayerY = oldPlayerY + y -- to move ahead step by step  but no limits
                         newPlayerY = if oldPlayerY > 125 then -- Limits the player not to move away from the frame
                                         125
                                      else if oldPlayerY < -125 then
                                         -125
                                      else oldPlayerY + 6*y -- Increase the speed of navigation
                         newPlayerX = if oldPlayerX > 30 then 
                                         30 
                                      else if oldPlayerX < -30 then 
                                         -30
                                      else oldPlayerX + 6*x -- Increase the speed of navigation
                       in
                         { model | time = t
                         , myCar = (newPlayerX,newPlayerY)
                         , playing = 
                             let
                               (car1x,car1y) = obs1Position model
                               (car2x,car2y) = obs2Position model
                               (car3x,car3y) = obs3Position model
                               (car4x,car4y) = obs4Position model
                             in
                               if abs (newPlayerX - car1x) <= 15 --Collision logic
                               && abs (newPlayerY - car1y) < 15 then 
                                  False 
                               else if abs (newPlayerX - car2x) <= 25 
                                    && abs (newPlayerY - car2y) < 25 then
                                  False
                               else if abs (newPlayerX - car3x) <= 15 
                                    && abs (newPlayerY - car3y) < 15 then
                                  False
                               else if abs (newPlayerX - car4x) <= 25 
                                    && abs (newPlayerY - car4y) < 25 then
                                  False
                               else model.playing
                        }

main =
    gameApp
        Tick
        { 
            model = init
        ,   view = view
        ,   update = update
        ,   title = "Road Race Example" 
        }
