module Problem3 where

solve = last $ primeFactorsOf 600851475143

primeFactorsOf :: Int -> [Int]
primeFactorsOf n = primeFactorsOf' n (primes n)

primeFactorsOf' :: Int -> [Int] -> [Int]
primeFactorsOf' 1 _ = []
primeFactorsOf' n primeNumbers@(x : xs)
  | n `rem` x == 0 = x : primeFactorsOf' (n `div` x) primeNumbers
  | otherwise = primeFactorsOf' n xs

primes :: Int -> [Int]
primes n = primes' [2 .. n] ((ceiling . sqrt . fromIntegral) n)

primes' :: [Int] -> Int -> [Int]
primes' numbers@(x : xs) nSqrt
  | x < nSqrt = x : primes' [y | y <- xs, y `rem` x /= 0] nSqrt
  | otherwise = numbers
