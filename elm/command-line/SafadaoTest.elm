import Safadometro exposing (showSafadeza)
import Graphics.Element exposing (leftAligned)
import Text exposing (..)

safado =
  { d = 1
  , m = 3
  , y = 95
  }

main =
  fromString (showSafadeza safado)
  |> leftAligned