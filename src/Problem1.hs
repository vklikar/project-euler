module Problem1 where

solve = sumOfMultiples 3 5 1000

sumOfMultiples :: Int -> Int -> Int -> Int
sumOfMultiples a b n = sum [x | x <- [1 .. n - 1], x `rem` a == 0 || x `rem` b == 0]
