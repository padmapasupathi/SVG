module Main exposing (main)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (GetKeyState,gameApp)

init = { time = 0 }

type Msg = Tick Float GetKeyState
  
update msg model =
    case msg of
        Tick t _ -> { model | time = t }

view model =
    collage 500 500
        (  myShapes model )

myShapes model = [ group [ line (10,10)(-10,-40) |> outlined (solid 1) black |> scaleX 2
                 , line (-10,10)(10,-40) |> outlined (solid 1) black |> scaleX 2
                 , line (0,20)(0,-50) |> outlined (solid 1) black |> scaleX 2
                 , line (20,-16)(-20,-16) |> outlined (solid 2) black |> scaleX 2
                 , group [ curve (5,0) [Pull (-5,0) (-5,-10) ]  |> outlined (solid 1) black |> move (14,-16)
                 , curve (5,0) [Pull (-5,0) (-5,-10) ]  |> outlined (solid 1) black |> scale 1.5 |> move (22,-17)] --bottom right up web
                 , group [ curve (5,0) [Pull (-5,0) (-5,-10) ]  |> outlined (solid 1) black |> mirrorY |> move (14,-15.5)
                 , curve (5,0) [Pull (-5,0) (-5,-10) ]  |> outlined (solid 1) black |> scale 1.6 |> mirrorY |> move (22,-15)] --top right down web
                
                 , group [ curve (5,0) [Pull (-5,0) (-5,-10) ]  |> outlined (solid 1) black |> rotate (degrees 125) |> move (3,0)
                 , curve (5,0) [Pull (-5,0) (-5,-10) ]  |> outlined (solid 1) black |> scale 1.5 |> rotate (degrees 125)|> move (3,6)] --top right up web
                 , group [ curve (5,0) [Pull (-5,0) (-5,-10) ]  |> outlined (solid 1) black |> rotate (degrees 105)|> mirrorX  |> move (0,2)
                 , curve (5,0) [Pull (-5,0) (-5,-10) ]  |> outlined (solid 1) black |> scale 1.5 |> rotate (degrees 105)|> mirrorX |> move (-1,8)] --top left up web
                 
                 , group [ curve (5,0) [Pull (-5,0) (-5,-10) ]  |> outlined (solid 1) black |> rotate (degrees 125) |> mirrorY |> move (3,-30)
                 , curve (5,0) [Pull (-5,0) (-5,-10) ]  |> outlined (solid 1) black |> scale 1.5 |> rotate (degrees 125)|> mirrorY|> move (3,-36)] --bottom right down web
                 , group [ curve (5,0) [Pull (-5,0) (-5,-10) ]  |> outlined (solid 1) black |> rotate (degrees 105)|> mirrorX |>mirrorY |> move (0,-30)
                 , curve (5,0) [Pull (-5,0) (-5,-10) ]  |> outlined (solid 1) black |> scale 1.5 |> rotate (degrees 105)|> mirrorX |> mirrorY |> move (-1,-40)] --bottom left down web
                 
                 , group [ curve (5,0) [Pull (-5,0) (-5,-10) ]  |> outlined (solid 1) black |> mirrorX |> move (-14,-16)
                 , curve (5,0) [Pull (-5,0) (-5,-10) ]  |> outlined (solid 1) black |> scale 1.5 |> mirrorX |> move (-22,-17)] --bottom left up web
                 , group [ curve (5,0) [Pull (-5,0) (-5,-10) ]  |> outlined (solid 1) black |> mirrorX |> mirrorY |> move (-14,-15)
                 , curve (5,0) [Pull (-5,0) (-5,-10) ]  |> outlined (solid 1) black |> scale 1.6 |> mirrorX |> mirrorY |> move (-22,-15)] --top left down web
                 ] |> scale 2 --web
                 , group [ group [ curve (0,0) [Pull (-15,10) (0,0), Pull (10,-20) (0,0) ]  |> outlined (solid 2) darkGray |> move (10,-18) -- right leg 1
                 , oval 4 2 |> filled darkGray |> move (16,-28) ]
                 , group [ curve (0,0) [Pull (-15,10) (0,0), Pull (10,-20) (0,0) ]  |> outlined (solid 2) darkGray |> mirrorX |> move (-20,-15) -- left leg 1
                 , oval 4 2 |> filled darkGray |> move (-26,-25) ]
                 , group [ curve (0,0) [Pull (-15,5) (0,0), Pull (15,-20) (0,0) ]  |> outlined (solid 2) darkGray |> move (16,-11) --right leg 2
                 , oval 4 2 |> filled darkGray |> move (25,-22) ]
                 , group [ curve (0,0) [Pull (-15,5) (0,0), Pull (15,-20) (0,0) ]  |> outlined (solid 2) darkGray |> mirrorX |> move (-22,-8) --left leg 2
                 , oval 4 2 |> filled darkGray |> move (-30,-18) ]
                 , group [ curve (0,0) [Pull (-15,-5) (0,0), Pull (15,-25) (0,0) ]  |> outlined (solid 2) darkGray |> move (20,0) --right leg 3
                 , oval 4 2 |> filled darkGray |> move (29,-13) ]
                 , group [ curve (0,0) [Pull (-15,-5) (0,0), Pull (15,-25) (0,0) ]  |> outlined (solid 2) darkGray |> mirrorX |> move (-20,5) --left leg 3
                 , oval 4 2 |> filled darkGray |> move (-29,-8) ]
                 , group [ curve (0,0) [Pull (-15,-15) (0,0), Pull (15,-25) (0,0) ]  |> outlined (solid 2) darkGray |> move (22,12) --right leg 4
                 , oval 4 2 |> filled darkGray |> move (31,-1) ]
                 , group [ curve (0,0) [Pull (-15,-15) (0,0), Pull (15,-25) (0,0) ]  |> outlined (solid 2) darkGray |> mirrorX |> move (-15,18) --left leg 4
                 , oval 4 2 |> filled darkGray |> move (-24,5) ]
                 , oval 30 25 |> filled red |> rotate (degrees 35) --red body part of spider
                 , oval 30 25 |> outlined (solid 0.5) black |> rotate (degrees 35)
                 , oval 5 3 |> filled yellow |> rotate (degrees 35) |> move (-3,7) --yellow spots
                 , oval 5 3 |> filled yellow |> rotate (degrees 35) |> move (-2,-2) --yellow spots
                 , oval 7 5 |> filled yellow |> rotate (degrees 35) |> move (7,5) --yellow spots
                 , oval 5 3 |> filled yellow |> rotate (degrees 35) |> move (5,-5) -- yellow spots
                 , roundedRect 20 18 8 |> outlined (solid 0.5) black |> move (-8,-8)
                 , roundedRect 20 18 8 |> filled gray |> move (-8,-8) --face of spider
                 , curve (5,0) [Pull (2,6) (0,-1) ]  |> outlined (solid 0.75) black |> move (-15,-2) --left eyebrow
                 , curve (5,0) [Pull (2,6) (0,-1) ]  |> outlined (solid 0.75) black |> mirrorX |> move (0,-2) --right eyebrow
                 , oval 3 5 |> filled white |> move (-12,-5) -- left eye
                 , oval 3 5 |> outlined (solid 0.25) black |> move (-12,-5)
                 , oval 2 4 |> filled black |> move (-12,-5)
                 , circle 0.5 |> filled white |> move (-12,-5)
                 , oval 3 5 |> filled white |> move (-3,-5) --right eye
                 , oval 3 5 |> outlined (solid 0.25) black |> move (-3,-5)
                 , oval 2 4 |> filled black |> move (-3,-5)
                 , circle 0.5 |> filled white |> move (-3,-5)
                 --, curve (10,0) [Pull (5,-5) (0,0) ]  |> outlined (solid 1.5) red |> move (-14,-10) --mouth
                 --, curve (20,0) [Pull (10,-10) (0,0), Pull (10,-10) (10,-10) ]  |> filled red |> scale 0.62 |> move (-15,-9)
                 , wedge 4 0.5 |> filled lightRed |> rotate (degrees -90) |> move (-8,-10)
                 , curve (30,0) [Pull (0,-15) (0,0), Pull (5,8) (15,0), Pull (4,3) (24,3) ] |>  filled pink |> scale 0.2 |> rotate (degrees 35)|> move (-8.5,-13.5) 
                -- , curve (20,0) [Pull (10,-10) (0,0), Pull (10,-10) (10,-10), Pull (0,-8) (0,0) ] |> filled red |> scale 0.65 |> move (-15,-9)   --Toungue
                 
                 ] |> scale 1.5
                 ]


main =
    gameApp
        Tick
        { 
            model = init
        ,   view = view
        ,   update = update
        ,   title = "Spider Example" -- This is the title of the browser window / tab
        }
