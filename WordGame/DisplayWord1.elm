module DisplayWord exposing (..)

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
--    | NewImage (Int, Int)
    | NewImage ((Int, Int),(Int,Int))

--generateRandom = Random.generate NewImage (Random.pair (Random.int 0 (List.length words)) (Random.int 0 (List.length words)))

generateRandom = Random.generate NewImage
                      (Random.pair (Random.pair (Random.int 0 (List.length words))
                      (Random.int 0 (List.length words)))
                      (Random.pair (Random.int 0 (List.length words))
                      (Random.int 0 (List.length words))))


main : EllieAppWithTick () Model Msg
main =
    ellieAppWithTick Tick
        { init = \ _ -> (init   , generateRandom)
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
    , shuffledList = []
    }

init : Model
init =  model0

view : Model -> Collage Msg
view model =
    let
        shapeViewer : ( {time : Float} -> List (Shape Msg)) -> String -> Float -> Shape Msg
        shapeViewer shape word xCoord =
            group [
                group <| shape { time = model.time }
                , text word
                    |> centered
                    |> filled black
                    |> move ( 0, -125 )
            ] |> move (xCoord, 0)
    in
        collage 500
            500
            [ shapeViewer model.shape model.word -200
            , shapeViewer model.shape2 model.word2 200
            , shapeViewer model.shape3 model.word3 -100
            , shapeViewer model.shape4 model.word4 100
            --     group <| model.shape { time = model.time } --display shape
            -- , text model.word
            --     |> centered
            --     |> filled black
            --     |> move ( 0, -150 )
            , text (Debug.toString(model.shuffledList)) |> centered |> filled black
            , button
                |> move ( 0, -200 )
                |> notifyTap GetNewPicture
            ]

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
      -- NewImage (word1, word2, shape1, shape2, shuffledLst) ->   ({model | }) -}

        NewImage ((a, b),(c,d)) ->
            let
                wordArray = Array.fromList words
                ( word, shuf1, shape ) =  case (Array.get a wordArray) of
                                        Just ( (user, word01, grade), (name, school, shape01) ) -> ( word01, shape01 ) |> Random.andThen (\(word001,shapes001) ->
                                            let
                                                wordChars = String.toList word01
                                            in
                                                shuffle wordChars |> Random.map (\shuffled01 -> (word01, shuffled01, shapes01))
                                            )
                                        Nothing -> ( "", \t -> [] )

                ( word2, shuf2, shape2 ) = case (Array.get b wordArray) of
                                        Just ( (user, word02, grade), (name, school, shape02) ) -> ( word02, shape02 ) |> Random.andThen (\(word002,shapes002) ->
                                            let
                                                wordChars = String.toList word02
                                            in
                                                shuffle wordChars |> Random.map (\shuffled02 -> (word02, shuffled02, shapes02))
                                            )
                                        Nothing -> ( "", \t -> [] )
                ( word3, shuf3, shape3 ) = case (Array.get c wordArray) of
                                          Just ( (user, word03, grade), (name, school, shape03) ) -> ( word03, shape03 ) |> Random.andThen (\(word003,shapes003) ->
                                              let
                                                  wordChars = String.toList word03
                                              in
                                                  shuffle wordChars |> Random.map (\shuffled03 -> (word03, shuffled03, shapes03))
                                              )
                                          Nothing -> ( "", \t -> [] )
                ( word4, shuf4, shape4 ) = case (Array.get d wordArray) of
                                         Just ( (user, word04, grade), (name, school, shape04) ) -> ( word04, shape04 ) |> Random.andThen (\(word004,shapes004) ->
                                             let
                                                 wordChars = String.toList word04
                                             in
                                                 shuffle wordChars |> Random.map (\shuffled04 -> (word04, shuffled04, shapes04))
                                             )
                                         Nothing ->( "", \t -> [] )
                --shuffledLst =  String.toList word ++ String.toList word2 ++ String.toList word3 ++ String.toList word4
                --shuf = shuffle shuffledLst
                --shuffledLst = shuffle String.toList word ++ String.toList word2 ++ String.toList word3 ++ String.toList word4 |> Random.map (\shuf -> shuf)
                shuffledLst =  String.toList shuf1 ++ String.toList shuf2 ++ String.toList shuf3 ++ String.toList shuf4
            in
                ( { model | word = word, shape = shape, word2 = word2, shape2 = shape2, word3 = word3, shape3 = shape3, word4 = word4, shape4 = shape4,  shuffledList= shuffledLst}, Cmd.none )

        GetNewPicture ->
            ( model, generateRandom )
