module JumbledWordGames exposing (main)

----import Url exposing (Url)
--import Browser.Events
--import Browser.Dom as Dom
--import Task

import Array
import Browser exposing (UrlRequest)
import Dict
import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)
import Random
import Random.List exposing (shuffle)
import Set exposing (Set)
import String
import Wrd1558528511662312
import WrdFromElmJr2019May15


words =
    WrdFromElmJr2019May15.words ++ Wrd1558528511662312.words



-- ++ WrdFromElmJr2019May16.words ++ Wrd1526388449251721.words ++ Wrd1526642931059256.words ++ Wrd1526743215065487.words


wordArray1 =
    Array.fromList WrdFromElmJr2019May15.words


arrayLength =
    List.length WrdFromElmJr2019May15.words


type Msg
    = Tick Float GetKeyState
    | GetNewPicture
    | NewImage ( ( Int, Int ), ( Int, Int ) )


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
    , shape : { time : Float } -> List (Shape Msg)
    , shape2 : { time : Float } -> List (Shape Msg)
    , shape3 : { time : Float } -> List (Shape Msg)
    , shape4 : { time : Float } -> List (Shape Msg)
    , word : String
    , word2 : String
    , word3 : String
    , word4 : String
    , shuffledList : List ((Int,Int),String) -- store position in grid and letter(s)
    }


model0 : Model
model0 =
    { time = 0
    , shape = \t -> []
    , shape2 = \t -> []
    , shape3 = \t -> []
    , shape4 = \t -> []
    , word = ""
    , word2 = ""
    , word3 = ""
    , word4 = ""
    , shuffledList = []
    }


init : Model
init =
    model0


view : Model -> Collage Msg
view model =
    let
        shapeViewer : ({ time : Float } -> List (Shape Msg)) -> String -> Float -> Shape Msg
        shapeViewer shape word xCoord =
            group
                [ group (shape { time = model.time })
                    |> clip (rect 100 100 |> ghost)
                , text word
                    |> centered
                    |> size 14
                    |> filled black
                    |> move ( 0, 40 )
                ]
                |> move ( -150, xCoord )
    in
    collage 600
        600
        [ shapeViewer model.shape model.word -200
        , shapeViewer model.shape2 model.word2 200
        , shapeViewer model.shape3 model.word3 -100
        , shapeViewer model.shape4 model.word4 100

        --     group <| model.shape { time = model.time } --display shape
        -- , text model.word
        --     |> centered
        --     |> filled black
        --     |> move ( 0, -150 )
        --, text (Debug.toString(model.shuffledList)) |> centered |> filled black
        , button
            |> move ( 0, -200 )
            |> notifyTap GetNewPicture
        , crossword model.shuffledList
            |> move ( 0, -135 )
        , square 310 |> outlined (solid 3) red
            |> move ( 135, 0 )
        ]


drawBox word =
                group
                    [ square 25 |> outlined (solid 1) brown
                    , text word |> centered |> filled black |> move (0,-4)
                    ]


crossword phonemes =
    group <|
        List.map
            (\ ((xIdx,yIdx),phoneme) ->
                drawBox phoneme |> move ( 30 * toFloat xIdx, 30 * toFloat yIdx)
            )
            phonemes


button =
    group
        [ roundedRect 50 25 1 |> filled green
        , text "Next" |> centered |> filled white |> move ( 0, -3 )
        ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Tick t _ ->
            --update the time in our model
            ( { model | time = t }, Cmd.none )

        NewImage ( ( a, b ), ( c, d ) ) ->
            let
                wordArray =
                    Array.fromList words

                ( word, shape ) =
                    case
                        Array.get a wordArray
                    of
                        Just ( ( user, word01, grade ), ( name, school, shape01 ) ) ->
                            ( word01, shape01 )

                        Nothing ->
                            ( "", \t -> [] )

                ( word2, shape2 ) =
                    case
                        Array.get b wordArray
                    of
                        Just ( ( user, word02, grade ), ( name, school, shape02 ) ) ->
                            ( word02, shape02 )

                        Nothing ->
                            ( "", \t -> [] )

                ( word3, shape3 ) =
                    case
                        Array.get c wordArray
                    of
                        Just ( ( user, word03, grade ), ( name, _, shape03 ) ) ->
                            ( word03, shape03 )

                        Nothing ->
                            ( "", \t -> [] )

                ( word4, shape4 ) =
                    case
                        Array.get d wordArray
                    of
                        Just ( ( user, word04, grade ), ( name, school, shape04 ) ) ->
                            ( word04, shape04 )

                        Nothing ->
                            ( "", \t -> [] )

                -- wordChars = String.toList word
                -- shuffledLst = shuffle wordChars |> Random.map (\shuffled -> (shuffled))
                shuffledLst =
                    groupPhonemes 10 10 (0,0)
                       <| List.map (String.fromChar)
                       <| String.toList word ++ String.toList word2 ++ String.toList word3 ++ String.toList word4
            in
            ( { model
                | word = word
                , shape = shape
                , word2 = word2
                , shape2 = shape2
                , word3 = word3
                , shape3 = shape3
                , word4 = word4
                , shape4 = shape4
                , shuffledList = shuffledLst
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
