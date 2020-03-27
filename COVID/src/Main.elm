module Main exposing (..)

import GraphicSVG exposing(..)
import GraphicSVG.EllieApp exposing(..)
import Url exposing(..)
import Browser exposing(..)
import Random exposing(Generator)
import Random.Char as RChar
import Dict
import Array

import Hands
import School
import Info
import Quiz
import Soap

type Msg
    = Tick Float GetKeyState
    | MsgHands Hands.Msg
    | MsgSchool School.Msg
    | MsgInfo Info.Msg
    | MsgQuiz Quiz.Msg
    | MsgSoap Soap.Msg
    | Goto Pages
    | In Pages
    | Out Pages

type Pages
    = Hands
    | Soap
    | Info
    | School
    | Quiz
    | Welcome

type alias Model =
  { time : Float
  , page : Pages
  , hoverOver : Pages
  , lastTime : Float
  , hands : Hands.Model
  , soap : Soap.Model
  , info : Info.Model
  , school : School.Model
  , quiz : Quiz.Model
  , hoverTxt : Pages
  }

init : Model
init = { time = 0
       , lastTime = 0
       , page = Welcome
       , hoverOver = Welcome
       , hands = Hands.init
       , soap = Soap.init
       , info = Info.init
       , school = School.init
       , quiz = Quiz.init
       , hoverTxt = Welcome
       }

main : EllieAppWithTick () Model Msg
main = ellieAppWithTick Tick
  { init = \_ -> (init, Cmd.batch [] )
  , view = \model -> { body = view model, title = "COVID-19 Advice from McMaster Start Coding" }
  , update = update
  , subscriptions = \ _ -> Sub.none
  }

tab : Model -> ((Pages, Shape Msg, Float -> Color), (Float,Float)) -> Shape Msg
tab model ((tabForPage, graphic, mkColour), pos)  =
  group
          [ circle 8
              |> filled (mkColour 0.5)
              |> addOutline (solid 1)
                  (if model.page == tabForPage then
                      (mkColour 1)

                   else if model.hoverOver == tabForPage then
                      (mkColour 1)

                   else
                      blank
                  )
              |> makeTransparent 0.7
          , graphic |> makeTransparent 0.7
          , text (if model.page == tabForPage || model.hoverOver == tabForPage then
                    if model.page == tabForPage then (Debug.toString model.page)
                    else (Debug.toString model.hoverTxt)
                  else "") |> filled black |> scale 0.25 |> move (-10,0)
          ]
          |> notifyTap (Goto tabForPage)
          |> notifyEnter (In tabForPage)
          |> notifyLeave (Out tabForPage)
          |> move pos

view model = collage 192 128 <|
        (case model.page of
            Hands ->
                List.map (map MsgHands) (Hands.myShapes model.hands)

            School ->
                List.map (map MsgSchool) (School.myShapes model.school)

            Info ->
                List.map (map MsgInfo) (Info.myShapes model.info)

            Quiz ->
                List.map (map MsgQuiz) (Quiz.myShapes model.quiz)

            Soap ->
                List.map (map MsgSoap) (Soap.myShapes model.soap)
            Welcome ->
                [ text "When COVID-19 cancelled our game-development workshop,"
                    |> centered |> size 6 |> filled black |> move (0,30)
                , text "we decided to get even!"
                    |> centered |> size 8 |> filled black |> move (0,10)
                , text "Click on the tabs to the right"
                    |> centered |> size 6 |> filled black |> move (0,-10)
                , text "to find out how to wipe out COVID-19."
                    |> centered |> size 6 |> filled black |> move (0,-30)
                , text (Debug.toString model.hands.score) |> filled black |> move (0,-50)
                ] -- put welcome page here
        )
            ++ ( List.map (tab model)
                    [ ( (Welcome, circle 3 |> filled red, rgba 0 255 0)
                      , ( 96, 50 )
                      )
                    , ( (Hands, group[circle 3 |> filled red
                    , wedge 9 0.5 |> outlined (solid 1) ( if model.hands.started == True then (rgba 255 0 0 1) else (rgba 255 0 0 0) ) |> rotate (degrees 180)]
                    , rgba 255 0 0)
                    , ( 96, 10 )
                      )
                    , ( (School, circle 3 |> filled red, rgba 255 0 255)
                      , ( 96, -30 )
                      )
                    , ( (Info, circle 3 |> filled red, rgba 0 0 255)
                      , ( 96, 30 )
                      )
                    , ( (Quiz, circle 3 |> filled red, rgba 0 255 255)
                      , ( 96, -10 )
                      )
                    , ( (Soap, circle 3 |> filled red, rgba 255 255 0)
                      , ( 96, -50 )
                      )
                    ]
               )

update msg model =
    (case msg of
        In tabForPage ->
             { model | hoverOver = tabForPage
                      , hoverTxt = tabForPage
                      }
        Out tabForPage ->
             { model | hoverOver = Welcome
             , hoverTxt = tabForPage
             }
        MsgHands m1 ->
             { model | hands = Hands.update m1 model.hands }
        MsgSchool m1 ->
             { model | school = School.update m1 model.school }
        MsgInfo m1 ->
             { model | info = Info.update m1 model.info }
        MsgQuiz m1 ->
             { model | quiz = Quiz.update m1 model.quiz }
        MsgSoap m1 ->
             { model | soap = Soap.update m1 model.soap }
        Goto page ->
             { model | page = page
                        }

        Tick f g ->
            case model.page of
              Hands ->
                { model | hands = Hands.update (Hands.Tick f g) model.hands }

              School ->
                { model | school = School.update (School.Tick f g) model.school }

              Info ->
                { model | info = Info.update (Info.Tick f g) model.info }

              Quiz ->
                { model | quiz = Quiz.update (Quiz.Tick f g) model.quiz }

              Soap ->
                { model | soap = Soap.update (Soap.Tick f g) model.soap }

              Welcome ->
                { model | time = f }
    , Cmd.none
    )
