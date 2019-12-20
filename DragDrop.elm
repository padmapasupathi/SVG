-- Look at PaintInLines first!

-- DragAndDrop

-- Example of defining a list of words and target regions to drop them.

-- We need this as the first comment line, because we use the Dict module
-- Functions starting with Dict. are from that module.  See
--     https://package.elm-lang.org/packages/elm/core/latest/Dict
import Dict exposing (Dict)

myShapes model =
  List.map drawAt wordList
  ++
  -- what we draw depends on the state, this code generated by PALDraw
  case model.state of
      Waiting  ->
          -- apply drawWord to two inputs, the index in list, and the value in the wordList
          List.indexedMap drawWord wordList

      SlinkingBack (label,(x0,y0)) progress (dx,dy) (lx,ly) ->
          [ text label
              |> centered
              |> filled black
              |> move  ( x0 + (1 - progress) * (lx - dx)
                       , y0 + (1 - progress) * (ly - dy))
          ]

      Dragging (label,(x0,y0)) (dx,dy) (lx,ly) ->
          [ text label
              |> centered
              |> filled black
              |> move ( x0 + lx - dx
                      , y0 + ly - dy)
          , rect 192 128 |> filled (rgba 0 0 255 0.01)
              |> notifyMouseUpAt MUp
              |> notifyMouseMoveAt MMove
          ]

      ProclaimingVictory (label,(x0,y0)) (lx,ly) progress ->
          [ text label
              |> centered
              |> filled black
              |> rotate (2 * pi * progress)
              |> move (lx,ly)
          , rect 192 128 |> filled (rgba 255 255 0 0.01) -- prevent clicks on words
          ]

-- draws all the polygons in the list of the target region for the word
drawAt : (String, (Color, List (List (Float,Float)))) -> Shape Msg
drawAt (_,(clr,polys)) =
    List.map ( \ poly -> polygon poly |> filled clr ) polys
        |> group

-- draws one word, and attaches a notifyMouseDownAt to start the drag operation
drawWord : Int -> (String,a) -> Shape Msg
drawWord idx (wrd,_) =
    let
        pos = (80, 60 - 15 * toFloat idx)
    in
        text wrd
            |> centered
            |> filled black
            |> move pos
            |> notifyMouseDownAt (MDown (wrd,pos))

type Msg = Tick Float GetKeyState
         | MDown ( String, ( Float, Float ) ) ( Float, Float )
         | MMove ( Float, Float )
         | MUp ( Float, Float )

type State = Waiting
           | SlinkingBack ( String, ( Float, Float ) ) Float ( Float, Float ) ( Float, Float )
           | Dragging ( String, ( Float, Float ) ) ( Float, Float ) ( Float, Float )
           | ProclaimingVictory ( String, ( Float, Float ) ) ( Float, Float ) Float

update msg model =
    case msg of
        Tick t _ ->
            case model.state of
                Waiting -> { model | time = t }
                SlinkingBack draggable progress downPos lastPos
                  -> { model | time = t
                             , state = case updateProgress model.time t progress of
                                         Just newProgress -> SlinkingBack draggable newProgress downPos lastPos
                                         Nothing -> Waiting
                             }
                Dragging draggable downPos lastPos -> { model | time = t }
                ProclaimingVictory draggable lastPos progress
                  -> { model | time = t
                             , state = case updateProgress model.time t progress of
                                         Just newProgress -> ProclaimingVictory draggable lastPos newProgress
                                         Nothing -> Waiting
                             }
        MDown draggable newPos ->
            case model.state of
                Waiting  ->
                    { model | state = Dragging draggable newPos newPos }
                otherwise ->
                    model
        MMove newPos ->
            case model.state of
                Dragging draggable downPos lastPos ->
                    { model | state = Dragging draggable downPos newPos }
                otherwise ->
                    model
        MUp newPos ->
            case model.state of
                Dragging (label,(x0,y0)) (dx,dy) (lx,ly) ->
                    { model | state = case Dict.get label model.targetDict of
                                        Just (_,polys) ->
                                          if List.filter ( \ poly -> insideConvexClockwisePoly poly (x0 + lx - dx, y0 + ly - dy) )
                                                         polys
                                              == []
                                            then
                                              SlinkingBack (label,(x0,y0)) 0 (dx,dy) (lx,ly)
                                            else
                                              ProclaimingVictory (label,(x0,y0)) (x0 + lx - dx, y0 + ly - dy) 0.0
                                        Nothing -> SlinkingBack (label,(x0,y0)) 0 (dx,dy) (lx,ly)
                            }
                otherwise ->
                    model

-- increment animation progress 0 to 1, and return Nothing if we are at the end of the animation
updateProgress old new progress =
  let
    newProgress = progress + (new - old) * speed
  in
    if newProgress < 1
      then Just newProgress
      else Nothing

speed = 0.5

type alias Model =
    { time : Float
    , state : State
    -- a Dict lets us look up values, like a normal dictionary, but with any values, not just definitions
    , targetDict : Dict String (Color, List (List (Float,Float)))
    }

init : Model
init = { time = 0
       , state = Waiting
       -- creates a Dict from a list of pairs of words and values
       , targetDict = Dict.fromList wordList
       }

wordList : List ( String  -- the word
                , (Color, List (List (Float,Float)))) -- the colour and target region
wordList = [ ("red", (red, [[(-10,-20),(-10,20),   (20,20), (-10,-20)]]))
          , ("green", (rgb 0 255 0, [[(-60,-20),(-60,20),   (-40,20), (-60,-20)]]))

          ]


---- geometry helper functions ----

-- unused function to draw a word in the middle of each region
drawInMiddle : (String,List (List (Float,Float))) -> Shape msg
drawInMiddle (label,regions) =
  let
    vertices = List.concat regions
    weights = 1 / (toFloat <| List.length vertices)
    (xSum,ySum) = List.foldr ( \ (x,y) (x1,y1) -> (x+x1,y+y1) ) (0,0) vertices
    centre = (weights * xSum, weights * ySum)
  in
    text label |> filled black |> move centre

-- return True if the point (x,y) is on the right of the line going from (x1,y1) to (x2,y2)
onRightOf : (Float,Float) -> (Float,Float) -> (Float,Float) -> Bool
onRightOf (x1,y1) (x2,y2) (x,y) =
  let
    v12 = (y1 - y2, x2 - x1)
    vp2 = (x - x2, y - y2 )
  in
    dot v12 vp2 < 0

-- calculate dot product, it is positive if two vectors are pointing in the same direction
dot : (Float,Float) -> (Float,Float) -> Float
dot (x,y) (u,v) = x*u + y*v

insideConvexClockwisePoly : List (Float,Float) -> (Float,Float) -> Bool
insideConvexClockwisePoly ptList pt =
  case ptList of
    q1 :: q2 :: qs -> if onRightOf q1 q2 pt
                        then insideConvexClockwisePoly (q2 :: qs) pt
                        else False
    otherwise -> True -- impossible
main = gameApp Tick { model = init, view = view, update = update, title = "Game Slot" }

view model = collage 192 128 (myShapes model)
