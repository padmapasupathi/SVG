module WordCircleTwoWords exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.App exposing (appWithTick, AppWithTick, GetKeyState)
import Url exposing (Url)
import Browser exposing (UrlRequest)
import Browser.Events
import Browser.Dom as Dom
import Random.List exposing(shuffle)
import Task
import Array
import WrdFromLouisbourg2019Aug14
import Wrd1558528511662312
import WrdFromElmJr2019May15
import Dict
import Random
import Set exposing(Set)

words = WrdFromElmJr2019May15.words ++ Wrd1558528511662312.words ++ WrdFromLouisbourg2019Aug14.words

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
    , randWordTwo : List Char
    , finalRandWord : List Char
    , score : Int
    , shapes : { time : Float } -> List (Shape Msg)
    , shapesTwo : { time : Float } -> List (Shape Msg)
    , wordStr : String
    , wordStrTwo : String
    , selected : List (Float,Float,Char)
    , selectedSet : Set (Float,Float,Char)
    , dragging : Maybe (Float, Float)
    , winState : Maybe Bool
    }

type Msg =
      Tick Float GetKeyState
    | OnUrlRequest UrlRequest --on refresh the url
    | OnUrlChange Url
    | OnResize Int Int --words based circle drawing
    --| NewWord (String, List Char, { time : Float } -> List (Shape Msg))
    | NewWord(Int,Int)
    | NewWordTwo (String, List Char, { time : Float } -> List (Shape Msg))
    | StartDragging (Float,Float,Char)
    | StopDragging
    | MouseMove (Float, Float)
    | MouseEnter (Float, Float, Char) --word selected after draw
    | ResetLevel
    | NextWord

init : (Model, Cmd Msg)
init =
        ({
            time = 0
        ,   w = 0
        ,   h = 0
        ,   randWord = []
        ,   randWordTwo = []
        ,   finalRandWord = []
        ,   score = 0
        ,   shapes = \_ -> []  --from file
        ,   shapesTwo = \_ -> []  --from file
        ,   wordStr = ""
        ,   wordStrTwo = ""
        ,   selected = []
        ,   selectedSet = Set.empty
        ,   dragging = Nothing
        ,   winState = Nothing
        }
        ,Cmd.batch
            [getInitViewport
            ,getRandomWord
            --,getRandomWordTwo
            ]
        )

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        Tick t (_,(_,y),_) ->
            ( { model | time = t }
            , Cmd.none
            )
        OnUrlRequest _ -> (model, Cmd.none)  -- _ for parameter any param can apply
        OnUrlChange url -> (model, Cmd.none)
        OnResize x y ->
            ( { model | w = x, h = y }
            , if x == 0 && y == 0 then
                getInitViewport
              else Cmd.none
            )
      {-  NewWord ->
            (
            let
                  (word1,newList1,shapes1) = getRandomWordTwoFunc
              in {
                      model | wordStr = word, randWord = newList, shapes = shapes --, finalRandWord = model.finalRandWord ++ model.randWord ++ model.randWordTwo
                , wordStrTwo = word1, randWordTwo = newList1, shapesTwo = shapes1
                , finalRandWord = List.append model.randWord model.randWordTwo
                }
            ,  Cmd.none  --getRandomWordTwo
            )
        NewWordTwo(word1, newList1, shapes1) ->
          (
                { model | wordStrTwo = word1, randWordTwo = newList1, shapesTwo = shapes1 --, finalRandWord = model.finalRandWord ++ model.randWord ++ model.randWordTwo
                --, finalRandWord = List.append model.randWord model.randWordTwo
                }
            ,   Cmd.none
            )-}
        NewWord (a,b) ->
          let
            wordArray = Array.fromList words
            (word,shuf1,shape) = case (Array.get a wordArray) of
                                  Just ( (user, word01, grade), (name, school, shape01) ) -> ( word01, shape01 ) |> Random.andThen (\(word001,shapes001) ->
                                      let
                                          wordChars = String.toList word01
                                      in
                                          shuffle wordChars |> Random.map (\shuffled01 -> (word001, shuffled01, shapes001))
                                      )
                                  Nothing -> ( "", \t -> [] )

            ( word2, shuf2, shape2 ) = case (Array.get b wordArray) of
                                  Just ( (user, word02, grade), (name, school, shape02) ) -> ( word02, shape02 ) |> Random.andThen (\(word002,shapes002) ->
                                      let
                                          wordChars = String.toList word02
                                      in
                                          shuffle wordChars |> Random.map (\shuffled02 -> (word002, shuffled02, shapes002))
                                      )
                                  Nothing -> ( "", \t -> [] )
          in ({model| wordStr=word01, shapes=shape01, randWord=shuf1, wordStrTwo=word02, shapesTwo=shape02, randWordTwo =shuf2, finalRandWord= shuf1 ++ shuf2}
          ,Cmd.none
          )
        StartDragging (x,y,char) ->
            case model.winState of --no dragging when the level is over
                Nothing ->
                    (
                        { model | dragging = Just (x,y)
                                , selected = [(x,y,char)] --dragged char on the circle
                                , selectedSet = Set.insert (x,y,char) Set.empty --add char and pos in the list continou
                                , score =
                                    case model.dragging of
                                        Just _ -> model.score - 5 -- on wrong selection
                                        Nothing -> model.score
                        }
                    ,   Cmd.none
                    )
                _ -> (model, Cmd.none) -- anyother state
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
                        { model | dragging = Just (x,y) --if not already in the list, appedn to the list.
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
                      --, finalRandWord = model.finalRandWord ++ model.randWord ++ model.randWordTwo
                      , finalRandWord = List.append model.randWord model.randWordTwo
                      }
            ,Cmd.none
            )
        NextWord ->
            ( { model | dragging = Nothing
                      , selected = []
                      , selectedSet = Set.empty
                      , winState = Nothing
                      --, finalRandWord = model.finalRandWord ++ model.randWord ++ model.randWordTwo
                      --, finalRandWord = List.append model.randWord model.randWordTwo
                      }
            ,getRandomWord

            )


