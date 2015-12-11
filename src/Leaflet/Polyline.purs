{-
  Author    : Ricky Elrod
  Copyright : 2014
  License   : MIT
-}

module Leaflet.Polyline where

import Control.Monad.Eff
import Leaflet.Types

foreign import polylineToILayer :: Polyline -> ILayer

foreign import addPolylineToMap :: forall e. Polyline -> Map -> Eff e Polyline

foreign import polyline :: forall r e. Array LatLng -> PolylineOptions r -> Eff e Polyline

foreign import addLatLng :: forall e. LatLng -> Polyline -> Eff e Polyline

foreign import setLatLngs :: forall e. Array LatLng -> Polyline -> Eff e Polyline
