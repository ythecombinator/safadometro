module WesleySafadao (Safado (..), saySafadeza) where
import System.IO
import Text.Printf

data Safado = Safado { day :: Integer
                     , month :: Integer
                     , year :: Integer
                     }
                     deriving (Show)

safadeza :: Fractional a => Safado -> a
safadeza safado = (fromIntegral $ sum [1 .. (month safado)])
  + (fromIntegral $ year safado) / 100 * (50 - (fromIntegral $ day safado))

anjo :: Fractional a => a -> a
anjo s = 100 - s

saySafadeza :: Safado -> IO ()
saySafadeza vagabundo =
  let saf = safadeza vagabundo
  in (hSetBuffering stdout NoBuffering >> putStrLn
    ("Você é " ++ (format saf) ++ "% safado e " ++ (format $ anjo saf) ++ "% anjo"))
    where format x = printf "%.2f" (x :: Float)
