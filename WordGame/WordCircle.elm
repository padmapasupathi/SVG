import GraphicSVG exposing (..)
import GraphicSVG.App exposing (appWithTick, AppWithTick, GetKeyState)
import Url exposing (Url)
import Browser exposing (UrlRequest)
import Browser.Events
import Browser.Dom as Dom
import Random.List exposing(shuffle)
import Task
import Dict
import Random
import Set exposing(Set)
import WrdFromElmJr2019May15
--import WrdFromElmJr2019May16
import Wrd1558528511662312

words = WrdFromElmJr2019May15.words  ++ Wrd1558528511662312.words -- ++ WrdFromElmJr2019May16.words ++ Wrd1526388449251721.words ++ Wrd1526642931059256.words ++ Wrd1526743215065487.words

getInitViewport =
    Task.perform (\vp -> OnResize (round vp.scene.width) (round vp.viewport.height)) Dom.getViewport

main : AppWithTick () Model Msg
main = appWithTick Tick
    { init = \_ url key -> init
    , update = update
    , view = \model -> { body = view model, title = title model }
    , subscriptions = \_ -> Browser.Events.onResize OnResize
    , onUrlRequest = OnUrlRequest
    , onUrlChange = OnUrlChange
    }

type alias Model =
    { time : Float
    , w : Int
    , h : Int
    , randWord : List Char
    , score : Int
    , shapes : { time : Float } -> List (Shape Msg)
    , wordStr : String
    , selected : List (Float,Float,Char)
    , selectedSet : Set (Float,Float,Char)
    , dragging : Maybe (Float, Float)
    , winState : Maybe Bool
    }

type Msg =
      Tick Float GetKeyState
    | OnUrlRequest UrlRequest
    | OnUrlChange Url
    | OnResize Int Int
    | NewWord (String, List Char, { time : Float } -> List (Shape Msg))
    | StartDragging (Float,Float,Char)
    | StopDragging
    | MouseMove (Float, Float)
    | MouseEnter (Float, Float, Char)
    | ResetLevel
    | NextWord

init : (Model, Cmd Msg)
init =
        ({
            time = 0
        ,   w = 0
        ,   h = 0
        ,   randWord = []
        ,   score = 0
        ,   shapes = \_ -> []
        ,   wordStr = ""
        ,   selected = []
        ,   selectedSet = Set.empty
        ,   dragging = Nothing
        ,   winState = Nothing
        }
        ,Cmd.batch
            [getInitViewport
            ,getRandomWord
            ]
        )

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        Tick t (_,(_,y),_) ->
            ( { model | time = t }
            , Cmd.none
            )
        OnUrlRequest _ -> (model, Cmd.none)
        OnUrlChange url -> (model, Cmd.none)
        OnResize x y ->
            ( { model | w = x, h = y }
            , if x == 0 && y == 0 then
                getInitViewport
              else Cmd.none
            )
        NewWord (word, newList, shapes) ->
            (
                { model | wordStr = word, randWord = newList, shapes = shapes }
            ,   Cmd.none
            )
        StartDragging (x,y,char) ->
            case model.winState of --no dragging when the level is over
                Nothing ->
                    (
                        { model | dragging = Just (x,y)
                                , selected = [(x,y,char)]
                                , selectedSet = Set.insert (x,y,char) Set.empty
                                , score =
                                    case model.dragging of
                                        Just _ -> model.score - 5
                                        Nothing -> model.score
                        }
                    ,   Cmd.none
                    )
                _ -> (model, Cmd.none)
        StopDragging ->
            (
                { model | dragging = Nothing }
            ,   Cmd.none
            )
        MouseMove (x,y) ->
            (
                { model | dragging = Just (x,y) }
            ,   Cmd.none
            )
        MouseEnter (x,y,char) ->
            case model.dragging of
                Just _ ->
                    (
                        { model | dragging = Just (x,y)
                                , selected = model.selected ++ if not <| Set.member (x,y,char) model.selectedSet then [(x,y,char)] else []
                                , selectedSet = Set.insert (x,y,char) model.selectedSet
                        } |> checkWin
                    ,   Cmd.none
                    )
                Nothing ->
                    (model, Cmd.none)
        ResetLevel ->
            ( { model | dragging = Nothing
                      , selected = []
                      , selectedSet = Set.empty
                      , winState = Nothing
                      }
            ,Cmd.none
            )
        NextWord ->
            ( { model | dragging = Nothing
                      , selected = []
                      , selectedSet = Set.empty
                      , winState = Nothing
                      }
            ,getRandomWord
            )


