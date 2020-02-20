module Main exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)
import Array
import String exposing (..)
--import Debug

--import the words from the file

import Random
--import Wrd1526388449251721
--import Wrd1526642931059256
--import Wrd1526743215065487
import WrdFromElmJr2019May15
--import WrdFromElmJr2019May16
import Wrd1558528511662312

words = WrdFromElmJr2019May15.words  ++ Wrd1558528511662312.words -- ++ WrdFromElmJr2019May16.words ++ Wrd1526388449251721.words ++ Wrd1526642931059256.words ++ Wrd1526743215065487.words

main : EllieAppWithTick () GameModel Msg
main =
    ellieAppWithTick Tick
        { init = \ _ -> init
        , update = update
        , view = \ model -> { title = "Fish & Bubbles", body = view model }
        , subscriptions = \_ -> Sub.none
        }

-- MODEL --
init =
    ( gameModel, Random.generate NewImage (Random.int 0 (arrayLength-1))  )

type alias GameModel = { guessedOneWrong : Bool
               , numRevealed : Int
               , score : Int
               , state : Maybe (Shape Msg)
               , letters : List (Char,(Float,Float))
               , matched : List Char
               , nextMatch : Char
               , unmatched : List Char
               , shape : { time : Float } -> List (Shape Msg)
               , time : Float
               , nextGen : Float
               , myFrog : (Float , Float)
               , playing : Bool
                              }

gameModel : GameModel
gameModel  = { time = 0
             , nextGen = 2
             , shape = \t -> []
             , matched = []
             , nextMatch = 'c'
             , unmatched = ['a','t']
             , numRevealed=0
             , state = Nothing
             , letters=[]
             , score=0
             , guessedOneWrong=False
             , myFrog = (0,0)
             , playing = True}

lowercaseLetter : Random.Generator Char
lowercaseLetter =
  Random.map (\n -> Char.fromCode (n + 97)) (Random.int 0 25)


type Msg
    = Tick Float GetKeyState -- basic type needed, this gets sent to your update 30 times per second
    | GetNewPicture -- message from the button telling the program to find a new random number
    | NewImage Int -- the random number generator returns with a new image
    | RevealNext
    | RandomLetter (Char,Float,Int)



update : Msg -> GameModel -> (GameModel, Cmd Msg)
update msg model =
    case msg of
        Tick t (_,(x,y),_) ->
            let
              deltaT = t - model.time
              (oldPosX,oldPosY) = model.myFrog
                         --newPosY = oldPosY + y -- to move ahead step by step  but no limit
              newPosY = if oldPosY > 100 then -- Limits the player not to move away from the frame
                                         100
                                      else if oldPosY < -100 then
                                         -100
                                      else (oldPosY + 30*deltaT*y) -- Increase the speed of navigation
              newPosX = if oldPosX > 200 then
                                         200
                                      else if oldPosX < -250 then
                                         -250
                                      else oldPosX + 30*deltaT*x
              movedLetters = List.map ( \ (c,(cx,cy)) -> (c,(cx,cy+10*deltaT)) ) model.letters
                              |> List.filter ( \ (c,(cx,cy)) -> cy < 100 ) --55
              statusLetters = List.map (classify model.nextMatch (newPosX,newPosY)) movedLetters

              notGood = List.isEmpty <| List.filter ( \ (class,_) -> class == GoodNear ) statusLetters
              deltaScore = (if notGood
                             then 0 else 2)
                          - 2 * (List.length <| List.filter ( \ (class,_) -> class == BadNear ) statusLetters)
              (newMatched,newMatching,newUnmatched) =
                if notGood then
                  (model.matched,model.nextMatch,model.unmatched)
                else
                  case model.unmatched of
                    c0 :: cs -> (model.matched ++ [model.nextMatch],c0,cs)
                    [] -> (model.matched ++ [model.nextMatch],'#',[])
            in
               ( { model | time = t
                         , myFrog = (newPosX,newPosY)
                         , score = if (model.playing == True ) then  model.score + deltaScore else model.score
                         , letters = List.filter ( \ (nf,_) -> nf == Far ) statusLetters
                                                  |> List.map Tuple.second
                         , matched = newMatched
                         , nextMatch = newMatching
                         , unmatched = newUnmatched
                         , playing = if model.nextMatch == '#' then False else True
                 }

                , if t > model.nextGen
                    then
                      Random.generate RandomLetter <| Random.map3 ( \ l xPos idx -> (l,xPos,idx) )
                                                                  lowercaseLetter (Random.float -230 230)
                                                                  (let len = List.length model.unmatched in Random.int (-2*len) (len))
                    else
                      Cmd.none )

        GetNewPicture ->
            ( model, Random.generate NewImage (Random.int 0 (arrayLength-1))
            )

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
                (let0, lets) = case String.toList word of
                                    (l :: ll) -> (l, ll)
                                    [] -> ('*',[]) -- this should be impossible
            in
                --update the word and shape in our model, and don't launch another command
                ( { model | shape = shape
                          , matched = []
                          , nextMatch = let0
                          , unmatched = lets
                          , numRevealed=0
                          , playing = True}
                , Cmd.none )

        RevealNext -> ( { model | numRevealed=model.numRevealed+1 }, Cmd.none )

        RandomLetter (lett,x,idx) -> ( { model | letters = ( if idx < -1 then lett  -- pick a random letter
                                                               else if idx == -1 then model.nextMatch
                                                                      else case List.take 1 <| List.drop idx model.unmatched of
                                                                            [notrandom] -> notrandom
                                                                            _ -> lett
                                                           ,(x,-70)) :: model.letters
                                         , nextGen = model.time + 2 }, Cmd.none)

