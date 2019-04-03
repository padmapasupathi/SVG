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

myShapes model = [ line (-5,5)(15,15) |> outlined (solid 0.5) black |> move (-25,0) |> move (0, 1 + cos (2*model.time)) -- Hidden Rope 1 
                 , group [ polygon [(5,-1),(-5,3),(3,-9),(15,-16)]  |> filled red |> rotate (degrees 15) |> move (15,-8) -- Helicopter
                 , polygon [(5,-1),(-5,3),(3,-9),(15,-16)]  |> outlined(solid 0.5) black |> rotate (degrees 15) |> move (15,-8)
                 , polygon [(4,4),(-2,8),(2,-2),(8,-3)]  |> filled red |> rotate (degrees 15) |> move (0,5)
                 , polygon [(4,4),(-2,8),(2,-2),(8,-3)]  |> outlined (solid 0.5) black |> rotate (degrees 15) |> move (0,5)
                 , line (0,0)(0,-8) |> outlined (solid 1) (rgb 250 150 0) |> rotate (degrees -15) |> move (3,15)
                 --, curve (0,0) [Pull (-1,8) (9,0) ]  |> filled red |> scaleY 1.5 |> move (0,2)
                 , curve (50,-5) [Pull (-2,-15) (0,0) ]  |> filled (rgb 250 150 0)
                 , curve (50,-5) [Pull (-2,-15) (0,0) ]  |> outlined (solid 1) black
                 , curve (50,-5) [Pull (-2,-15) (0,0) ]  |> filled (rgb 250 150 0) |> mirrorY |> rotate (degrees -11.5)                 
                 , curve (50,-5) [Pull (-2,-15) (0,0) ]  |>  outlined(solid 1) black |> mirrorY |> rotate (degrees -11.5)                 
                 , curve (3,0) [Pull (-3,10) (-3,0) ]  |> filled red |> move (36,3)
                 , curve (3,0) [Pull (-3,10) (-3,0) ]  |> outlined (solid 1) black |> move (36,3)
                 , curve (20,-5) [Pull (30,15) (0,0) ]  |> filled (rgb 250 150 0) |> move (25,0)
                 , curve (20,-5) [Pull (30,15) (0,0) ]  |> outlined (solid 0.5) black |> move (25,0)
                 , curve (5,0) [Pull (-5,2) (10,-5) ]  |> filled red |> scaleY 1.5 |> move (35,0)
                 , curve (5,0) [Pull (-5,2) (10,-5) ]  |> outlined (solid 0.5) black |> scaleY 1.5 |> move (35,0)
                 , oval 6 9.5 |> filled black |> rotate (degrees -7) |> move (4,-0.5)
                 , circle 1 |> filled white |> move (4,0)
                 , curve (2,0) [Pull (2,15) (0,0) ]  |> filled red |> rotate (degrees 45) |> move (2.5,0)
                 , curve (2,0) [Pull (2,15) (0,0) ]  |> outlined (solid 0.5) black |> rotate (degrees 45) |> move (2.5,0)
                 , curve (2,0) [Pull (2,15) (0,0) ]  |> filled red |> rotate (degrees -125) |> move (5.5,0)
                 , curve (2,0) [Pull (2,15) (0,0) ]  |> outlined (solid 0.5) black |> rotate (degrees -125) |> move (5.5,0)
                 , line (0,0)(0,-10) |> outlined (solid 1) (rgb 250 150 0) |> rotate (degrees -15) |> move (28,-5)
                 , polygon [(14,0),(0,14),(0,-26),(22,-40)] |> filled red|> scaleX 0.5 |> rotate (degrees 45) |> move (4,10)
                 , polygon [(14,0),(0,14),(0,-26),(22,-40)] |> outlined (solid 1) black|> scaleX 0.5 |> rotate (degrees 45) |> move (4,10)
                 , line (-2,0)(13,-15) |> outlined (solid 0.5) black |> move (10,8)
                 --, curve (10,-5) [Pull (5,-5) (0,0) ]  |> filled black |> move (40,2)
                 --, polygon [(0,0),(-3,8),(4,2)]  |> filled (rgb 100 0 100) |> rotate (degrees 190) |> move (44,4)
                 ] |> move (-75,5)
                 , group [curve (45,0) [Pull (25,-10) (0,0), Pull (-25,10) (-50,0) ]|> outlined (solid 1) black |> scaleX 1|> move (40,15) -- Banner
                  , curve (45,0) [Pull (25,-10) (0,0), Pull (-25,10) (-50,0) ]|> outlined (solid 1) black|> scaleX 1 |> move (40,-10)
                  , line (50,20)(40,5) |> outlined (solid 1) black|>  move (35,-5)
                  , line (50,15)(40,5) |> outlined (solid 1) black|> mirrorY |>  move (35,5) 
                 , rect 2 25 |> outlined (solid 1) black |> move (-10,3) -- Banner Holder
                 , circle 1.5 |> outlined (solid 1) black |> move (-10,17)
                 , circle 1.5 |> outlined (solid 1) black |> move (-10,-11)
                 --, rect 100 25 |> outlined (solid (1 + cos (3*model.time))) black |> move (40,3)
                 , line (-5,5)(15,-10) |> outlined (solid 0.5) black |> move (-25,0)] |> move (0, 1 + cos (2*model.time))
                 ]


main =
    gameApp
        Tick
        { 
            model = init
        ,   view = view
        ,   update = update
        ,   title = "Flying Banner Example" -- This is the title of the browser window / tab
        }
