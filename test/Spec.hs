module Main (main) where

import Test.HUnit
import TestProblem1

main :: IO Counts
main = do
  TestProblem1.runTests
