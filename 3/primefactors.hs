module Main where

  primes :: [Integer]
  primes = 2 : filter ((==1) . length . primeFactors) [3, 5..]

  factor :: Integer -> [Integer] -> [Integer]
  factor n (p : ps)
            | p * p > n      = [n]
            | n `mod` p == 0 = p : factor (n `div` p) (p:ps)
            | otherwise      = factor n ps

  primeFactors :: Integer -> [Integer]
  primeFactors n = factor n primes


  main :: IO ()
  main = do
    putStrLn $ show $ (primeFactors 600851475143)