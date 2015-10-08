{-
  Author    : Tim Dysinger
  Copyright : 2014
  License   : MIT
-}

module Leaflet.Map where

import Control.Monad.Eff
import Leaflet.Types

foreign import createMap :: forall e. String -> MapOptions -> Eff e Map
