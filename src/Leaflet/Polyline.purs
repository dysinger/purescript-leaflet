{-
  Author    : Ricky Elrod
  Copyright : 2014
  License   : MIT
-}

module Leaflet.Polyline where

import Control.Monad.Eff
import Leaflet.Types

foreign import polylineToILayer
  """
  function polylineToILayer(l) {
    return l;
  }
  """ :: Polyline -> ILayer

foreign import addPolylineToMap
  """
  function addPolylineToMap(p) {
    return function(m) {
      return function() {
        return p.addTo(m);
      }
    }
  }
  """
  :: forall e. Polyline -> Map -> Eff e Polyline

instance polylineLayer :: Layer Polyline where
  toILayer = polylineToILayer
  addTo = addPolylineToMap

foreign import polyline
  """
  function polyline(latlngs) {
    return function(options) {
      return L.polyline(latlngs, options);
    }
  }
  """
  :: [LatLng] -> PolylineOptions -> Polyline

foreign import addLatLng
  """
  function addLatLng(l) {
    return function(p) {
      return function() {
        return p.addLatLng(l);
      }
    }
  }
  """
  :: forall e. LatLng -> Polyline -> Eff e Polyline

foreign import setLatLngs
  """
  function setLatLngs(l) {
    return function(p) {
      return function() {
        return p.setLatLngs(l);
      }
    }
  }
  """
  :: forall e. [LatLng] -> Polyline -> Eff e Polyline
