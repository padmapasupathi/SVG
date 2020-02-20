module ChoiceOfFour exposing (..)

import GraphicSVG exposing(..)
import GraphicSVG.EllieApp exposing (..)
import List
import Random
import Array

-- here is where we include a list of tuples with all of the submissions
-- we can later change this to generate games for each school
-- in this list, each tuple has this structure
{-
  let
    -- this is the code that they typed into macoutreach.rocks
    myWord = "apple" -- put your work here (in quotes) --
    myCode = 7 -- put your code number here, which came with your word (not in quotes) --

    myShapes model = [ myBackground
                     , roundedRect 102.4 102.4 20 |> outlined (solid 0.25) black
                         |> rotate model.time
                     ]

    myBackground = square 200 |> filled pink

  in
    -- and we put it into this tuple
    -- UserName     word  "grade"  "title"  "school"        shapes function
    (("DapperJaguar",myWord,"8"),("cerulean","Northlake Woods",myShapes))
-}

import WrdFromElmJr2019May15
--import WrdFromElmJr2019May16
import Wrd1558528511662312

words = WrdFromElmJr2019May15.words  ++ Wrd1558528511662312.words -- ++ WrdFromElmJr2019May16.words ++ Wrd1526388449251721.words ++ Wrd1526642931059256.words ++ Wrd1526743215065487.words
wordArray1 = Array.fromList WrdFromElmJr2019May15.words
arrayLength1 = List.length WrdFromElmJr2019May15.words

-- this draws whatever you want on the screen, based on the current state of the model
view : Model -> Collage Msg
view model = collage 192 128
  <| ( [ "Score: " ++ String.fromInt model.score |> text |> centered |> bold |> fixedwidth |> filled (rgb (125 + 125 * sin (20 * model.time)) 0 0) |> move (0,56) ]
     ) ++[ "Score: " ++ String.fromInt model.score |> text |> centered |> fixedwidth |> filled black |> move (0,56)
         , model.debug |> text |> size 2 |> filled blue |> move (-86,-20)
         ]
      ++ (List.concatMap (drawObject model.time)
             model.objects
         )

dScale = 12/100 -- 7/16 < 1/2


type Msg = Tick Float GetKeyState
         | RandIdx (Int,(Int,Int),(Int,Int))  -- four pics to display and 0..3 for the one which will be correct
         | ChooseWrd (Int,Int)
         | ChoosePic (Int,Int)

drawObject t (Object pos1 wrd pos2 pic) =
    [ (group <| pic { time = t }) |> clip (rect 100 100 |> ghost) |> scale dScale
         |> move (grid pos1)
         |> notifyTap (ChoosePic pos1)
    , text wrd |> centered |> size 4 |> bold |> filled black |> move (grid pos2)
         |> notifyTap (ChooseWrd pos2)
    ]

grid (x,y) = (toFloat x * 12 - 52, toFloat y * 12 - 52 )

update : Msg -> Model -> ( Model, Cmd Msg )
update msg m =
 let model = case msg of
               Tick _ _ -> m
               _ -> m
 in
  case msg of
    RandIdx nxt ->
          (  { model | nextRand = nxt :: model.nextRand }, Cmd.none )

    Tick t _ ->
      ( addNewPicsIfNeeded { model | time = t }, if List.length model.objects < round model.numObjects then getRandChoices else Cmd.none )

    ChooseWrd pos
      -> ( case model.state of
              Waiting -> { model | state = GotWord pos, debug = "got word" }

              GotWord _ -> model  -- ignore second word

              GotPic pos2 ->
                case isPosPair [] model.objects (pos,pos2) of
                  Just leftovers -> { model | state = Waiting
                                            , objects = leftovers
                                            , score = model.score + 1
                                            , numObjects = model.numObjects }
                  Nothing -> { model | state = Waiting, debug = "" }

         , Cmd.none )

    ChoosePic pos
      -> ( case model.state of
              Waiting -> { model | state = GotPic pos, debug = "got pic" }

              GotPic _ -> model  -- ignore second word

              GotWord pos2 ->
                case isPosPair [] model.objects (pos,pos2) of
                  Just leftovers -> { model | state = Waiting
                                            , objects = leftovers
                                            , numObjects = model.numObjects
                                            , score = model.score + 1 }
                  Nothing -> { model | state = Waiting, debug = "" }

         , Cmd.none )

