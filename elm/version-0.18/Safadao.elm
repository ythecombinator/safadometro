module Safadao exposing (anjo, safadeza)


somatorio : Int -> Int
somatorio =
    List.range 1 >> List.sum


safadeza : Int -> Int -> Int -> Float
safadeza ano mes dia =
    toFloat (somatorio mes) + (toFloat ano / 100) * toFloat (50 - dia)


anjo : Float -> Float
anjo safadeza =
    100 - safadeza
