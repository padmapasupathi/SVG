import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)

myShapes model = let interval  = round <| (model.time - 6 * toFloat  (round <| model.time / 6))
                 in [ rect 1000 500 |> filled black
                 ,  (case interval of
                      0 -> hair1b
                      1 -> hair2b
                      2 -> hair3b
                      3 -> hair4b
                      _ -> \ _ -> group []
                      )model
                    ,  
                    group [ group[ oval 24 44 |> filled white --ears
                       ] |> move (-140,0)
                     , oval 24 44 |> filled white ] |> move (70,0) --ears
                      
                  , oval 143 156 |> filled white |> move (0,-7) -- face
                   
                 -- ,  curve (33,0) [Pull (13,-10) (0,0) ] |> outlined (solid 1) red |> scale 1 |> move (-15,-40)--mouth
                                              
                , (case interval of
                      0 -> hair1f
                      1 -> hair2f
                      2 -> hair3f
                      3 -> hair4f
                      --4 -> hijab
                      _ -> turban False
                      
                      )model
                    ]

hair1f model = group [
                    bangs model
                    |> scale 1.2
                    |> move (70,50) --(11,10)(70,50)
                   ,bangs model
                    |> scale 1.2
                    |> move (68,50) --(-12,10)(68,50)
                    |> mirrorX

                  
                    ]

hair1b model = group [

               roundedRect 148 143 30
                    |> filled white
                    |> move (0,-50)

                , rect 1 140
                    |> filled white
                    |> move (-60,-30)
                , rect 1 150
                    |> filled white
                    |> move (-50,-40)
                , rect 1 150
                    |> filled white
                    |> move (-30,-40)
                , rect 1 140
                    |> filled white
                    |> move (60,-30)
                , rect 1 150
                    |> filled white
                    |> move (50,-40)
                , rect 1 150
                    |> filled white
                    |> move (30,-40)
                , rect 33 153
                    |> filled white
                    |> move (0,-45)

                , rect 30 150
                    |> filled white
                    |> move (0,-50)


               ]

bangs model = group [
                curve (0,0) [Pull (10,50) (40,50)]
                    |> filled white
                    |> move (-73,-63) --(-78,-68)
                    |> scale 1.7
                ,curve (0,0) [Pull (50,10) (40,50)]
                    |> filled white
                    |> move(-73,-63) --(-78,-68)
                    |> scale 1.7

                    ]

--Long curly hair
hair2f model = group [
                oval 60 95
                      |> filled white
                      |> rotate (degrees -65)
                      |> move (-20,-15)
                ,oval 20 30
                      |> filled white
                      |> rotate (degrees 60)
                      |> move (27,0)
               
                
                  ]

hair2b model = group [
            -- top of the head
            oval 154 74
                |> filled white
                |> move (0,55)
            ,oval 54 74
                |> filled white
                |> move (55,40)
              |> rotate (degrees -40)
            ,oval 54 74
                |> filled white
                |> move (-55,40)
               |> rotate (degrees 40)
            ,oval 74 184
                |> filled white
              |> rotate (degrees 5)
                |> move (40,-15)
            ,oval 44 74
                |> filled white
                |> move (80,10)
               |> rotate (degrees 5)
            ,oval 74 184
                |> filled white
               |> rotate (degrees -5)
                |> move (-40,-15)
            ,oval 44 74
                |> filled white
                |> move (-80,10)
                |> rotate (degrees -5)
            ,oval 74 184
                |> filled white
                |> rotate (degrees -25)
                |> move (-50,0)
            --long
           ,oval 74 184
                |> filled white
                |> rotate (degrees 25)
                |> move (50,0)
          
                  ]
--Short bob
hair3f model = group [ oval 60 122
                      |> filled white
                      |> rotate (degrees -65)
                      |> move (-20,-15)
                ,oval 20 30
                      |> filled white
                      |> rotate (degrees 60)
                      |> move (35,0)
                
                      ] |> scale 0.8
hair3b model = group [
                      oval 73 123
                            |> filled (white)
                            |> rotate (degrees -55)
                            |> move (-25,50)
                      ,oval 73 123
                            |> filled white
                            |> rotate (degrees 55)
                            |> move (25,50)
                      ,oval 73 123
                            |> filled white
                            |> move (-50,0)
                      ,oval 73 123
                            |> filled white
                            |> move (50,0)

                      ]
--Close army cut
hair4f model = group [
                      oval 100 30 |> filled white |> move (0,-2)
                      ]
