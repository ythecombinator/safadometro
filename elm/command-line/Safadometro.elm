module Safadometro where

import List exposing (sum)

type alias Safadao =
  { d : Float
  , m : Float
  , y : Float
  }

safadeza : Safadao -> Float
safadeza {d, m, y} =
  (sum [0..m]) + (y / 100) * (50 - d)

anjo : Float -> Float
anjo n =
  100 - n

showSafadeza : Safadao -> String
showSafadeza p =
  let safadeza' = safadeza p
      anjo' = anjo safadeza'
  in
    "Você é " ++ toString safadeza' ++ "% safado e " ++ toString anjo' ++ "% anjo."