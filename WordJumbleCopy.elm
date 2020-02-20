module Main exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)
import Array
import String exposing (..)


--import the words from the file

import Random
import Wrd1526388449251721
import Wrd1526642931059256
import Wrd1526743215065487

words = Wrd1526388449251721.words ++ Wrd1526642931059256.words ++ Wrd1526743215065487.words

main : EllieAppWithTick () GameModel Msg
main =
    ellieAppWithTick Tick
        { init = \ _ -> init
        , update = update
        , view = \ model -> { title = "Jumbled", body = view model }
        , subscriptions = \_ -> Sub.none
        }

-- MODEL --
init =
    ( gameModel, generateRandom )

type alias GameModel = { guessedOneWrong : Bool
               , numRevealed : Int
               , score : Int
               , scrambledWord : String
               , shape : { time : Float } -> List (Shape Msg)
               , solved : Bool
               , time : Float
               , word : String
               }

gameModel : GameModel
gameModel  = { time = 0, shape = \t -> [], word = "", numRevealed=0, scrambledWord="", score=0, solved=False, guessedOneWrong=False}

generateRandom =
    Random.generate NewImage (Random.int 0 (List.length Wrd1526388449251721.words))

generateRandomIndex daSource=
    Random.generate (NewCharIndex daSource) (Random.int 0 (length daSource))

type Msg
    = Tick Float GetKeyState -- basic type needed, this gets sent to your update 30 times per second
    | GetNewPicture -- message from the button telling the program to find a new random number
    | NewImage Int -- the random number generator returns with a new image
    | RevealNext
    | NewCharIndex String Int
    | ClickedLetter Char

update : Msg -> GameModel -> (GameModel, Cmd Msg)
update msg model =
    case msg of
        Tick t (getKeyState,(x,y),(x1,y1)) ->
            --update the time in our model
            ( { model | time = t }, Cmd.none )

        GetNewPicture ->
            --launch the generateRandom command
            ( model, generateRandom )

        NewImage n ->
            -- called with this message when the Random Number Generator returns
            let
                ( word, shape ) =
                    --extract the word and shape from the array
                    case
                        (Array.get n wordArray)
                    of
                        -- index exists
                        Just ( (user, wrd, grade), (name, school, sh) ) ->
                            ( wrd, sh )

                        -- index does not exist, use some defaults
                        Nothing ->
                            ( "", \t -> [] )
            in
                --update the word and shape in our model, and don't launch another command
                ( { model | word = word, shape = shape, numRevealed=0, scrambledWord="", solved=False}, generateRandomIndex word )

        NewCharIndex currentWordLeft n->
                      let
                          arrayOfWord = Array.fromList <| String.toList currentWordLeft -- ["w","o","r","d",]
                          getLetters n2 =  case (Array.get n2 arrayOfWord) of
                                          Just x -> String.fromChar x
                                          Nothing -> "fail"
                          stringOfWordLeft = if (length currentWordLeft)==n-1 then
                                              (String.slice 0 n currentWordLeft)
                                            else
                                              (String.slice 0 n currentWordLeft)++(String.slice (n+1) (length currentWordLeft) currentWordLeft)
                     in
                        if (length currentWordLeft==0) then
                          --we are done extracting
                          ({model |
                              scrambledWord=model.scrambledWord++(String.slice n (n+1) currentWordLeft)
                          }, Cmd.none)
                        else
                            ({model |
                                scrambledWord=model.scrambledWord++(String.slice n (n+1) currentWordLeft)
                            }, generateRandomIndex  stringOfWordLeft   )
         --scrambledWord = arrayOfWord

        RevealNext -> ( { model | numRevealed=model.numRevealed+1 }, Cmd.none )


        ClickedLetter ch ->  if (String.fromChar ch )== (String.slice model.numRevealed (model.numRevealed+1) model.word) then
                                ({model| numRevealed=model.numRevealed+1,score=model.score+2 , guessedOneWrong=False, solved= (model.numRevealed>=(length model.word)-1) }  , Cmd.none)
                             else
                               ({model| score=model.score-1 , guessedOneWrong=True} , Cmd.none)

