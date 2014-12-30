{-
  Author    : Tim Dysinger
  Copyright : 2014
  License   : MIT
-}

module Test.Main where

import Control.Monad.Eff
import Debug.Trace
import Test.QuickCheck

main = do

  trace "(+) should add two numbers and give their sum"
  quickCheck $ \n -> n + n == 2 * n <?> show n ++ " + " ++ show n ++ " failed"