type LetterStatus = Far | GoodNear | BadNear

-- either bubble is far away, or it is the wrong character
classify expected (x,y) (c,(u,v)) =
  (if (x-u)^2 + (y-v)^2 > 225
    then Far
    else if expected == c
          then GoodNear
          else BadNear
  ,(c,(u,v)))

myShapes model = [ rect 500 300 |> filled lightBlue |> move (0,20)
                 --, line (250,30)(-250,30) |> outlined (dotted 1) white
                 --, line (250,-30) (-250,-30) |> outlined (dotted 1) white
                 , fish model  |> move (model.myFrog)
                 , seaweed model |> move (-200,-120)
                 , seaweed model |> mirrorX |> scale 1.5 |> move (-180,-120)
                 , seaweed model |> scale 2 |> move (-150,-120)
                 , seaweed model |> scale 1.5 |> move (-120,-120)
                 , seaweed model |> mirrorX |> scale 0.75|> move (-100,-120)
                 , seaweed model |> mirrorX |> scale 1.5 |> move (-80,-120)
                 , seaweed model |> scale 0.5 |> move (-50,-120)
                 , seaweed model |> scale 1.3 |> move (-20,-120)
                 , seaweed model |> mirrorX |> move (10,-120)
                 , seaweed model |> mirrorX |> scale 0.7 |> move (40,-120)
                 , seaweed model |> scale 1.5|>  move (60,-120)
                 , seaweed model |> scale 0.5 |> move (80,-120)
                 , seaweed model |> move (100,-120)
                 , seaweed model |> scaleX 1.5|> move (120,-120)
                 , seaweed model |> scale 3 |> move (150,-120)
                 , seaweed model |> mirrorX |> scale 1.5|> move (180,-120)
                 , seaweed model |> scaleY 0.7 |> move (200,-120)
                 --|> move (let (x,y) = model.myFrog in (fromInt x,fromInt y))
                 ] ++
                (List.map drawLetter model.letters)

seaweed model = group [curve (0,0)
                  [Pull (0 + 8 * (cos model.time),20) (0,40)
                  , Pull (0 + 8 * (sin model.time),78) (-10, 40)
                  , Pull (-10 + 8 * (cos model.time),20) (-10,0) ]
                  |> filled (green)
                  |> scaleX 0.5
                  ]

