module WordFile exposing(words)
import GraphicSVG exposing(..)

words = [
    let 
        myWord = "pepper"
        myCode = 001
        myShapes model = [ myBG
                         , group [ curve (36,12) [Pull (15,-15) (0,-10), Pull (17,-22) (45,6), Pull (46,16) (36,12) ]  |> filled red |> scale 2.5 |> move (-68,-13)
                                 , curve (34,15) [Pull (30,5) (0,0) ]  |> filled gray |>rotate (degrees 20) |> move (-20,-30)
                                 , curve (30,9) [Pull (20,-16) (0,-10), Pull (7,-31) (38,6) ]  |> filled darkGreen |> rotate (degrees 180) |> move (70,20)
                                 , curve (30,0) [Pull (15,15) (0,0), Pull (7,-2) (14,3), Pull (9,-10) (22,1), Pull (35,-11) (30,0) ]  |> filled darkGreen |> rotate (degrees -25) |> move (20,20)
        ]]
        myBG = square 100 |> filled yellow
    in (myWord, myShapes)
    , let 
        myWord = "robot"
        myCode = 002
        myShapes model = [ myBG
                         , group [ circle 5 |> filled gray |> addOutline(solid 1) black |> move (0,100) -- Antenna
        , line (0,80)(0,95) |> outlined(solid 1) black |> scaleX 1.5
        , wedge 7 0.5 |> filled gray |> addOutline(solid 1) black|>  rotate (degrees 90) |> move (0,80) -- Cap
        , square 10 |> filled gray |> addOutline(solid 1) black |> move (0,52) -- Neck
        , group [ roundedRect 50 25 5 |> filled gray |> addOutline(solid 1) black |> rotate (degrees 5) |> move (0,68) -- Face
        , group [ circle 5 |> filled yellow |> addOutline (solid 1) black |> move (-10,72)
        , circle 2 |> filled black |> move (-8,70)
        , circle 5 |> filled yellow |> addOutline (solid 1) black |> move (10,74)
        , circle 2 |> filled black |> move (8,72)
        ] --eyes
        , line (-10,62)(10,65) |> outlined (solid 2) black -- Mouth
        ] -- Full Face
        , oval 40 60 |> filled gray |> addOutline (solid 1) black |> rotate (degrees -90) |> move (2,-5) --Hip
        , group [ line (25,20)(35,5) |> outlined (solid 2) black |> scale 2 
        , circle 7 |> filled gray |> addOutline (solid 1) black |> move (73,5) 
        , wedge 10 0.5 |> filled gray |> addOutline (solid 1) black |> rotate (degrees 4) |> move (44,40)
        , line (35,0)(25,-10) |> outlined (solid 2) black |> scale 2
        , curve (10,0) [Pull (0,0) (0,-10), Pull (-1,-21) (11,-20) ]  |> filled gray |> addOutline (solid 1) black |> rotate (degrees 180) |> move (50,-30)
        , curve (10,0) [Pull (0,0) (0,-10), Pull (-1,-21) (11,-20) ]  |> filled white |> addOutline (solid 2) black |> scale 0.5|> rotate (degrees 180) |> move (45,-25) 
        ]
        , group [ line (25,20)(35,5) |> outlined (solid 2) black |> scale 2 
        , circle 7 |> filled gray |> addOutline (solid 1) black |> move (73,5) 
        , wedge 10 0.5 |> filled gray |> addOutline (solid 1) black |> rotate (degrees -2) |> move (44,40)
        , line (35,0)(25,-10) |> outlined (solid 2) black |> scale 2
        , curve (10,0) [Pull (0,0) (0,-10), Pull (-1,-21) (11,-20) ]  |> filled gray |> addOutline (solid 1) black |> rotate (degrees 180) |> move (50,-30)
        , curve (10,0) [Pull (0,0) (0,-10), Pull (-1,-21) (11,-20) ]  |> filled white |> addOutline (solid 2) black |> scale 0.5|> rotate (degrees 180) |> move (45,-25) 
        ] |> rotate (degrees 180) |> move (3.5, 80) 
        , polygon [(40,25),(43,-25),(-46,-25),(-43,25)] |> filled gray |> addOutline(solid 1) black |> move (3,25)
        , polygon [(40,25),(43,-25),(-46,-25),(-43,25)] |> filled gray |> addOutline(solid 2) black |> scale 0.6 |> move (2,25)
        , wedge 10 0.5 |> filled white |> addOutline (solid 1 ) black |> rotate (degrees 90)|> move (0,20)
        , curve (10,12) [Pull (0,0) (0,-10) ]  |> filled black |> scale 0.5 |> move (-2,23)
        , line (10,-10)(15,-25) |> outlined (solid 2) black |> scale 2
        , line (-8,-10)(-13,-25) |> outlined (solid 2) black |> scale 2
        , line (-25,-50)(-25,-60) |> outlined (solid 2) black |> scale 2 |> move (25,45)
        , line (25,-50)(25,-60) |> outlined (solid 2) black |> scale 2 |> move (-20,45)
        , circle 7 |> filled gray |> addOutline (solid 1) black |> move (30,-50) 
        , circle 7 |> filled gray |> addOutline (solid 1) black |> move (-25,-50) 
        , wedge 10 0.5 |> filled gray |> addOutline (solid 1) black |> rotate (degrees 90) |> move (-25,-85)
        , wedge 10 0.5 |> filled gray |> addOutline (solid 1) black |> rotate (degrees 90) |> move (30,-85)
        ]]
        myBG = square 100 |> filled yellow
    in (myWord, myShapes)
    , let 
        myWord = "spider"
        myCode = 003
        myShapes model = [ myBG
                         , group [ group [ line (10,10)(-10,-40) |> outlined (solid 1) black |> scaleX 2
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
                 ]]
        myBG = square 100 |> filled yellow
    in (myWord, myShapes)
    , let 
        myWord = "snail"
        myCode = 004
        myShapes model = [ myBG
                         , group [ group [ oval 4 2 |> filled lightBrown |> rotate (degrees 35) |> move ( 21,2.5)|> addOutline (solid 0.5) black
                 , curve (20,2) [Pull (6,-4) (0,0), Pull (0,0) (-5,5) ]  |> outlined (solid 2.5)  lightBrown  ---Body
                 , curve (20,2) [Pull (6,-4) (0,0), Pull (0,0) (-5,5) ]  |> outlined (solid 0.5)  black |> move (0,-1) --BodyOutline
                 , curve (20,2) [Pull (6,-4) (0,0), Pull (0,0) (-5,5) ]  |> outlined (solid 0.5)  black |> move (0,1) --Body Outline
                 , curve (0,0) [Pull (0,3) (2,4) ]  |> outlined (solid 0.5) black |> move (-7,7) --Antenna
                 , circle 1 |> filled lightPurple |> move (-5,12) |> addOutline (solid 0.5) black --Antenna
                 , circle 3 |> filled lightBrown |> move (-6.75,6) |> addOutline (solid 0.5) black --HEad
                 , circle 1 |> filled white |> move (-7,7)|> addOutline (solid 0.25)black --Eye
                 , circle 0.25 |> filled black |> move (-7,7)
                 , oval 20 19 |> filled lightPurple |> move (7.5,7.5) |> addOutline (solid 0.5) black --Shell
                 --, oval 20 19 |> outlined (solid 0.5) black |> move (7.5,7.5)
                 , curve (0,0) [Pull (-9,3) (-1,-3) ]  |> filled white |> mirrorX |> scale 0.5 |> rotate (degrees 10) |> move (-9,4.5) |> addOutline (solid 0.5)black
                 ] |>scale 3
                 ]]
        myBG = square 100 |> filled yellow
    in (myWord, myShapes)
]
