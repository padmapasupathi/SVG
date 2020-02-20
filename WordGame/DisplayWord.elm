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
    = Tick Float GetKeyState| GetNewPicture  | NewImage Int

generateRandom =
    Random.generate NewImage (Random.int 0 (List.length words))

main : EllieAppWithTick () Model Msg
main =
    ellieAppWithTick Tick
        { init = \ _ -> (init   , generateRandom)
        , update = update
        , view = \ model -> { title = "Displayword", body = view model }
        , subscriptions = \_ -> Sub.none
        }

type alias Model =
  { time : Float
  , shape : { time : Float } -> List (Shape Msg)
  , word : String }

model0 : Model
model0 =
    { time = 0, shape = \t -> [], word = "" }

init : Model
init =  model0

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        Tick t _ ->
            --update the time in our model
            ( { model | time = t }, Cmd.none )

        NewImage n ->
            let
                wordArray =
                    Array.fromList words

                ( word, shape ) =
                    case
                        (Array.get n wordArray)
                    of
                        Just ( (user, word0, grade), (name, school, shape0) ) ->
                            ( word0, shape0 )

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

        ]


button =
    group
        [ roundedRect 50 25 1 |> filled green
        , text "New" |> centered |> filled white |> move ( 0, -3 )
        ]