fish model =
  group
  [
   circle 20
   |> filled (rgb 12 162 249)
   |> move (10,5)

  , curve (-1.478,-2.420) [Pull (-3.630,8.4705) (-5.781,19.361),Pull (-8.305,25.440) (-11.42,27.159),Pull (-13.57,24.067) (-15.73,20.974),Pull (-20.06,16.439) (-20.84,11.025),Pull (-21.51,6.8571) (-22.18,2.6890),Pull (-22.66,-1.006) (-24.87,-4.302),Pull (-26.08,-6.453) (-27.29,-8.605),Pull (-28.79,-9.815) (-27.02,-11.02),Pull (-23.39,-14.60) (-19.76,-14.78),Pull (-9.815,-9.680) (-1.478,-2.420)]
        |> filled black
  ,

      curve (-3.092,32.268) [Pull (-0.825,35.145) (3.3613,36.302),Pull (11.656,38.989) (13.310,37.915),Pull (20.943,38.433) (29.176,38.991),Pull (38.232,37.814) (45.848,34.957),Pull (52.868,33.177) (58.487,30.117),Pull (63.731,26.352) (68.974,22.588),Pull (70.722,20.436) (72.470,18.285),Pull (74.391,14.788) (74.352,9.4117),Pull (73.180,8.2038) (73.008,5.9159),Pull (69.481,4.6415) (66.554,5.6470),Pull (62.252,9.4117) (57.949,13.176),Pull (54.184,16.403) (50.420,19.630),Pull (44.324,23.100) (38.588,26.890),Pull (34.253,29.164) (28.638,30.117),Pull (21.512,30.789) (14.386,31.462),Pull (7.3450,32.204) (2.8235,30.386),Pull (0,31.058) (-2.823,31.731)]
        |> filled (rgb 238 249 12)
 ,curve (-9.815,26.621) [Pull (-8.057,30.394) (-3.899,32.806),Pull (-0.806,30.716) (2.2857,30.386),Pull (10.094,31.244) (20.302,31.462),Pull (25.546,30.866) (30.789,29.310),Pull (34.689,28.251) (38.588,26.352),Pull (44.504,22.722) (50.420,19.092),Pull (54.184,16.268) (57.949,13.445),Pull (61.445,9.9495) (64.941,6.4537),Pull (65.381,4.3025) (64.941,2.1512),Pull (63.384,1.0389) (60.907,0.8067),Pull (60.638,0.1344) (60.369,-0.537),Pull (60.638,-1.613) (60.907,-2.689),Pull (63.713,-4.006) (65.478,-3.764),Pull (66.310,-5.378) (64.941,-6.991),Pull (61.418,-11.29) (56.336,-15.59),Pull (49.613,-19.63) (42.890,-23.66),Pull (37.008,-25.63) (29.445,-25.81),Pull (25.008,-26.48) (20.571,-27.15),Pull (18.554,-26.89) (16.537,-26.62),Pull (12.907,-26.75) (9.2773,-26.89),Pull (4.6757,-28.00) (-2.285,-25.27),Pull (-4.974,-23.93) (-7.663,-22.58),Pull (-7.869,-21.51) (-7.394,-20.43),Pull (-6.184,-19.09) (-4.974,-17.74),Pull (-3.226,-15.86) (-1.478,-13.98),Pull (-0.184,-13.52) (3.6302,-12.10),Pull (6.1848,-11.29) (8.7394,-10.48),Pull (10.254,-8.757) (13.848,-8.067),Pull (15.058,-4.168) (16.268,-0.268),Pull (15.580,3.4724) (15.731,6.4537),Pull (14.876,10.610) (15.462,15.327),Pull (14.521,17.747) (13.579,20.168),Pull (11.355,19.279) (10.890,19.630),Pull (7.7539,16.241) (6.8571,14.252),Pull (5.2236,10.296) (3.6302,7.2605),Pull (2.3235,9.8151) (2.0168,12.369),Pull (0.6722,15.327) (-0.672,18.285),Pull (-2.342,20.302) (-3.092,22.319),Pull (-3.822,20.468) (-5.512,18.016),Pull (-6.453,20.705) (-7.394,23.394),Pull (-8.470,24.605) (-9.815,26.621)]
   |> filled (rgb 12 162 249)

  ,curve (-13.57,15.865) [Pull (-10.29,15.786) (-8.739,12.907),Pull (-8.967,8.1206) (-12.23,6.4537),Pull (-15.96,7.0072) (-17.61,9.6806),Pull (-17.96,12.203) (-17.07,13.445),Pull (-15.32,14.521) (-13.57,15.865)]
      |> outlined (solid 3) (rgb 186 87 22)


  , curve (-15.73,11.294) [Pull (-15.53,13.264) (-13.57,13.714),Pull (-11.46,13.624) (-10.35,11.294),Pull (-9.839,9.3262) (-11.96,7.7983),Pull (-14.44,8.4450) (-14.92,9.4117),Pull (-15.59,10.218) (-15.73,11.294)]
     |> filled black


 ,curve (-15.73,16.134) [Pull (-14.11,16.537) (-12.50,16.941),Pull (-12.23,15.731) (-11.96,14.521),Pull (-13.71,14.386) (-15.46,14.252),Pull (-15.46,15.193) (-15.73,16.134)]
      |> filled (rgb 186 87 22)


 ,curve (64.941,6.4537) [Pull (66.689,5.7815) (68.436,5.1092),Pull (70.722,5.3781) (73.008,5.6470),Pull (72.548,6.1270) (73.008,5.6470),Pull (75.697,6.4537) (78.386,7.2605),Pull (77.714,5.7815) (77.042,4.3025),Pull (77.173,0.1621) (76.504,-5.378),Pull (77.714,-7.126) (78.924,-8.873),Pull (76.235,-7.932) (73.546,-6.991),Pull (69.039,-6.740) (67.092,-7.529),Pull (66.689,-7.394) (66.285,-7.260),Pull (65.802,-6.199) (65.478,-5.378),Pull (65.882,-4.840) (66.285,-4.302),Pull (62.845,-3.801) (61.445,-2.420),Pull (60.476,-1.795) (60.907,0.2689),Pull (61.784,0.9211) (64.941,1.6134),Pull (65.075,4.0336) (65.210,6.4537)]
    |> filled (rgb 255 254 219)


 , curve (65.478,-6.722) [Pull (69.378,-6.722) (73.277,-6.722),Pull (75.018,-8.611) (75.159,-12.10),Pull (72.873,-16.26) (70.588,-20.43),Pull (67.226,-23.39) (63.865,-26.35),Pull (60.100,-27.96) (56.336,-29.57),Pull (51.692,-31.00) (45.848,-31.19),Pull (41.546,-31.32) (37.243,-31.46),Pull (34.554,-31.05) (31.865,-30.65),Pull (28.504,-29.44) (25.142,-28.23),Pull (23.394,-27.69) (21.647,-27.15),Pull (26.218,-26.48) (30.789,-25.81),Pull (34.016,-25.54) (37.243,-25.27),Pull (39.798,-24.60) (42.352,-23.93),Pull (43.966,-23.26) (45.579,-22.58),Pull (50.285,-19.76) (54.991,-16.94),Pull (59.274,-13.05) (63.596,-9.411),Pull (64.672,-7.932) (65.747,-6.453)]
     |> filled (rgb 194 241 249)


 ,curve (79.193,6.7226) [Pull (82.794,9.3983) (85.915,8.8739),Pull (85.647,8.6050) (85.378,8.3361),Pull (83.361,6.1848) (81.344,4.0336),Pull (80.941,1.7478) (80.537,-0.537),Pull (81.075,-3.495) (81.613,-6.453),Pull (83.092,-8.605) (84.571,-10.75),Pull (85.109,-11.83) (85.647,-12.90),Pull (84.571,-12.50) (83.495,-12.10),Pull (82.016,-10.89) (80.537,-9.680),Pull (78.789,-7.798) (77.042,-5.915),Pull (76.907,-4.840) (76.773,-3.764),Pull (77.042,-1.075) (77.310,1.6134),Pull (77.310,3.2268) (77.310,4.8403),Pull (78.521,5.7815) (79.731,6.7226)]
   |> filled black


 ,curve (85.579,-11.61) [Pull (90.559,-14.75) (95.538,-17.89),Pull (95.170,-14.75) (94.801,-11.61),Pull (95.354,-10.32) (95.907,-9.037),Pull (95.723,-3.504) (95.538,2.0288),Pull (95.354,6.8242) (95.170,11.619),Pull (90.174,11.004) (85.579,8.6685),Pull (84.699,7.5220) (82.259,3.1354),Pull (81.890,1.2910) (81.521,-0.553),Pull (81.890,-3.688) (82.259,-6.824),Pull (83.550,-8.299) (85.579,-11.61)]
 |> filled (rgb 79 202 255)


 ,curve (-4.057,17.152) [Pull (-3.319,19.550) (-2.582,21.948),Pull (1.7733,16.119) (3.6887,7.9308),Pull (2.5821,5.7175) (1.4755,3.5043),Pull (0.3688,0.1844) (-0.737,-3.135),Pull (1.2910,-4.610) (3.3198,-6.086),Pull (4.6109,-8.484) (5.9020,-10.88),Pull (3.3421,-12.64) (-0.737,-14.20),Pull (-4.426,-18.07) (-8.115,-21.94),Pull (-13.46,-18.99) (-18.81,-16.04),Pull (-17.33,-14.01) (-15.86,-11.98),Pull (-13.83,-11.06) (-11.80,-10.14),Pull (-10.14,-9.221) (-8.484,-8.299),Pull (-6.639,-6.455) (-4.795,-4.610),Pull (-4.057,-2.951) (-3.319,-1.291),Pull (-3.319,0.9221) (-3.319,3.1354),Pull (-3.688,5.7175) (-4.057,8.2997),Pull (-4.426,11.066) (-4.795,13.832),Pull (-4.795,16.414) (-4.057,17.152)]
  |> filled (rgb 175 231 255)

  ,curve (3.3198,8.2997) [Pull (3.8731,7.3775) (4.4265,6.4553),Pull (3.1354,4.0576) (1.8443,1.6599),Pull (1.4755,-0.368) (1.1066,-2.397),Pull (2.3976,-4.057) (3.6887,-5.717),Pull (5.7175,-8.115) (7.7463,-10.51),Pull (6.4553,-10.88) (5.1642,-11.25),Pull (2.2132,-10.69) (-0.737,-10.14),Pull (-0.737,-8.299) (-0.737,-6.455),Pull (-1.659,-3.319) (-2.582,-0.184),Pull (-1.475,2.2132) (-0.368,4.6109),Pull (1.8443,6.4553) (4.0576,8.2997)]
  |> filled (rgb 175 231 255)

 ,curve (0.3688,-3.135) [Pull (0.4421,0.5800) (1.4755,3.1354),Pull (3.1354,5.7175) (4.7953,8.2997),Pull (6.0864,10.697) (7.3775,13.095),Pull (9.0374,15.861) (10.697,18.628),Pull (12.172,18.812) (13.648,18.997),Pull (14.806,15.461) (15.123,12.726),Pull (16.281,9.5396) (16.599,7.1930),Pull (16.446,2.9598) (15.492,-0.553),Pull (13.304,-6.888) (8.1152,-10.14),Pull (7.5619,-10.14) (7.0086,-10.14),Pull (6.2708,-8.853) (5.5331,-7.561),Pull (3.1354,-5.348) (0.3688,-3.135)]
   |> filled (rgb 232 242 247)
   |> makeTransparent 0.6
   |> scaleX ( 1 + 0.5 * sin model.time )

   ,curve (87.054,9.4063) [Pull (86.870,8.6685) (86.685,7.9308),Pull (85.394,5.1642) (84.103,2.3976),Pull (83.550,0.5533) (82.997,-1.291),Pull (83.734,-3.319) (84.472,-5.348),Pull (85.025,-6.824) (85.579,-8.299),Pull (86.870,-9.959) (88.161,-11.61),Pull (88.530,-11.98) (88.899,-12.35),Pull (88.530,-12.72) (88.161,-13.09),Pull (86.132,-11.98) (84.103,-10.88),Pull (82.812,-9.037) (81.521,-7.193),Pull (81.706,-5.717) (81.890,-4.242),Pull (81.337,-4.242) (80.783,-4.242),Pull (80.599,-2.766) (80.414,-1.291),Pull (80.599,0.3688) (80.783,2.0288),Pull (81.152,3.5043) (81.521,4.9798),Pull (82.997,6.6397) (87.054,9.4063)]
  |> filled black


  ,curve (80.414,-1.659) [Pull (82.259,-4.242) (84.103,-6.824),Pull (82.074,-7.193) (80.046,-7.561),Pull (79.677,-5.717) (80.414,-1.659)]
  |> filled black


 ,curve (0.3688,-2.397) [Pull (3.1354,-3.873) (5.9020,-5.348),Pull (7.1930,-7.008) (8.4841,-8.668),Pull (7.0086,-10.14) (5.5331,-11.61),Pull (3.6887,-10.32) (1.8443,-9.037),Pull (0.7377,-7.746) (-0.368,-6.455),Pull (0.1844,-4.426) (0.7377,-2.397)]
   |> filled (rgb 175 231 255)

  ,curve (7.0086,-7.193) [Pull (9.0374,-7.561) (11.066,-7.930),Pull (10.512,-9.775) (9.9596,-11.61),Pull (7.7463,-11.80) (5.5331,-11.98),Pull (6.0864,-9.775) (7.0086,-7.193)]
     |> filled (rgb 175 231 255)


  ,curve (-2.213,21.579) [Pull (-4.242,21.948) (-6.270,22.317),Pull (-5.902,19.919) (-5.533,17.521),Pull (-4.610,17.337) (-3.688,17.152),Pull (-2.766,18.997) (-2.213,21.579)]
   |> filled (rgb 175 231 255)



 ,curve (-5.533,21.210) [Pull (-6.639,20.103) (-7.746,18.997),Pull (-7.008,17.152) (-6.270,15.308),Pull (-3.504,15.861) (-0.737,16.414),Pull (-2.766,18.997) (-5.533,21.210)]
  |> filled (rgb 175 231 255)

  ,curve (77.832,-6.086) [Pull (77.832,-8.484) (77.832,-10.88),Pull (80.783,-12.17) (83.734,-13.46),Pull (86.501,-13.27) (89.268,-13.09),Pull (88.161,-11.61) (87.054,-10.14),Pull (85.394,-9.406) (83.734,-8.668),Pull (82.259,-8.115) (80.783,-7.561),Pull (79.861,-7.193) (77.832,-6.086)]
  |> filled black




 ]
  |> scale 0.5
  |> move (17,0)


