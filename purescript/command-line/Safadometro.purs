module Safadometro where

import Prelude
import Data.Array ((..))
import Data.Foldable (sum)
import Data.Int (toNumber)

newtype Safado = Safado
  { day :: Int
  , month :: Int
  , year :: Int
  }

type Safadeza =
  { anjo :: Number
  , safado :: Number
  }

safadeza :: Safado -> Safadeza
safadeza (Safado {day, month, year})
  | year > 999 = safadeza (Safado { day, month, year: (year - 1000) })
  | otherwise = { safado, anjo: 100.0 - safado }
  where
    safado = (toNumber $ sum $ 1..month) + (y / 100.0) * (50.0 - d)
    d = toNumber day
    y = toNumber year

showSafadeza :: Safado -> String
showSafadeza date = "Você é " <> show s.safado <> "% safado e " <> show s.anjo <> "% anjo."
  where
    s = safadeza date
