myShapes model =
    case model.state of
        Level1  ->
            case model.pState of
                      Play -> [ text "Move your ship into the worm hole" |> centered |> filled black |> move (10,70)
                              , group [ roundedRect 30 25 10 |> filled red
                              , text "Quit" |> centered |> filled white |> move (0,-3)] |> move (50,50) |> notifyTap From1
                              , ship model |> move model.myShip
                              , wormH model |> move model.wormHole
                              ]
                      otherwise -> [ text "Level1 completed!" |> centered |> filled black |> move (0,0)
                              , group [ roundedRect 30 25 10 |> filled green
                              , text "Next" |> centered |> filled white ] |> move (50,70)|> notifyTap ToL2
                              ]
        Level2  ->
            [ text "Level2" |> centered |> filled black
              , group [ roundedRect 35 25 10 |> filled green
              , text "Next 1" |> centered |> filled black  ] |> move (-50,30) |> notifyTap ToL3a
              , group [ roundedRect 35 25 10 |> filled green
              , text "Next 2" |> centered |> filled black  ] |> move (-10,30) |> notifyTap ToL3b
              , group [  roundedRect 30 25 10 |> filled red
              , text "Quit" |> centered |> filled black ] |> move (50,30) |> notifyTap From2
            ]
        Level3a  ->
            [ text "Level3a" |> centered |> filled black
              , group [ roundedRect 30 25 10 |> filled green
              , text "Next" |> centered |> filled black  ] |> move (-30,30) |> notifyTap From3aTo4
              , group [  roundedRect 30 25 10 |> filled red
              , text "Quit" |> centered |> filled black ] |> move (30,30) |> notifyTap From3a
            ]
        Level3b  ->
            [ text "Level3b" |> centered |> filled black
              , group [ roundedRect 30 25 10 |> filled green
              , text "Next" |> centered |> filled black  ] |> move (-30,30) |> notifyTap From3bTo4
              , group [  roundedRect 30 25 10 |> filled red
              , text "Quit" |> centered |> filled black ] |> move (30,30) |> notifyTap From3b
            ]
        Level4  ->
            [ text "Level4" |> centered |> filled black
              , group [  roundedRect 30 25 10 |> filled red
              , text "Quit" |> centered |> filled black ] |> move (30,30) |> notifyTap From4
            ]
        Quit  ->
            [ text "Quit"
                  |> centered
                  |> filled black
            ]

type Msg = Tick Float GetKeyState
         | ToL2
         | ToL3a
         | ToL3b
         | From3aTo4
         | From3bTo4
         | From1
         | From2
         | From3a
         | From3b
         | From4

type State = Level1
           | Level2
           | Level3a
           | Level3b
           | Level4
           | Quit

type PlayState = Play | End

update msg model =
    case msg of
        Tick t (_,(nx,ny),_) ->  let
                                    (oldX,oldY) = model.myShip
                                    newX = if oldX + 0.5 * nx > 30 then 30
                                           else if oldX + 0.5 * nx < -30 then -30
                                           else oldX + 0.5 * nx
                                    newY = if oldY + 0.5 * ny > 30 then 30
                                           else if oldY + 0.5 * ny < -30 then -30
                                           else oldY + 0.5 * ny
                                 in
                                   { model | time = t
                                   , myShip = (newX,newY)
                                   --, pos = timeStep model.myShip model.pos
                                   --, vel = timeStep model.myShip model.vel
                                   , pState =  if near model.myShip model.wormHole then End
                                           else Play
                                   }
        ToL2 ->
            case model.state of
                Level1  ->
                    { model | state = Level2  }
                otherwise ->
                    model
        ToL3a ->
            case model.state of
                Level2  ->
                    { model | state = Level3a  }
                otherwise ->
                    model
        ToL3b ->
            case model.state of
                Level2  ->
                    { model | state = Level3b  }
                otherwise ->
                    model
        From3aTo4 ->
            case model.state of
                Level3a  ->
                    { model | state = Level4  }
                otherwise ->
                    model
        From3bTo4 ->
            case model.state of
                Level3b  ->
                    { model | state = Level4  }
                otherwise ->
                    model
        From1 ->
            case model.state of
                Level1  ->
                    { model | state = Quit  }
                otherwise ->
                    model
        From2 ->
            case model.state of
                Level2  ->
                    { model | state = Quit  }
                otherwise ->
                    model
        From3a ->
            case model.state of
                Level3a  ->
                    { model | state = Quit  }
                otherwise ->
                    model
        From3b ->
            case model.state of
                Level3b  ->
                    { model | state = Quit  }
                otherwise ->
                    model
        From4 ->
            case model.state of
                Level4  ->
                    { model | state = Quit  }
                otherwise ->
                    model


near (x,y) (u,v) = (x-u)^2 + (y-v)^2 < 5

ship model =  group [ polygon [(10,0),(-10,0),(-12,5),(12,8)] |> filled blue
        , rect 20 10 |> filled blue
        , circle 1 |> filled white |> move (0,0)
        , circle 1 |> filled white |> move (-5,0)
        , circle 1 |> filled white |> move (5,0)
        , rect 2 5 |> filled black |> move (5,10)
        ] |> move model.myShip

wormH model = group [oval 20 40 |> filled brown |> move model.wormHole]

type alias Model =
    { time : Float
    , state : State
    , pState : PlayState
    , myShip : ( Float, Float )
    , wormHole : (Float,Float)
   -- , pos : (Float,Float)
   -- , vel : (Float, Float)
    }

init : Model
init = { time = 0
       , myShip = (-40,0)
       , wormHole = (30,0)
       , state = Level1
       , pState = Play
       --, pos = (-30,0)
       --, vel = (0,0)
       }
