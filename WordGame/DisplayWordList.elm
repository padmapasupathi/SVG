import GraphicSVG exposing (..)
--import GraphicSVG.App exposing (appWithTick, AppWithTick, GetKeyState)
import Url exposing (Url)
import GraphicSVG.EllieApp exposing (..)
import Browser exposing (UrlRequest)
import Browser.Events
import Browser.Dom as Dom
import Random.List exposing(shuffle)
import Task
import Dict
import Random
import Set exposing(Set)
import Array
import String exposing (..)
import WrdFromElmJr2019May15
--import WrdFromElmJr2019May16
import Wrd1558528511662312

words = WrdFromElmJr2019May15.words  ++ Wrd1558528511662312.words -- ++ WrdFromElmJr2019May16.words ++ Wrd1526388449251721.words ++ Wrd1526642931059256.words ++ Wrd1526743215065487.words
wordArray = Array.fromList WrdFromElmJr2019May15.words
arrayLength = List.length WrdFromElmJr2019May15.words

type Msg
    = Tick Float GetKeyState -- basic type needed, this gets sent to your update 30 times per second
    | GetNewPicture -- message from the button telling the program to find a new random number
    | NewImage Int -- the random number generator returns with a new image

type Object = Object (Int,Int) String (Int,Int) ({ time : Float } -> List (Shape Msg) )

--Generates a random number between 0 and the length of the word list
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

getWord idx = case Array.get idx wordArray of
                    Just ((username,word,_),(_,school,pic)) -> (pic,(username,word,school))
                    Nothing                             -> (\ _ -> [],("","no word",""))

getRandChoices = Random.generate RandIdx (Random.map5 ( \ i j k l c -> ( i,(j,k),(l,c) ) )
                                          oneRandIdx randCoord randCoord randCoord randCoord)
oneRandIdx = Random.int 0 (arrayLength - 1)
randCoord   = Random.int 0 (gridSize - 1)

gridSize = 8

main : EllieAppWithTick () Model Msg
main =
    ellieAppWithTick Tick
        { init = \ _ -> (init  -- this is the initial state, like you are used to
                                    -- this requests the first random number
                                    , getRandChoices)
        , update = update
        , view = \ model -> { title = "DisplayRandom", body = view model }
        , subscriptions = \_ -> Sub.none
        }


-- starting model is blank and contains time, the current shape and the current word

type alias Model =
  { time : Float
  , shape : { time : Float } -> List (Shape Msg)
  , word : String
  , numObjects : Float
  , objects : List Object
  }

model0 : Model
model0 =
    { time = 0, shape = \t -> [], word = "", objects = [], numObjects = 4
     }



--initialize with the blank model and a command to get a starting picture

init : Model
init =  model0

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
    Tick t _ ->
      ( addNewPicsIfNeeded { model | time = t }, if List.length model.objects < round model.numObjects then getRandChoices else Cmd.none )

    NewImage n -> -- called with this message when the Random Number Generator returns
            let
                wordArray =
                    -- convert list to array so we can index it
                    Array.fromList words

                ( word, shape ) =
                    --extract the word and shape from the array
                    case
                        (Array.get n wordArray)
                    of
                        -- index exists
                        Just ( (user, word0, grade), (name, school, shape0) ) ->
                            ( word0, shape0 )

                        -- index does not exist, use some defaults
                        Nothing ->
                            ( "", \t -> [] )
            in
                ( { model | word = word, shape = shape }, Cmd.none )

    GetNewPicture ->
            ( model, generateRandom )

view : Model -> Collage Msg
view model =
    collage 500
        500
        [ group <| model.shape { time = model.time } --display shape
        , text model.word |> centered |> filled black |> move ( 0, -150 )
        , button |> move ( 0, -200 ) |> notifyTap GetNewPicture

        ] ++ (List.concatMap (drawObject model.time)
               model.objects
           )


button =
    group
        [ roundedRect 50 25 1 |> filled green
        , text "New" |> centered |> filled white |> move ( 0, -3 )
        ]
