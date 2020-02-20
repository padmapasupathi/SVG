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
import String
import Random.List exposing (shuffle)
import Set exposing (Set)
import String
import Wrd1558528511662312
import WrdFromElmJr2019May15


words =
    WrdFromElmJr2019May15.words ++ Wrd1558528511662312.words

wordsAlpha= "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghi"

-- ++ WrdFromElmJr2019May16.words ++ Wrd1526388449251721.words ++ Wrd1526642931059256.words ++ Wrd1526743215065487.words

type Msg
    = Tick Float GetKeyState
    | GetNewPicture
    | NewImage ( ( Int, Int ), ( Int, Int ) )
    --| StartDragging (Float,Float,Char)
    | StartDragging (Float,Float,String)
    | StopDragging
    | MouseMove (Float, Float)
    --| MouseEnter (Float, Float, Char) --word selected after draw
    | MouseEnter (Float, Float, String) --word selected after draw
    | ResetLevel
    | ClickBox String --BOX
    | ClickNone
    | Verify

type SelectedBox = BoxYes | BoxNo
--type BOX = String

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
    --, selected : List (Float,Float,Char)
    , selected : List (Float,Float,String)
    --, selectedSet : Set (Float,Float,Char)
    , selectedSet : Set (Float,Float,String)
    , dragging : Maybe (Float, Float)
    , winState : Maybe Bool
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
    , selected = []
    , selectedSet = Set.empty
    , dragging = Nothing
    , winState = Nothing
    , selectedBox = BoxNo
    , dispWord = ""
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
        , shapeViewer model.shapeTwo model.wordTwo 200
        , shapeViewer model.shapeThree model.wordThree -100
        , shapeViewer model.shapeFour model.wordFour 100
        --     group <| model.shape { time = model.time } --display shape
        -- , text model.word
        --     |> centered
        --     |> filled black
        --     |> move ( 0, -150 )
        , text (Debug.toString(model.shuffledList)) |> centered |> filled black
        , text (Debug.toString(model.dispWord)) |> centered |> filled red |> move (200,200)
        , text (Debug.toString(model.wordList)) |> centered |> filled red |> move (200,230)
        , checkButton |> move (250,200) |> notifyTap Verify
        , button
            |> move ( 0, -200 )
            |> notifyTap GetNewPicture
        , crossword model model.shuffledList
            |> move ( 0, -135 )
        , square 310 |> outlined (solid 3) red
            |> move ( 135, 0 ) |> notifyTap ClickNone

        ,   selectedLines <| (List.map (\(a,b,_) -> (a,b)) model.selected) ++ maybeToList model.dragging
        ,   case model.dragging of
                Just _ ->
                    rect (toFloat 10) (toFloat 50)
                        |> filled red -- give color while drawing
                        |> notifyMouseUp StopDragging
                        |> notifyMouseMoveAt MouseMove
                        |> notifyTouchEnd StopDragging
                        |> notifyTouchMoveAt MouseMove
                Nothing -> group []
        ,   text ("Score: " ++ String.fromInt model.score)
                |> size 30
                |> filled black
                |> move (-270, 270)
        --,   wordLine (List.length model.shuffledList) (List.map (\(_,_,c) -> c) (model.selected))|> move ( 0, -270 ) -- from model.selected take the letter and put to c
        ]

maybeToList : Maybe a -> List a
maybeToList ma =
    case ma of
        Just a -> [a]
        Nothing -> []

drawBox model word =
                group
                    [ square 25 |> outlined (solid (if model.selectedBox == BoxYes then 2 else 1)) brown
                    , text word |> centered |> filled black |> move (0,-4)
                    ] |> notifyTap (ClickBox word)


crossword model phonemes =
    group <|
        List.map
            (\ ((xIdx,yIdx),phoneme) ->
                drawBox model phoneme  |> move ( 30 * toFloat xIdx, 30 * toFloat yIdx) |> move (toFloat xIdx,toFloat yIdx) |> notifyMouseDown (StartDragging (toFloat xIdx,toFloat yIdx, phoneme)) |> notifyEnter (MouseEnter (toFloat xIdx,toFloat yIdx,phoneme))|> notifyTouchStart (StartDragging (toFloat xIdx,toFloat yIdx,phoneme)) --|> notifyTap (ClickBox phoneme)
            )
            phonemes


button =
    group
        [ roundedRect 50 25 1 |> filled green
        , text "Next" |> centered |> filled white |> move ( 0, -3 )
        ]
checkButton =
    group
        [ roundedRect 50 25 1 |> filled green
        , text "Check Word" |> centered |> filled white |> move ( 0, -3 )
        ]

