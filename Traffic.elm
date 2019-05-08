module Main exposing (main)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (GetKeyState,gameApp)

init = { time = 0 , speed = Start, selected = SelectedGreen }

type Speed = Start | Slow | Stop
type Selected = SelectedGreen | SelectedYellow | SelectedRed
--type Scale = Small | Big

type Msg = Tick Float GetKeyState  | ClickGreen | ClickYellow | ClickRed | Click
  
update msg model =
    case msg of
        Tick t _ -> { model | time = t }
        ClickGreen -> { model | selected = SelectedGreen }
        ClickYellow -> { model | selected = SelectedYellow }
        ClickRed -> { model | selected = SelectedRed }
        Click -> case model.selected of
                   SelectedGreen -> { model | speed = Start }
                   SelectedYellow -> { model | speed = Slow }
                   SelectedRed -> { model | speed = Stop }
        
       {- ITS Working ClickGreen -> { model | speed = if (cos (0.5*model.time)) < 0 
                                            then 
                                              (400*sin (0.5*model.time),20.0)
                                         else
                                              (400*sin (0.5*model.time),-40.0) }
        ClickYellow -> { model | speed = if (cos (0.2*model.time)) < 0 
                                            then 
                                              (400*sin (0.2*model.time),20.0)
                                         else
                                              (400*sin (0.2*model.time),-40.0) }
        ClickRed -> { model | speed = if (cos (0.2*model.time)) < 0 
                                            then 
                                              (400*sin (0.0*model.time),20.0)
                                         else
                                              (400*sin (0.0*model.time),-40.0) } -}
       {- Click -> { model | speed = case model.speed of
                                        Start -> Slow
                                        Slow -> Stop
                                        Stop -> Start -} 
                          {- , scale = case model.scale of
                                        Small -> Big
                                        Big -> Small
                                        } -}
        

view model =
    collage 500 500
        [ rectangle 450 200 |> filled gray 
        , line (-400,0)(400,0) |> outlined (dotdash 3) white
        , car1  |> move (car1pos model) --move(changeSpeed model.speed)
        , car2  |> move (car2pos model) -- move(changeSpeed model.speed)
        , group [ rect 20 40 |> outlined (solid 2) black  |> move (88,90)
        , line (88,70)(88,0)|> outlined (solid 3) black
        , circle 5 |> filled darkGreen |> move (0,50) |> addOutline (case model.selected of
                              SelectedGreen -> solid (1 + cos (3*model.time))
                              _ -> solid 0.5
                              ) black |> move (88,30) |> notifyTap ClickGreen
        , circle 5 |> filled yellow |> move (0,60) |> addOutline (case model.selected of
                              SelectedYellow -> solid (1 + cos (3*model.time))
                              _ -> solid 0.5
                              ) black |> move (88,30) |> notifyTap ClickYellow
        , circle 5 |> filled red |> move (0,70) |> addOutline (case model.selected of
                              SelectedRed -> solid (1 + cos (3*model.time))
                              _ -> solid 0.5
                              ) black |> move (88,30) |> notifyTap ClickRed ] |> move (100,100)  |> notifyTap Click
        --, car3 |> move (car3pos model)
        ]

car1 = group [ roundedRect 70 20 5 |> filled blue |> addOutline (solid 1) black
        , group [ wedge 20 0.5 |> filled blue |> addOutline (solid 1) black |> rotate (degrees 90) |> move (5,10)
        , wedge 12 0.25 |> filled white |> addOutline (solid 1) black |> rotate (degrees 135 )|> move (2,12)
        , wedge 12 0.25 |> filled white |> addOutline (solid 1) black |> rotate (degrees 45) |> move (8,12) ] |> move (-4,0)
        , circle 7 |> filled black |> move (25,-5)
        , circle 4 |> filled white |> move (25,-5) 
        , circle 7 |> filled black |> move (-25,-5)
        , circle 4 |> filled white |> move (-25,-5) 
        ]        

car2 = group [ roundedRect 70 20 5 |> filled green |> addOutline (solid 1) black
        , group [ wedge 20 0.5 |> filled green |> addOutline (solid 1) black |> rotate (degrees 90) |> move (5,10)
        , wedge 12 0.25 |> filled white |> addOutline (solid 1) black |> rotate (degrees 135 )|> move (2,12)
        , wedge 12 0.25 |> filled white |> addOutline (solid 1) black |> rotate (degrees 45) |> move (8,12) ] |> move (-4,0)
        , circle 7 |> filled black |> move (25,-5)
        , circle 4 |> filled white |> move (25,-5) 
        , circle 7 |> filled black |> move (-25,-5)
        , circle 4 |> filled white |> move (-25,-5) 
        ]        

{-car3 = group [ roundedRect 70 20 5 |> filled orange
        , group [ wedge 20 0.5 |> filled orange |> rotate (degrees 90) |> move (5,10)
        , wedge 12 0.25 |> filled white |> rotate (degrees 135 )|> move (2,12)
        , wedge 12 0.25 |> filled white |> rotate (degrees 45) |> move (8,12) ] |> move (-4,0)
        , circle 7 |> filled black |> move (25,-5)
        , circle 4 |> filled white |> move (25,-5) 
        , circle 7 |> filled black |> move (-25,-5)
        , circle 4 |> filled white |> move (-25,-5) 
        ]        -}

{-changeSpeed speed model = case speed of
                            Start -> (400*sin (0.5*model.time),20.0)
                            Slow -> (400*sin (0.2*model.time),20.0)
                            Stop -> (400*sin (0*model.time),20.0) -}
{- changeSpeed speed model =  case speed of
                            Start ->  if (cos (0.2*model.time)) < 0  
                               then (400*sin (0.5*model.time),20.0)  
                                     else (400*sin (0.5*model.time),-40.0) 
                            Slow ->  if (cos (0.2*model.time)) < 0 
                                            then 
                                              (400*sin (0.2*model.time),20.0)
                                         else
                                              (400*sin (0.2*model.time),-40.0) 
                            Stop -> if  (cos (0.2*model.time)) < 0 
                                            then 
                                              (400*sin (0*model.time),20.0)
                                         else
                                              (400*sin (0*model.time),-40.0) -}
 
changeSpeed speed model = case speed of 
                            Start -> 0.5
                            Slow -> 0.2
                            Stop -> 0 
{-changeScale scale model = case scale of 
                             Small -> 1.0
                             Big -> 2.0 -}

car1pos model = if (cos (0.2*model.time)) < 0 
            then 
              (400*sin ((changeSpeed model.speed model)*model.time),60)
          else
              (400*sin ((changeSpeed model.speed model)*model.time),-80)
                             
{-car2pos model = if (cos (0.2*model.time)) < 0 
            then 
              (400*sin (0.5*model.time),60)
          else
              (400*sin (0.5*model.time),-80) -}

car2pos model = if (cos (0.2*model.time)) < 0 
            then 
              (400*sin ((changeSpeed model.speed model)*0.5*model.time),40)
          else
              (400*sin ((changeSpeed model.speed model)*0.5*model.time),-40)

main =
    gameApp
        Tick
        { 
            model = init
        ,   view = view
        ,   update = update
        ,   title = "Traffic Example" -- This is the title of the browser window / tab
        }
