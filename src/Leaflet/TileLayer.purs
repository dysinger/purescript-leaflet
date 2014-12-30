{-
  Author    : Tim Dysinger
  Copyright : 2014
  License   : MIT
-}

module Leaflet.TileLayer where

import Control.Monad.Eff
import Leaflet.Types

foreign import tileLayerToILayer
  "function tileLayerToILayer(l) { return l; }"
  :: TileLayer -> ILayer

foreign import addTileLayerToMap
  """
  function addTileLayerToMap(l) {
    return function(m) {
      return function() {
        return l.addTo(m);
      }
    }
  }
  """
  :: forall e. TileLayer -> Map -> Eff e TileLayer

instance tileLayerLayer :: Layer TileLayer where
  toILayer = tileLayerToILayer
  addTo = addTileLayerToMap

foreign import tileLayer
  """
  function tileLayer(u) {
    return function(o) {
      return function() {
        return L.tileLayer(u,o);
      }
    }
  }
  """
  :: forall r e. URL -> TileLayerOptions r -> Eff e TileLayer