hair4b model = group [oval 73 123
                            |> filled (white)
                            |> rotate (degrees -55)
                            |> move (-25,50)
                      ,oval 73 123
                            |> filled white
                            |> rotate (degrees 55)
                            |> move (25,50)



                      
                      ]
{-}
beard model = group [ circle 19
                      |> filled white
                      |> move (55,-20)
                ,circle 14
                      |> filled white
                      |> move (62,-33)
                ,circle 18
                      |> filled white
                      |> move (42,-10)
                ,circle 20
                      |> filled white
                      |> move (30,-3)
                ,circle 18
                      |> filled white
                      |> move (15,5)
                ,circle 20
                      |> filled white
                      |> move (0,5)
                ,circle 19
                      |> filled white
                      |> move (-55,-20)
                ,circle 14
                      |> filled white
                      |> move (-62,-33)
                ,circle 18
                      |> filled white
                      |> move (-42,-10)
                ,circle 20
                      |> filled white
                      |> move (-30,-3)
                ,circle 18
                      |> filled white
                      |> move (-15,5)
                ,circle 17
                      |> filled brown
                      |> move (55,-20)
                ,circle 12
                      |> filled brown
                      |> move (62,-33)
                ,circle 16
                      |> filled brown
                      |> move (42,-10)
                ,circle 18
                      |> filled brown
                      |> move (30,-3)
                ,circle 16
                      |> filled brown
                      |> move (15,5)
                ,circle 18
                      |> filled brown
                      |> move (0,5)
                ,circle 17
                      |> filled brown
                      |> move (-55,-20)
                ,circle 12
                      |> filled brown
                      |> move (-62,-33)
                ,circle 16
                      |> filled brown
                      |> move (-42,-10)
                ,circle 18
                      |> filled brown
                      |> move (-30,-3)
                ,circle 16
                      |> filled brown
                      |> move (-15,5)

                    ] |> rotate (degrees 180)
                    |> scaleY 1.5
                     |> move (0,-135) 

-}
myHairBack hair = case hair of
                  HairF1 -> hair1b
                  HairF2 -> hair2b
                  HairF3 -> hair3b
                  HairF4 -> hair4b                  
                  _ -> ( \ _ -> group [] )

type HairFront = HairF1 | HairF2 | HairF3 | HairF4 
                  | Hijab
                  | Turban
changeHairFront old = case old of
                  HairF1 -> HairF2
                  HairF2 -> HairF3
                  HairF3 -> HairF4
                  HairF4 -> Hijab
                  Hijab -> Turban
                  Turban -> HairF1



myHairFront hair = case hair of
                  HairF1 -> hair1f
                  HairF2 -> hair2f
                  HairF3 -> hair3f
                  HairF4 -> hair4f
                  Hijab -> hijab
                  Turban -> turban False

--hijab
hijab model = group [
                       wedge 75 0.65 |> filled lightGreen |> rotate (degrees 90) |> move (0,-15) |> scaleY 0.8
                      , curve (-50,0) [Pull (0,-87)(60,0), Pull (0,-26) (-50,0) ] |> filled lightGreen |> rotate (degrees 90) |> move (50,-38) |>scaleY 1.5
                      , curve (-50,0) [Pull (0,-87)(60,0), Pull (0,-26) (-50,0) ] |> filled lightGreen |> rotate (degrees 90)|> mirrorX  |> move (-50,-38) |>scaleY 1.5
                      , curve (-56,0) [Pull (0,-60) (72,9), Pull (0,-20) (-45,19) ] |> filled lightGreen |> rotate (degrees -30) |> move (-34,-100) |> scaleY 1
                      , curve (-56,0) [Pull (0,-60) (72,9), Pull (0,-20) (-45,19) ] |> filled lightGreen |> rotate (degrees -30) |> mirrorX |>  move (34,-100) |> scaleY 1
                      , curve (-56,0) [Pull (0,-60) (72,9), Pull (0,-20) (-45,19) ] |> filled lightGreen |> mirrorX |> move (35,-140)
                      , curve (-56,0) [Pull (0,-60) (72,9), Pull (0,-20) (-45,19) ] |> filled lightGreen |> move (-35,-140)
                      , curve (-56,0) [Pull (0,-60) (72,9), Pull (0,-20) (-45,19) ] |> filled white |> makeTransparent 0.25 |> rotate(degrees 2) |> move (-25,-122)
                      , curve (-56,0) [Pull (0,-60) (72,9), Pull (0,-20) (-45,19) ] |> filled lightGreen |> move (-25,-120)
                      , curve (-56,0) [Pull (0,-60) (72,9), Pull (0,-20) (-45,19) ] |> filled lightGreen |> mirrorX |> move (25,-122)
                      , curve (-27,0) [Pull (0,-25) (70,-5), Pull (0,-20) (-27,0) ] |> filled white |> makeTransparent 0.25 |> rotate (degrees 6) |> move(6,-115)
                      , curve (-27,0) [Pull (0,-3) (72,13) ] |> filled white |> makeTransparent 0.25 |>  rotate (degrees 20)|> move (12,-155)
                       ]

--turban
turban withBeard model = group
  [ --if withBeard then beard model else group []
  wedge 75 0.65 |> filled (white)
    |> rotate (degrees 90)
    |> move (0,-10)
 {-} , polygon [(0,2),(90,0),(0,-2),(0,2)]
    |> filled white |> makeTransparent 0.25
    |> rotate (degrees 30)
    |> move (0,-10)
  -}]


init = { time = 0 }


type Msg = Tick Float GetKeyState --| ClickHair
  
update msg model =
    case msg of
        Tick t _ -> { model | time = t }
        --ClickHair -> { model | hairFront = changeHairFront model.hairFront }

type alias Model =
       { time : Float,
         hairFront : HairFront
         }

view model = collage 300 300 (myShapes model)

main =
    gameApp
        Tick
        { 
            model = init
        ,   view = view
        ,   update = update
        ,   title = "Avatar Icon" -- This is the title of the browser window / tab
        }