selectedLines : List (Float,Float) -> Shape Msg
selectedLines pts =
    openPolygon pts
        |> outlined (solid 5) red

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Tick t _ ->
            --update the time in our model
            ( { model | time = t }, Cmd.none )
        ClickBox a -> ({model | selectedBox = BoxYes
                        , dispWord = model.dispWord ++ a} --|> checkWin
                        , Cmd.none )
        Verify -> ( let
                        rAns = List.member model.dispWord model.wordList
                    in
                      { model | selectedBox = BoxNo
                              , dispWord = (if (rAns == True) then "" else "")
                              , score = (if rAns == True then model.score+20 else model.score-1)
                           } --|> checkWin
                           , Cmd.none)
        ClickNone -> ({model | selectedBox = BoxNo }, Cmd.none )
        StartDragging (x,y,char) ->
            case model.winState of --no dragging when the level is over
                Nothing ->
                    (
                        { model | dragging = Just (x,y)
                                , selected = [(x,y,char)] --dragged char on the circle
                                , selectedSet = Set.insert (x,y,char) Set.empty --add char and pos in the list continou
                                --, score = case model.dragging of Just _ -> model.score - 5 Nothing -> model.score-- on wrong selection

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
                        } --|> checkWin
                    ,   Cmd.none
                    )
                Nothing ->
                    (model, Cmd.none)
        ResetLevel ->
            ( { model | dragging = Nothing
                      , selected = []
                      , selectedSet = Set.empty
                      , winState = Nothing
                      , selectedBox = BoxNo
                      , dispWord = ""
                      }
            ,Cmd.none
            )
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

                ( wordTwo, shapeTwo ) =
                    case
                        Array.get b wordArray
                    of
                        Just ( ( user, word02, grade ), ( name, school, shape02 ) ) ->
                            ( word02, shape02 )

                        Nothing ->
                            ( "", \t -> [] )

                ( wordThree, shapeThree ) =
                    case
                        Array.get c wordArray
                    of
                        Just ( ( user, word03, grade ), ( name, _, shape03 ) ) ->
                            ( word03, shape03 )

                        Nothing ->
                            ( "", \t -> [] )

                ( wordFour, shapeFour ) =
                    case
                        Array.get d wordArray
                    of
                        Just ( ( user, word04, grade ), ( name, school, shape04 ) ) ->
                            ( word04, shape04 )

                        Nothing ->
                            ( "", \t -> [] )

                -- wordChars = String.toList word
                -- shuffledLst = shuffle wordChars |> Random.map (\shuffled -> (shuffled))
                wordLst =  [String.replace " " "" word] ++  [String.replace " " "" wordTwo] ++  [String.replace " " "" wordThree] ++  [String.replace " " "" wordFour]
                shuffledLst =
                    groupPhonemes 10 10 (0,0)
                       <| List.map (String.fromChar)
                       --<| String.toList word ++ String.toList wordTwo ++ String.toList wordThree ++ String.toList wordFour ++ String.toList wordsAlpha
                       <| String.toList (String.concat wordLst) ++ String.toList wordsAlpha
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

wordLine : Int -> List String -> Shape Msg
wordLine n chars =
    let
        spacing = 20
        charList = chars ++ [String.fromList(List.repeat (n - List.length chars) '_' )]-- hifen to be displayed
    in
    group <|
    List.indexedMap
        (\nn char ->
            --text (String.fromChar char)
            text (Debug.toString(char))
              |> size 30
                |> centered
                |> filled red
                |> move (toFloat nn * spacing - toFloat (n-1) * (spacing/2), 0)
        )
        charList

checkWin : Model -> Model
checkWin model =
    let
        --isWin = List.map (\(_,_,c) -> c) model.selected == [model.word] --String.toList model.word  --from random func
        --fromShfList = List.map (\((_,_),c) -> c) model.shuffledList
        --isWin = List.member model.dispWord fromShfList
        isWin = List.member model.dispWord model.wordList
        temp = (if (isWin == True) then model.dispWord else "")
    in
        --case (isWin, String.length model.word == List.length model.selected) of
        case (isWin, String.length model.dispWord == String.length temp) of
            (True, _) ->
                { model |
                  dragging = Nothing,
                   score = model.score + 10
              --  ,   winState = Just True
                ,   dispWord = ""
                }
            (False, True) ->
                { model |
                    dragging = Nothing,
                   score = model.score - 10
                --,   winState = Just False
                ,   dispWord = ""
                }
            (False, False) ->
                model
