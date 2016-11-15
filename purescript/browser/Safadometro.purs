module Safadometro where

import Prelude
import Data.Array ((..))
import Data.Foldable (sum)
import Data.Int (toNumber)
import Flare (runFlare, int, UI)

data Safado = Safado Int Int Int

type Safadeza =
  { anjo :: Number
  , safado :: Number
  }

safadeza :: Safado -> Safadeza
safadeza (Safado day month year)
  | year > 999 = safadeza (Safado day month (year - 1000))
  | otherwise = { safado, anjo: 100.0 - safado }
  where
    safado = (toNumber $ sum $ 1..month) + (y / 100.0) * (50.0 - d)
    d = toNumber day
    y = toNumber year

showSafadeza :: Safado -> String
showSafadeza date = "Você é " <> show s.safado <> "% safado e " <> show s.anjo <> "% anjo."
  where
    s = safadeza date

flare :: forall eff. UI eff String
flare =
  getSafadeza
    <$> int "Dia" 1
    <*> int "Mês" 1
    <*> int "Ano" 1990
  where
    getSafadeza day month year = showSafadeza $ Safado day month year

main = runFlare "controls" "output" flare
