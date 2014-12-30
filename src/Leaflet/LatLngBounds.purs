{-
  Author    : Tim Dysinger
  Copyright : 2014
  License   : MIT
-}

module Leaflet.LatLngBounds where

import Control.Monad.Eff
import Leaflet.Types

foreign import latLngBounds
  """
  function latLngBounds(l0) {
    return function(l1) {
      return L.latLngBounds([l0,l1]);
    }
  }
  """
  :: LatLng -> LatLng -> LatLngBounds

foreign import pad
  """
  function pad(n) {
    return function(l) {
      return function() {
        return l.pad(n);
      }
    }
  }
  """
  :: forall e. Number -> LatLngBounds -> Eff e LatLngBounds
