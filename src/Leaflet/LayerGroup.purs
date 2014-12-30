{-
  Author    : Tim Dysinger
  Copyright : 2014
  License   : MIT
-}

module Leaflet.LayerGroup where

import Control.Monad.Eff
import Leaflet.Types

foreign import layerGroupToILayer
  """
  function layerGroupToILayer(l) {
    return l;
  }
  """ :: LayerGroup -> ILayer

foreign import addLayerGroupToMap
  """
  function addLayerGroupToMap(l) {
    return function(m) {
      return function() {
        return l.addTo(m);
      }
    }
  }
  """
  :: forall e. LayerGroup -> Map -> Eff e LayerGroup

instance layerGroupLayer :: Layer LayerGroup where
  toILayer = layerGroupToILayer
  addTo = addLayerGroupToMap

foreign import layerGroup
  """
  function layerGroup(ls) {
    return L.layerGroup(ls);
  }
  """
  :: [ILayer] -> LayerGroup
