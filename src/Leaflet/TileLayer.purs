{-
  Author    : Tim Dysinger
  Copyright : 2014
  License   : MIT
-}

module Leaflet.TileLayer where

import Control.Monad.Eff
import Leaflet.Types

foreign import tileLayerToILayer :: TileLayer -> ILayer

foreign import addTileLayerToMap :: forall e. TileLayer -> Map -> Eff e TileLayer

foreign import tileLayer :: forall r e. URL -> TileLayerOptions r -> Eff e TileLayer
