module Problem2 where

solve = (sum . fibonacciEven) 4000000

-- | Generate even Fibonacci numbers below @n@.
-- Every third Fibonacci number is even:  @2 x y 8 x y 34 x y 144@
fibonacciEven :: Int -> [Int]
fibonacciEven = fibonacciEven' 1 1

fibonacciEven' :: Int -> Int -> Int -> [Int]
fibonacciEven' a b n
  | a + b < n = result : fibonacciEven' x y n
  | otherwise = []
  where
    result = a + b
    x = b + result
    y = x + result
