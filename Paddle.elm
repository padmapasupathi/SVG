-- Keyboard control for two paddles

-- paddles in games usually have no inertia to move like ping-pong paddles
-- their mass is very low compared to the power in arm muscles
init = { time = 0 , posL = 0, posR = 0, ball = (0,0), velocity = (1,1) }

-- we don't need to use any notifyTap or notifyTapAt in this type of game
myShapes model = [ drawPaddle (rgb 255 0 0) -80 model.posL
                 , drawPaddle (rgb 0 0 255) 80 model.posR
                 , circle 5 |> filled pink |> move model.ball
                 , rect 190 170 |> outlined (solid 1) black
                 ]

-- nor do we need any new messages
type Msg = Tick Float GetKeyState

-- since we will have two paddles which look alike, we will use will make a
-- function to draw them, which takes the colour as an input
drawPaddle clr xPos yPos =
  group [ rect 3 20 |> filled clr
        ]
    |> move (xPos,yPos)

-- the update function records the time (in case we want animations)
update msg model = case msg of
                     Tick t (_,(_,dirR),(_,dirL))
                       ->  { model
                           | time = t
                           , posL = dirL + model.posL
                           , posR = dirR + model.posR
                           , ball = ballUpdate model (t - model.time)
                           }

ballUpdate model dt =
  let

    let
        (x,y) = model.ball
        (vx,vy) = model.velocity
        (newPosX,newVelX) = if x > 50 then (50, -1)
                        else if x < -50 then (-50, 1)
                        else (x + vx * 10*dt, vx)
        (newPosY,newVelY) = if y > 50 then (50, -1)
                        else if y < -50 then (-50, 1)
                        else (y + vy * 10*dt, vy)
    in
        velocity = (newVelX,newVelY)
    {-vNx = if x > 50 || x < -50 then -vx
         else vx
    vNy = if y > 50 || y< -50 then -vy else vy -}
    {- pWithG = y + vy * dt
    vWithG = vy + (-9.8) * dt
    --(pWithG,vWithG)=(x + vx * dt, y + vy * dt)
    (pNew,vNew)= if pWithG < -5 then (pWithG,-vWithG)
                                else if pWithG > 75 then (pWithG, -9.8)
                                else if (vWithG < 0 && pWithG <= 40 && pWithG >= 38 && x >=64 && x <= 70) then (-pWithG, -vWithG)
                                else if (vWithG > 0 && pWithG >= 25 && pWithG <= 27 && x >=64 && x <= 70) then (pWithG, -9.8)
                                else (pWithG, vWithG)
    vNy = vNew
   {- vNy = if (y >= 75 && y > 0) || (y <= -75 && vy < 0) || (vy >= 56 && pWithG <=38 && pWithG >= 27 && vy > 0) then
                                   --Here, we reverse the x-velocity if we detect a backboard bounce
                                    -(vy + y)
                                else vy + y -}
    vNx = if (x >= 75 && x > 0) || (x <= -75 && vx < 0) || (vx >= 56 && pWithG <=38 && pWithG >= 27 && vx > 0) then
                                   --Here, we reverse the x-velocity if we detect a backboard bounce
                                    -(vx + x)
                                else vx + x
    pNx = x + vNx *0.1
    --pNy = y + vNy *0.1
    pNy = pNew -}
    --xNew = x + vNx * dt
    --yNew = y + vNy * dt
  in
    -- (x * vx * dt, y + vy * dt)
    -- (x + vx * 0.1, pNew)
    --(xNew,yNew)
    (newPosX,newPosY)
    
