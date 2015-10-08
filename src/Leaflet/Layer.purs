{-
  Author    : Tim Dysinger
  Copyright : 2014
  License   : MIT
-}

module Leaflet.Layer where

import Control.Monad.Eff
import Leaflet.LayerGroup
import Leaflet.Marker
import Leaflet.Popup
import Leaflet.TileLayer
import Leaflet.Types

class Layer a where
  toILayer :: a -> ILayer
  addTo :: forall e. a -> Map -> Eff e a

instance layerGroupLayer :: Layer LayerGroup where
  toILayer = layerGroupToILayer
  addTo = addLayerGroupToMap

instance markerLayer :: Layer Marker where
  toILayer = markerToILayer
  addTo = addMarkerToMap

instance popupLayer :: Layer Popup where
  toILayer = popupToILayer
  addTo = addPopupToMap

instance tileLayerLayer :: Layer TileLayer where
  toILayer = tileLayerToILayer
  addTo = addTileLayerToMap
