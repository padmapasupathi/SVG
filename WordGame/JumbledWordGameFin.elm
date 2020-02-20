module JumbledWordGameFin exposing (main)

import Array
import Browser exposing (UrlRequest)
import Dict
import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)
import Random
import String
import Random.List exposing (shuffle)
import Set exposing (Set)
import String
import List.Extra
import Wrd1558528511662312
import WrdFromElmJr2019May15


words = WrdFromElmJr2019May15.words ++ Wrd1558528511662312.words

wordsAlpha = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"

type Msg
    = Tick Float GetKeyState
    | GetNewPicture
    | NewImage ( ( Int, Int ), ( Int, Int ) )
    | ClickBox String --BOX
    | ClickNone
    | Verify

type SelectedBox = BoxYes | BoxNo

generateRandom =
    Random.generate NewImage
        (Random.pair
            (Random.pair (Random.int 0 (List.length words))
                (Random.int 0 (List.length words))
            )
            (Random.pair (Random.int 0 (List.length words))
                (Random.int 0 (List.length words))
            )
        )


main : EllieAppWithTick () Model Msg
main =
    ellieAppWithTick Tick
        { init = \_ -> ( init, generateRandom )
        , update = update
        , view = \model -> { title = "JumbledWordGame", body = view model }
        , subscriptions = \_ -> Sub.none
        }


type alias Model =
    { time : Float
    , score : Int
    , shape : { time : Float } -> List (Shape Msg)
    , shapeTwo : { time : Float } -> List (Shape Msg)
    , shapeThree : { time : Float } -> List (Shape Msg)
    , shapeFour : { time : Float } -> List (Shape Msg)
    , word : String
    , wordTwo : String
    , wordThree : String
    , wordFour : String
    , wordList : List String
    , shuffledList : List ((Int,Int),String) -- store position in grid and letter(s)
    , selectedBox : SelectedBox
    , dispWord : String
    }


model0 : Model
model0 =
    { time = 0
    , score = 0
    , shape = \t -> []
    , shapeTwo = \t -> []
    , shapeThree = \t -> []
    , shapeFour = \t -> []
    , word = ""
    , wordTwo = ""
    , wordThree = ""
    , wordFour = ""
    , wordList = []
    , shuffledList = []
    , selectedBox = BoxNo
    , dispWord = ""
    }

init : Model
init = model0

view : Model -> Collage Msg
view model =
    let
        shapeViewer : ({ time : Float } -> List (Shape Msg)) -> String -> Float -> Shape Msg
        shapeViewer shape word xCoord =
            group
                [ group (shape { time = model.time })
                    |> clip (rect 75 75 |> ghost)
                , text (String.toUpper word)
                    |> centered
                    |> size 14
                    |> filled red
                    |> move ( 0, 45 )
                ] |> move ( -150, xCoord )

    in
    collage 600
        600
        [ if (model.dispWord == model.word) then
            text "Word matched" |> filled black |> move (-150,-150)
          else shapeViewer model.shape model.word -150
        , if (model.dispWord == model.wordTwo) then
            text "Word matched" |> filled black |> move (-150,150)
          else shapeViewer model.shapeTwo model.wordTwo 150
        , if (model.dispWord == model.wordThree) then
            text "Word matched" |> filled black |> move (-150,-50)
          else shapeViewer model.shapeThree model.wordThree -50
        , if (model.dispWord == model.wordFour) then
            text "Word matched" |> filled black |> move (-150,50)
          else shapeViewer model.shapeFour model.wordFour 50
        , text (Debug.toString(model.dispWord)) |> centered |> filled red |> scale 2 |> move (150,200)
        , if (model.wordList /= [] && (List.member model.dispWord model.wordList)) then
            group [ checkButton |> move (250,200) |> notifyTap Verify
            , text "Click submit to find next word" |> filled green |> scale 2 |> move (-10,50) ]
          else  crossword model model.shuffledList |> move ( 0, -135 )
        , square 310 |> outlined (solid 3) red |> move ( 135, 0 ) |> notifyTap ClickNone
        , text ("Score: " ++ String.fromInt model.score) |> size 24 |> filled black |> scale 2|> move (-250, 250)
        , if (model.wordList == [] ) then
            group [ button |> move ( 0, -200 ) |> notifyTap GetNewPicture
            , text "Hooray! Click next for new words" |> filled green |> scale 2 |> move (-30,250)]
          else text "Find all words" |> filled red |> scale 2 |> move (0,250)
          ]

