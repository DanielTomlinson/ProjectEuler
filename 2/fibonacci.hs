module Main where

  fibs :: [Integer]
  fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

  fibsBelow :: Integer -> [Integer]
  fibsBelow n = [ x | x <- takeWhile (<= n) fibs]

  evenIntegers :: [Integer] -> [Integer]
  evenIntegers il = filter even il

  main :: IO ()
  main = do
    putStrLn $ show $ sum (evenIntegers (fibsBelow 4000000))