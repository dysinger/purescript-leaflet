{-
  Author    : Tim Dysinger
  Copyright : 2014
  License   : MIT
-}

module Leaflet.Types where

import Control.Monad.Eff

type URL = String

foreign import data ILayer :: *
foreign import data Icon :: *
foreign import data LatLng :: *
foreign import data LatLngBounds :: *
foreign import data LayerGroup :: *
foreign import data Map :: *
foreign import data Marker :: *
foreign import data Popup :: *
foreign import data TileLayer :: *

type MapOptions = { attributionControl :: Boolean,
                    center :: LatLng,
                    layers :: Array ILayer,
                    maxBounds :: LatLngBounds,
                    zoom :: Int }

type TileLayerOptions r = { subdomains :: Array String | r }

type MarkerOptions r = { icon :: Icon | r }

type PopupOptions r = { | r }