view : GameModel -> Collage Msg
view model =
    collage 500
        500
        [ group (myShapes model)
        , (group <| model.shape { time = model.time }) --display shape
            |> clip (square 100 |> ghost)
            |> scale 0.75
            |> move (0,-180)
        , (if List.isEmpty model.matched -- change it to score instead of checking list
            then text (" Instructions: Use the arrows to catch the letters in order to spell your word, but avoid the others.")
            else text (" You already have eaten: " ++ (String.concat <| List.map String.fromChar model.matched)
                         ++ "                   Score:" ++ String.fromInt model.score)
          )
          |> size 10 |> centered |> filled blue |> move(0,230)
        , case model.guessedOneWrong  of
            True -> circle 10 |> filled red |> move (-120,180) |> scale 1.0
            False -> text "" |>filled white
        , case model.nextMatch == '#'  of
              True ->  group [ roundedRect 60 30 5 |> filled  (rgb 0 255 0)
                            , text "You win!" |> centered |> filled (rgb 200 255 0)
                            ] |> notifyTap GetNewPicture
              False -> group []
      --  , text ("matched "++Debug.toString model.matched++"nextMatch "++Debug.toString model.nextMatch++"unmatched "++Debug.toString model.unmatched)
      --    |> size 4 |> centered |> filled green |> move (0,30)
                                  ]

drawLetter (c,(x,y)) =
   group [ circle 10 |> filled white |> addOutline (solid 0.5) (rgb 0 0 150)
         , text (String.fromChar c)
                                  |> fixedwidth
                                  |> centered
                                  |> size 10
                                  |> filled black
                                  |> move (0,-2)
          ]
              |> move (x,y)



-- graphics for button to get new picture
wordArray = Array.fromList words
arrayLength = List.length words
