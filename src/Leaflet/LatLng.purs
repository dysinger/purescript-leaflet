{-
  Author    : Tim Dysinger
  Copyright : 2014
  License   : MIT
-}

module Leaflet.LatLng where

import Leaflet.Types

foreign import latLng :: Number -> Number -> LatLng
