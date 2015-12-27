module WesleySafadaoTest where
import WesleySafadao

pedro :: Safado
pedro = Safado { day = 14
               , month = 2
               , year = 96
               }

main :: IO ()
main = saySafadeza pedro
