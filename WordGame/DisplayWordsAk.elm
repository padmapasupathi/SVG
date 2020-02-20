module DisplayWordsAk exposing (..)

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
wordArray1 = Array.fromList WrdFromElmJr2019May15.words
arrayLength = List.length WrdFromElmJr2019May15.words

type Msg
    = Tick Float GetKeyState
    | GetNewPicture
    | NewImage ((Int, Int),(Int,Int))

generateRandom = Random.generate NewImage
                      (Random.pair (Random.pair (Random.int 0 (List.length words))
                      (Random.int 0 (List.length words)))
                      (Random.pair (Random.int 0 (List.length words))
                      (Random.int 0 (List.length words))))

main : EllieAppWithTick () Model Msg
main =
    ellieAppWithTick Tick
        { init = \ _ -> (init , generateRandom )
        , update = update
        , view = \ model -> { title = "DisplayRandom", body = view model }
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
  , shuffledList : List Char
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
    , shuffledList = []}

init : Model
init =  model0

view : Model -> Collage Msg
view model =
    let
        shapeViewer : ( {time : Float} -> List (Shape Msg)) -> String -> Float -> Shape Msg
        shapeViewer shape word xCoord =
           group [
                group (shape { time = model.time })
                    |> clip (rect 70 50 |> ghost )
                , text word
                    |> centered
                    |> size 14
                    |> filled black
                    |> move ( 0, 40 )
            ] |> move (-150, xCoord)
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
            , text (Debug.toString(model.shuffledList)) |> centered |> filled black |> move (-200,0)
            , button
                |> move ( 0, -200 )
                |> notifyTap GetNewPicture
            , crossword model.shuffledList
                |> move (120,0)
            ]

drawBox word = group ( List.map (\(x,y) -> group [square 25 |> outlined (solid 1) brown
                                        , text word |> centered |> filled black ]|> move (x,y) ) box )

crossword fromList =
        group <|
            List.indexedMap
                (\n char ->
                    group
                        [
                           square 310 |> outlined (solid 3) red
                            , drawBox (String.fromChar char)
                            , drawBox (String.fromChar char) |> move (0,-30)
                            , drawBox (String.fromChar char) |> move (0,-60)
                            , drawBox (String.fromChar char) |> move (0,-90)
                            , drawBox (String.fromChar char) |> move (0,-120)
                            , drawBox (String.fromChar char) |> move (0,-150)
                            , drawBox (String.fromChar char) |> move (0,-180)
                            , drawBox (String.fromChar char) |> move (0,-210)
                            , drawBox (String.fromChar char) |> move (0,-240)
                            , drawBox (String.fromChar char) |> move (0,-270)
                        ]
                ) fromList

box = [(135,135),(105,135),(75,135),(45,135),(15,135),(-15,135),(-45,135),(-75,135),(-105,135),(-135,135)]

button =
    group
        [ roundedRect 50 25 1 |> filled green
        , text "New" |> centered |> filled white |> move ( 0, -3 )
        ]

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        Tick t _ ->
            --update the time in our model
            ( { model | time = t }, Cmd.none )

        NewImage ((a,b),(c,d)) ->

            let
                wordArray =
                    Array.fromList words

                ( word, shape ) =
                    case
                        (Array.get a wordArray)
                    of
                        Just ( (user, word01, grade), (name, school, shape01) ) ->
                            ( word01, shape01 )

                        Nothing ->
                            ( "", \t -> [] )

                ( word2, shape2 ) =
                    case
                        (Array.get b wordArray)
                    of
                        Just ( (user, word02, grade), (name, school, shape02) ) ->
                            ( word02, shape02 )

                        Nothing ->
                            ( "", \t -> [] )

                ( word3, shape3 ) =
                    case
                        (Array.get c wordArray)
                    of
                        Just ( (user, word03, grade), (name, school, shape03) ) ->
                            ( word03, shape03 )

                        Nothing ->
                            ( "", \t -> [] )

                ( word4, shape4 ) =
                    case
                        (Array.get d wordArray)
                    of
                        Just ( (user, word04, grade), (name, school, shape04) ) ->
                            ( word04, shape04)

                        Nothing ->
                            ( "", \t -> [] )

               -- wordChars = String.toList word
               -- shuffledLst = shuffle wordChars |> Random.map (\shuffled -> (shuffled))

                shuffledLst = String.toList word ++ String.toList word2 ++ String.toList word3 ++ String.toList word4

            in
                ( { model | word = word
                , shape = shape, word2 = word2
                , shape2 = shape2, word3 = word3
                , shape3 = shape3,word4 = word4
                , shape4 = shape4
                , shuffledList = shuffledLst }
                , Cmd.none )

        GetNewPicture ->
            ( model, generateRandom )
