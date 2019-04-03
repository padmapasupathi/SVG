module Main exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)

import AvatarCreator exposing (..)

main : EllieAppWithTick () AvatarCreator.Model AvatarCreator.Msg
main = ellieAppWithTick AvatarCreator.Tick { init = \ _ -> (AvatarCreator.init,Cmd.none)
  , view = view
  , update = \ model msg -> (AvatarCreator.update model msg, Cmd.none)
  , subscriptions = \ _ -> Sub.none }

view model = { body = collage 192 128 (AvatarCreator.view model), title = "AvatarCreator" } --Size of display