checkWin : Model -> Model
checkWin model =
    let
        isWin = List.map (\(_,_,c) -> c) model.selected == String.toList model.wordStr  --from random func
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
    "Word Circle" -- on tab hover mouse

view : Model -> Collage Msg
view model =
    let
        radius = toFloat (min model.w model.h) * 0.3
        scaleFactor = radius / 64
      --  finalRandWord = randWord ++ randWordTwo
    in
    collage (toFloat model.w) (toFloat model.h) --predefined landscape and portaited
        [
            group (model.shapes { time = model.time })
                |> scale scaleFactor
                |> clip (circle radius |> ghost) --should not go out of view
        {-},   circle radius
                |> outlined (solid 22) gray-}
        ,   selectedLines <| (List.map (\(a,b,_) -> (a,b)) model.selected) ++ maybeToList model.dragging
        ,   case model.dragging of
                Just _ ->
                    rect (toFloat model.w) (toFloat model.h)
                        |> filled blank -- give color while drawing
                        |> notifyMouseUp StopDragging
                        |> notifyMouseMoveAt MouseMove
                        |> notifyTouchEnd StopDragging
                        |> notifyTouchMoveAt MouseMove
                Nothing -> group []
        , wordCircle radius model.finalRandWord --func call
        , text (Debug.toString(model.randWord)) |> centered |> filled black |> move(-150,100)
        , text (Debug.toString(model.randWordTwo)) |> size 20 |> centered |> filled black |> move(-200,50)
        , text (Debug.toString(model.finalRandWord)) |> size 40 |> centered |> filled black |> move(-200,-50)
        ,   text ("Score: " ++ String.fromInt model.score)
                |> size 30
                |> filled black
                |> move (-(toFloat model.w/2),toFloat model.h/2 - 30)
        ,   wordLine (List.length model.finalRandWord) (List.map (\(_,_,c) -> c) model.selected) -- from model.selected take the letter and put to c
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
        ,   text (Debug.toString(cList))
                        |> centered
                        |> size 18
                        |> filled black
                        |> move (0, -150)
        --,   text model.wordStr |> filled blue
        ]

aList = ['a','b']
bList = ['c','d']
cList = List.append aList bList

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
getRandomWord = Random.generate NewWord (Random.pair (Random.int 0 (List.length words)) (Random.int 0 (List.length words)))

{-            <| (Random.int 0 (Dict.size wordDict - 1) |> Random.map
               getWord |> Random.andThen --variable length word
                    (\(word,shapes) ->
                        let  --temp value is given let
                            wordChars = String.toList word
                        in
                            shuffle wordChars |> Random.map (\shuffled -> (word, shuffled, shapes)) --func call
                        ))

--getRandomWordTwo : Cmd Msg
getRandomWordTwoFunc =
    Random.generate --func call
        NewWordTwo
            <| (Random.int 0 (Dict.size wordDict - 1) |> Random.map
               getWord |> Random.andThen --variable length word
                    (\(word1,shapes1) ->
                        let  --temp value is given let
                            wordChars = String.toList word1
                        in
                            shuffle wordChars |> Random.map (\shuffled1 -> (word1, shuffled1, shapes1)) --func call
                        ))-}

getWord i =
    case (Dict.get i wordDict) of
        Just ( (user, theirWord, grade), (word, school, shapes) ) -> --format check wordfile
            (theirWord, shapes)

        Nothing ->
            ("", \_ -> [])


wordCircle : Float -> List Char -> Shape Msg
wordCircle r chars  =
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
                           roundedRect 30 35 5
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


-- the last line of the page where the answer appiles

wordLine : Int -> List Char -> Shape Msg
wordLine n chars =
    let
        spacing = 20
        charList = chars ++ List.repeat (n - List.length chars) '_' -- hifen to be displayed
    in
    group <|
    List.indexedMap
        (\nn char ->
            text (String.fromChar char)
                |> size 30
                |> centered
                |> filled red
                |> move (toFloat nn * spacing - toFloat (n-1) * (spacing/2), 0)
        )
        charList
