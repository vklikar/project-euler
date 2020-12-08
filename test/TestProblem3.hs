module TestProblem3 where

import Problem3
import Test.HUnit

testExample :: Test
testExample = TestCase $ assertEqual "" [5, 7, 13, 29] (primeFactorsOf 13195)

runTests :: IO Counts
runTests = runTestTT $ TestList [testExample]
