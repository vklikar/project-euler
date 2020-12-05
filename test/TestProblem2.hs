module TestProblem2 where

import Problem2
import Test.HUnit

testBelow100 :: Test
testBelow100 = TestCase $ assertEqual "" [2, 8, 34] (fibonacciEven 100)

runTests :: IO Counts
runTests = runTestTT $ TestList [testBelow100]
