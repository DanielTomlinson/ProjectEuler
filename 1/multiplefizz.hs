module Main where

import Data.List (union)

doThing' n = sum (union [3,6..n] [5,10..n])
doThing n = sum [x | x <- [1..n], x `mod` 3 == 0 || x `mod` 5 == 0]

main :: IO ()
main = do   
    putStrLn $ show (doThing' 1000)