module MyNet.Static.Standalone.EmeraldLake exposing(..)
import Html exposing(..)
import Browser exposing(..)
import MyNet.View.EmeraldLake as View
import MyNet.Static.Types exposing (..)
import MyNet.Static.ExtraTypes exposing (..)
import MyNet.Static.Types.EmeraldLake exposing (Msg)
import Dict exposing (Dict)
import Json.Decode as D

main : Program () EmeraldLake Msg
main = Browser.document { init = \_ -> (model, Cmd.none), view = \m -> { body = [View.view m], title = View.title m }, update = \_ m -> (m,Cmd.none), subscriptions = \_ -> Sub.none }

--Change the model here to preview your state
model : EmeraldLake
model = EmeraldLake 