checkWin : Model -> Model
checkWin model =
    let
        isWin = List.map (\(_,_,c) -> c) model.selected == String.toList model.wordStr
    in
        case (isWin, String.length model.wordStr == List.length model.selected) of
            (True, _) ->
                { model |
                    dragging = Nothing
                ,   score = model.score + 10
                ,   winState = Just True
                }
            (False, True) ->
                { model |
                    dragging = Nothing
                ,   score = model.score - 10
                ,   winState = Just False
                }
            (False, False) ->
                model



title : Model -> String
title model =
    "Word Circle | McMaster Start Coding"

view : Model -> Collage Msg
view model =
    let
        radius = toFloat (min model.w model.h) * 0.3
        scaleFactor = radius / 64
    in
    collage (toFloat model.w) (toFloat model.h)
        [
            group (model.shapes { time = model.time })
                |> scale scaleFactor
                |> clip (circle radius |> ghost)
        {-},   circle radius
                |> outlined (solid 22) gray-}
        ,   selectedLines <| (List.map (\(a,b,_) -> (a,b)) model.selected) ++ maybeToList model.dragging
        ,   case model.dragging of
                Just _ ->
                    rect (toFloat model.w) (toFloat model.h)
                        |> filled blank
                        |> notifyMouseUp StopDragging
                        |> notifyMouseMoveAt MouseMove
                        |> notifyTouchEnd StopDragging
                        |> notifyTouchMoveAt MouseMove
                Nothing -> group []
        ,   wordCircle radius model.randWord
        ,   text ("Score: " ++ String.fromInt model.score)
                |> size 30
                |> filled black
                |> move (-(toFloat model.w/2),toFloat model.h/2 - 30)
        ,   wordLine (List.length model.randWord) (List.map (\(_,_,c) -> c) model.selected)
                |> move (0, -(toFloat model.h)/2 + 50)
        ,   case model.winState of
                Just True ->
                    group
                        [roundedRect 100 30 10
                            |> filled lightGreen
                        ,text "Next Word"
                            |> centered
                            |> filled darkGreen
                            |> move(0,-3)
                        ] |> move (0, -(toFloat model.h)/2 + 20)
                            |> notifyTap NextWord
                Just False ->
                    group
                        [roundedRect 100 30 10
                            |> filled lightRed
                        ,text "Try Again"
                            |> centered
                            |> filled darkRed
                            |> move(0,-3)
                        ] |> move (0, -(toFloat model.h)/2 + 20)
                            |> notifyTap ResetLevel
                Nothing ->
                    group []
        ,   text "Connect the dots in the correct order to spell the word."
                |> centered
                |> size 18
                |> filled black
                |> move (0, (toFloat model.h)/2 - 50)
        --,   text model.wordStr |> filled blue
        ]

maybeToList : Maybe a -> List a
maybeToList ma =
    case ma of
        Just a -> [a]
        Nothing -> []

selectedLines : List (Float,Float) -> Shape Msg
selectedLines pts =
    openPolygon pts
        |> outlined (solid 5) red

wordDict =
    Dict.fromList <| List.indexedMap (\n w -> ( n, w )) words

getRandomWord : Cmd Msg
getRandomWord =
    Random.generate
        NewWord
            <| (Random.int 0 (Dict.size wordDict - 1) |> Random.map
               getWord |> Random.andThen
                    (\(word,shapes) ->
                        let
                            wordChars = String.toList word
                        in
                            shuffle wordChars |> Random.map (\shuffled -> (word, shuffled, shapes))
                        ))

getWord i =
    case (Dict.get i wordDict) of
        Just ( (user, theirWord, grade), (word, school, shapes) ) ->
            (theirWord, shapes)

        Nothing ->
            ("", \_ -> [])

wordCircle : Float -> List Char -> Shape Msg
wordCircle r chars =
    let
        len = toFloat <| List.length chars
    in
        group <|
            List.indexedMap
                (\n char ->
                    let
                        (x,y) = (r * cos (2 * pi * toFloat n / len), r * sin (2 * pi * toFloat n / len))
                    in group
                        [
                           circle 12
                                |> filled white
                                |> addOutline (solid 1) black
                        ,   text (String.fromChar char)
                                |> size 24
                                |> centered
                                |> filled black
                                |> move (0, -7)
                        ] |> move (x,y)
                            |> notifyMouseDown (StartDragging (x,y,char))
                            |> notifyEnter (MouseEnter (x,y,char))
                            |> notifyTouchStart (StartDragging (x,y,char))
                         --   |> notifyTouchEnter (MouseEnter (x,y,char))

                ) chars

wordLine : Int -> List Char -> Shape Msg
wordLine n chars =
    let
        spacing = 20
        charList = chars ++ List.repeat (n - List.length chars) '_'
    in
    group <|
    List.indexedMap
        (\nn char ->
            text (String.fromChar char)
                |> size 30
                |> centered
                |> filled black
                |> move (toFloat nn * spacing - toFloat (n-1) * (spacing/2), 0)
        )
        charList
