module Main where

import Data.List (union)

doThing' = sum (union [3,6..999] [5,10..999])
doThing = sum [x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0]

main :: IO ()
main = do   
    putStrLn $ show doThing'