drawBox model word =
                group
                    [ square 25 |> outlined (solid (if model.selectedBox == BoxYes then 2 else 1)) brown
                    , text word |> centered |> filled black |> move (0,-4)
                    ] |> notifyTap (ClickBox word)

crossword model phonemes =
    group <|
        List.map
            (\ ((xIdx,yIdx),phoneme) ->
                drawBox model phoneme  |> move ( 30 * toFloat xIdx, 30 * toFloat yIdx) --|> notifyTap (ClickBox phoneme)
            )
            phonemes

button =
    group
        [ roundedRect 50 25 1 |> filled green
        , text "Next" |> centered |> filled white |> move ( 0, -3 )
        ]

checkButton =
    group
        [ roundedRect 65 25 3 |> filled green
        ,  text "Submit Word" |> centered |> filled white |> move ( 0, -6 )
        ]

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Tick t _ -> ( { model | time = t }, Cmd.none )
        ClickBox a -> ({model | selectedBox = BoxYes
                        , dispWord = model.dispWord ++ a}
                        , Cmd.none )
        Verify -> ( let
                        rAns = List.member model.dispWord model.wordList
                        newList = if rAns == True then (List.Extra.remove model.dispWord model.wordList) else model.wordList
                    in
                      { model | selectedBox = BoxNo
                              , dispWord = (if (rAns == True) then "" else "")
                              , wordList = newList
                              , word = if (model.dispWord == model.word) then "" else model.word
                              , wordTwo = if (model.dispWord == model.wordTwo) then "" else model.wordTwo
                              , wordThree = if (model.dispWord == model.wordThree) then "" else model.wordThree
                              , wordFour = if (model.dispWord == model.wordFour) then "" else model.wordFour
                              , shape = if (model.dispWord == model.word) then \t -> [] else model.shape
                              , shapeTwo = if (model.dispWord == model.wordTwo) then \t -> [] else model.shapeTwo
                              , shapeThree = if (model.dispWord == model.wordThree) then \t -> [] else model.shapeThree
                              , shapeFour = if (model.dispWord == model.wordFour) then \t -> [] else model.shapeFour
                              , score = (if rAns == True then model.score+20 else model.score-1)
                           }
                           , Cmd.none)
        ClickNone -> ({model | selectedBox = BoxNo }, Cmd.none )

        NewImage ( ( a, b ), ( c, d ) ) ->
            let
                wordArray = Array.fromList words
                ( word, shape ) = case Array.get a wordArray of
                        Just ( ( user, word01, grade ), ( name, school, shape01 ) ) -> ( word01, shape01 )
                        Nothing -> ( "", \t -> [] )
                ( wordTwo, shapeTwo ) = case Array.get b wordArray of
                        Just ( ( user, word02, grade ), ( name, school, shape02 ) ) -> ( word02, shape02 )
                        Nothing -> ( "", \t -> [] )
                ( wordThree, shapeThree ) = case Array.get c wordArray of
                        Just ( ( user, word03, grade ), ( name, _, shape03 ) ) -> ( word03, shape03 )
                        Nothing -> ( "", \t -> [] )
                ( wordFour, shapeFour ) = case Array.get d wordArray of
                        Just ( ( user, word04, grade ), ( name, school, shape04 ) ) -> ( word04, shape04 )
                        Nothing -> ( "", \t -> [] )
                wordLst =  [String.replace " " "" word] ++  [String.replace " " "" wordTwo] ++  [String.replace " " "" wordThree] ++  [String.replace " " "" wordFour]
                shuffledLst = groupPhonemes 10 10 (0,0) <| List.map (String.fromChar) <|  String.toList wordsAlpha --++ String.toList (String.concat wordLst)
            in
            ( { model
                | word = word
                , shape = shape
                , wordTwo = wordTwo
                , shapeTwo = shapeTwo
                , wordThree = wordThree
                , shapeThree = shapeThree
                , wordFour = wordFour
                , shapeFour = shapeFour
                , shuffledList = shuffledLst
                , dispWord = ""
                , wordList = wordLst
              }
            , Cmd.none
            )

        GetNewPicture ->
            ( model, generateRandom )

groupPhonemes width height (xIdx,yIdx) phonemes =
    case phonemes of
        ph0 :: rest -> ((xIdx,yIdx),ph0) ::
            (   if xIdx < width-1 then
                    groupPhonemes width height (xIdx + 1, yIdx) rest
                else if yIdx < height - 1 then
                    groupPhonemes width height (0, yIdx + 1) rest
                else
                    []
            )
        [] -> []
