{-
  Author    : Tim Dysinger
  Copyright : 2014
  License   : MIT
-}

module Leaflet.Marker where

import Control.Monad.Eff
import Leaflet.Types

foreign import markerToILayer :: Marker -> ILayer

foreign import addMarkerToMap :: forall e. Marker -> Map -> Eff e Marker

foreign import marker :: forall r. MarkerOptions r -> LatLng -> Marker

foreign import bindPopup :: forall r e. String -> PopupOptions r -> Marker -> Eff e Marker
