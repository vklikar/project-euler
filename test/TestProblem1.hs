module TestProblem1 where

import Problem1
import Test.HUnit

test10 :: Test
test10 = TestCase $ assertEqual "" 23 (sumOfMultiples 3 5 10)

runTests :: IO Counts
runTests = runTestTT $ TestList [test10]
