module Main where

  import Data.List (union)

  factors :: Integer -> [Integer]
  factors n = [x | x <- [1..n], n `mod` x == 0]

  prime :: Integer -> Bool
  prime n = factors n == [1, n]

  primeFactors :: Integer -> [Integer]
  primeFactors n = filter prime (factors n)

  main :: IO ()
  main = do
    putStrLn $ show (primeFactors 1000)