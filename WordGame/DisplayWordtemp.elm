import GraphicSVG exposing (..)
--import GraphicSVG.App exposing (appWithTick, AppWithTick, GetKeyState)
import Url exposing (Url)
import GraphicSVG.EllieApp exposing (..)
import Browser exposing (UrlRequest)
import Browser.Events
import Browser.Dom as Dom
import Char exposing (fromCode)
import Random exposing (Generator, int)
import Random.Extra exposing (..)
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
wordArray1 = Array.fromList WrdFromElmJr2019May15.words
arrayLength1 = List.length WrdFromElmJr2019May15.words

type alias Model =
    { letters : List Char
    , pic : { time: Float } -> List (Shape Msg)
    , word : String
    , time : Float

    }

init : Model
init = { letters = [] , pic = \_ -> [], word = "", time = 0
       }

{-char : Int -> Int -> Generator Char
char start end =  Random.map fromCode (int start end)

--lowerCaseLetter = char 65 90
-- letter111 = char(65)

lowercaseLetter : Random.Generator Char
lowercaseLetter =
    String.fromList (Random.map (\n -> Char.fromCode (n + 97)) (Random.int 0 25))

--toWord l = String.fromList (l)-}

-- this draws whatever you want on the screen, based on the current state of the model
view : Model -> { title : String, body : Collage Msg }
view model = let
                title = "Crossword"
                arrayOfWord = Array.fromList <| String.toList model.word -- ["w","o","r","d",]
                getLetters n =  case (Array.get n arrayOfWord) of
                      Just x -> String.fromChar x
                      Nothing -> "fail"
                body = collage 500 500 [
                                        text (" word: " ++ model.word)
                                        |> filled black
                                        |> move (-150,180)
                                        ,
                                        group [ rect 60 30
                                        |> filled blue
                                        , text "Next" |> filled black
                                        ] |> move (200, 0) |> notifyTap Start
                                        , text (Debug.toString(allLetters)) |> filled black |> move (-230,-200)

                                        , drawPic model.time model.pic ((), (150,180) )
                                        , crossword
                                        |> move (0,0)
                                        --, notifyTap (ClickedLetter ch)

                                        ]
  in { title = title , body = body }

allLetters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

-- this function draws one letter, shifted over by the idx number of letters
-- use it with List.indexedMap to display a list of letters


type Msg = Tick Float GetKeyState
         | Start
         | AddLetter Char
         | GotNewIdx Int

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model = case msg of
                     Tick time keystate -> ( { model | time = time } , Cmd.none)
                     AddLetter letter   -> ({model | letters = letter :: model.letters} , Cmd.none)
                     Start              -> (model, Random.generate GotNewIdx oneRandIdx)
                     GotNewIdx idx      ->
                        let
                            (newPic,newWord) = getWord idx
                        in
                        ( { model | pic = newPic, word = newWord }, Cmd.none)





oneRandIdx = Random.int 0 (arrayLength - 1)

dScale = 0.4375
drawPic t pic (msg, pos) = (group <| pic { time = t }) |> clip (rect 192 128 |> ghost) |> scale dScale |> move pos


wordArray = Array.fromList words
arrayLength = List.length words
getWord idx = case Array.get idx wordArray of
                Just ((_,word,_),(_,_,pic)) -> (pic,word)
               -- Just ((username,word,_),(_,school,pic)) -> (pic,(username,word,school))
                Nothing                             -> (\ _ -> [],"")



main : EllieAppWithTick () Model Msg
main =
    ellieAppWithTick Tick
        { init = \_ -> (init, Cmd.none)
        , update = update
        , view = view
        , subscriptions = \_ -> Sub.none
        }

crossword = group [
    square 310 |> outlined (solid 1) black
    , group ( List.map (\(x,y) -> group [square 25 |> outlined (solid 1) black
                                        , text "a" |> filled black ]|> move (x,y) ) box )

    ]
box = [(135,135),(105,135),(75,135),(45,135),(15,135),(-15,135),(-45,135),(-75,135),(-105,135),(-135,135)]
