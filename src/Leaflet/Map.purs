{-
  Author    : Tim Dysinger
  Copyright : 2014
  License   : MIT
-}

module Leaflet.Map where

import Control.Monad.Eff
import Leaflet.Types

foreign import createMap
  """
  function createMap(i) {
    return function(o) {
      return function() {
        return L.map(i,o);
      }
    }
  }
  """
  :: forall e. String -> MapOptions -> Eff e Map
