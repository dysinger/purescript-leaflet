{-
  Author    : Tim Dysinger
  Copyright : 2014
  License   : MIT
-}

module Leaflet.LatLngBounds where

import Control.Monad.Eff
import Leaflet.Types

foreign import latLngBounds :: LatLng -> LatLng -> LatLngBounds

foreign import pad :: forall e. Number -> LatLngBounds -> Eff e LatLngBounds