isPosPair already objects (pos1,pos2) =
  case objects of
    (Object p1 wrd p2 pic) :: rest ->
        if (p1 == pos1 && p2 == pos2) || (p2 == pos1 && p1 == pos2)
          then
            Just <| already ++ rest
          else
            isPosPair ((Object p1 wrd p2 pic) :: already) rest (pos1,pos2)
    [] -> Nothing

addNewPicsIfNeeded model =
  if List.length model.objects < round model.numObjects
    then
      case model.nextRand of
        first :: rest -> addNewPicsIfNeeded { model | objects = safeAddObj first model.objects, nextRand = rest}
        [] -> model
    else
      model

safeAddObj (idx,p1,p2) objects =
  let
      currentNames = List.map ( \ (Object _ name _ _) -> name ) objects
      (newWord,newPic) = mkIdxSafe idx
      mkIdxSafe jdx =
        let
            (pic,(_,newWrd,_)) = getWord jdx
        in
            if newWrd == "no word"
              then
                mkIdxSafe 0
              else
                if List.member newWrd currentNames
                  then
                    mkIdxSafe (jdx+1)
                  else
                    (newWrd,pic)
      currentPoss = List.concatMap ( \ (Object pos1 _ pos2 _) -> [pos1,pos2]) objects
      safePos1 = mkPosSafe currentPoss p1
      safePos2 = mkPosSafe (safePos1 :: currentPoss) p2

      mkPosSafe dontOverlap (x,y) =
        if List.member (x,y) dontOverlap
          then
            mkPosSafe dontOverlap ( modBy (x + 5) gridSize, modBy (y+3) gridSize )
          else
            (x,y)

  in

    (Object safePos1 newWord safePos2 newPic) :: objects

getRandChoices = Random.generate RandIdx (Random.map5 ( \ i j k l c -> ( i,(j,k),(l,c) ) )
                                          oneRandIdx randCoord randCoord randCoord randCoord)
oneRandIdx = Random.int 0 (arrayLength - 1)
randCoord   = Random.int 0 (gridSize - 1)

gridSize = 8

type Object = Object (Int,Int) String (Int,Int) ({ time : Float } -> List (Shape Msg) )

type State = Waiting
           | GotWord (Int,Int)
           | GotPic (Int,Int)

type alias Model = { time : Float
                   , score : Int
                   , numObjects : Float
                   , objects : List Object
                   , nextRand : List (Int, (Int,Int), (Int,Int))
                   , state : State
                   , debug : String
                   }
init : Model
init = { time = 0
       , score = 0
       , numObjects = 3
       , objects = []
       , nextRand = []
       , debug = ""
       , state = Waiting
       }


-- turn a string into a list of characters to make it possible to drop letters not the whole word
stringToChars s = String.foldr ( \ c cs -> c :: cs ) [] s

-- this is an array of all the words tuples, so you can access them in any order
wordArray = Array.fromList words
arrayLength = List.length words

getWord idx = case Array.get idx wordArray of
                Just ((username,word,_),(_,school,pic)) -> (pic,(username,word,school))
                Nothing                             -> (\ _ -> [],("","no word",""))

main : EllieAppWithTick () Model Msg
main =
    ellieAppWithTick Tick
        { init = \ _ -> (init  -- this is the initial state, like you are used to
                                    -- this requests the first random number
                                    , getRandChoices)
        , update = update
        , view = \ model -> { title = "MatchGame "++String.fromInt model.score, body = view model }
        , subscriptions = \_ -> Sub.none
        }
