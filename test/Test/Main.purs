{-
  Author    : Tim Dysinger
  Copyright : 2014
  License   : MIT
-}

module Test.Main where

import Control.Applicative
import Control.Monad.Eff (Eff)
import Data.Unit (Unit, unit)

main :: Eff () Unit
main = pure unit

