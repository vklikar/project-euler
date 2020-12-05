module Main (main) where

import Test.HUnit
import TestProblem1
import TestProblem2

main :: IO Counts
main = do
  TestProblem1.runTests
  TestProblem2.runTests
