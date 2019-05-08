module BunnyHop exposing (..)
import GraphicSVG exposing(..)
import GraphicSVG.EllieApp exposing (..)
import List
import Random
import Array

 

import Wrd1526388449251721
import Wrd1526642931059256
import Wrd1526743215065487 
        

words = Wrd1526388449251721.words ++ Wrd1526642931059256.words ++ Wrd1526743215065487.words

type alias Model = 
    { letters : List Char 
    , pic : { time: Float } -> List (Shape Msg)
    , word : String
    , time : Float               
    }

init : Model
init = { letters = [] , pic = \_ -> [], word = " ", time = 0
       }


-- this draws whatever you want on the screen, based on the current state of the model
view : Model -> { title : String, body : Collage Msg }
view model = let 
                title = "Crossword"
                body = collage 500 500 [
                                        text (" word: " ++ model.word)
                                        |> filled black
                                        , pic model

                                        ] 
  in { title = title , body = body }



  
-- this function draws one letter, shifted over by the idx number of letters
-- use it with List.indexedMap to display a list of letters


type Msg = Tick Float GetKeyState
         | Start
         | AddLetter Char
         | GotNewIdx Int

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model = case msg of
                     Tick time keystate -> ( { model | time = time } , Cmd.none)
                     AddLetter letter   -> ({model | letters = letter :: model.letters} , Cmd.none)
                     Start              -> (model, Random.generate GotNewIdx oneRandIdx)
                     GotNewIdx idx      -> 
                        let
                            (newPic,newWord) = getWord idx
                        in
                        ( { model | pic = newPic, word = newWord }, Cmd.none)
                


oneRandIdx = Random.int 0 (arrayLength - 1)



wordArray = Array.fromList words
arrayLength = List.length words
getWord idx = case Array.get idx wordArray of
                Just ((_,word,_),(_,_,pic)) -> (pic,word)
               -- Just ((username,word,_),(_,school,pic)) -> (pic,(username,word,school))
                Nothing                             -> (\ _ -> [],"")



main : EllieAppWithTick () Model Msg
main =
    ellieAppWithTick Tick
        { init = \_ -> (init, Cmd.none)
        , update = update
        , view = view
        , subscriptions = \_ -> Sub.none
        }