view : GameModel -> Collage Msg
view model =
    let
      arrayOfWord = Array.fromList <| String.toList model.word -- ["w","o","r","d",]
      getLetters n =  case (Array.get n arrayOfWord) of
                      Just x -> String.fromChar x
                      Nothing -> "fail"
      --emptyArray =
     --scrambledWord = arrayOfWord


    in
    collage 500
        500
        [ (group <| model.shape { time = model.time }) --display shape
            |> clip (square 100 |> ghost)
            |> scale 2
        , text ( model.word)
            -- display word
           |> centered
        |> size 24
            |> filled black
            |> move ( 0, -150 )


        , drawLetters model.word 0 model.numRevealed
        , drawLetters model.word 1 model.numRevealed
        , drawLetters model.word 2 model.numRevealed
        , drawLetters model.word 3 model.numRevealed
        , drawLetters model.word 4 model.numRevealed
        , drawLetters model.word 5 model.numRevealed
        , drawLetters model.word 6 model.numRevealed
        , drawLetters model.word 7 model.numRevealed
        , drawLetters model.word 8 model.numRevealed
        , drawLetters model.word 9 model.numRevealed
        , drawLetters model.word 10 model.numRevealed
        , drawLetters model.word 11 model.numRevealed
        , drawLetters model.word 12 model.numRevealed
        , text ("Score:" ++ String.fromInt model.score) |> size 20 |> centered |> filled black |> move(-5, 190)
        , text (" Instructions: Click the letters into the correct order.")
          |> size 20 |> centered |> filled blue |> move(-5, -235)
        , case model.guessedOneWrong  of
            True -> sadFace |> move (-120,180) |> scale 1.0
            False -> text "" |>filled white
      , case model.solved  of
              True -> happyFace
              False -> text "" |> filled white
        , case model.solved  of
            True ->
                  button
                    --display button
                    |> move ( 0, -200 )
                    |> notifyTap GetNewPicture
            False ->  text "" |> filled white
        , group (List.indexedMap (\ i ch -> text (String.fromChar ch)
                                                  |> centered
                                                  |> size 20
                                                  |> fixedwidth
                                                  |> filled black
                                                  |> move(Basics.toFloat i * 20, 0)
                                                  |> notifyTap (ClickedLetter ch)
                                                  )

                                 (String.toList model.scrambledWord)) |> move(-(Basics.toFloat <| length model.scrambledWord) * 10, 150)
                                  ]
sadFace  = group [   circle 50
                     |> filled yellow
                     ,circle 10
                     |> filled black
                     |> move (-15, 20)
                     ,circle 10
                     |> filled black
                     |> move (15, 20)
                     ,curve (0,0) [Pull (10,0) (20,-10)]
                     |> filled red
                     |> move (-25, -15)
                     |> rotate (degrees 27)
                     |> scale 2.5
                     ,wedge 10 0.25
                     |> filled darkBlue
                     |> move (-15, 15)
                     |> rotate (degrees -90)
                     |> scaleX 2
                     ,text "-1 point"
                     |> filled red
                     |> move (-60, 25)
                     |> rotate (degrees 50 )
                  ]

happyFace = group [ square 225
                    |>filled white
                  ,circle 50
                  |> filled yellow
                  , circle 10
                  |> filled black
                  |> move (15,20)
                  , circle 10
                  |> filled black
                  |> move (-15, 20)
                  , curve (0,0)[Pull (10,0) (20,-10)]
                  |> filled red
                  |> move (25,-15)
                  |> rotate (degrees -155)
                  |> scale 2.5
                  -- happy face's party hat
                  , triangle 35
                  |> filled blue
                  |> move (50,35)
                  |> rotate (degrees 35)
                  , circle 8
                  |> filled pink
                  |> move (80, 55)
                  -- Congratulations message
                  , text "CONGRATULATIONS!!!"
                  |> filled darkBlue
                  |> move (-55,-60)
              ]


drawLetters word index numRevealed= if index>=(length word) then
                            text ""
                                |> centered
                                |> filled white
                        else (
                            if (index<numRevealed) then
                              text (slice index (index+1) word)
                                  -- display word
                                  |> fixedwidth
                                  |> centered
                                  |> size 30
                                  |> filled black
                                  |> move ( (Basics.toFloat (index*20-(length word)*10)), -150 )
                          else
                              text "_"
                                  -- display word
                                  |> fixedwidth
                                  |> centered
                                  |> size 24
                                  |> filled black
                                  |> move ( (Basics.toFloat (index*20-(length word)*10)), -150 ))



-- graphics for button to get new picture
wordArray = Array.fromList Wrd1526388449251721.words
arrayLength = List.length Wrd1526388449251721.words

button =
    group
        [ roundedRect 50 25 1 |> filled green
        , text "New" |> centered |> filled white |> move ( 0, -3 )

        ]
