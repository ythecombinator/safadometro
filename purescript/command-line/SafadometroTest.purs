module SafadometroTest where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (log, CONSOLE)
import Safadometro (Safado(..), showSafadeza)

main :: Eff (console :: CONSOLE) Unit
main = do
  let xavier = Safado { day: 28, month: 6, year: 95 }
  log $ showSafadeza xavier
