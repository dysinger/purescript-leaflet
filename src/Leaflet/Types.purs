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
foreign import data Polyline :: *

class Layer a where
  toILayer :: a -> ILayer
  addTo :: forall e. a -> Map -> Eff e a

type MapOptions = { attributionControl :: Boolean,
                    center :: LatLng,
                    layers :: [ILayer],
                    maxBounds :: LatLngBounds,
                    zoom :: Number }

type TileLayerOptions r = { subdomains :: [String] | r }

type MarkerOptions r = { icon :: Icon | r }

type PopupOptions r = { | r }

type PathOptions = { stroke :: Boolean,
                     color :: String,
                     weight :: Number,
                     opacity :: Number,
                     fill :: Boolean,
                     fillColor :: String,
                     fillOpacity :: Number,
                     dashArray :: String,
                     lineCap :: String,
                     lineJoin :: String,
                     clickable :: Boolean,
                     pointerEvents :: String,
                     className :: String }

-- All PathOptions plus a few more options.
type PolylineOptions = { stroke :: Boolean,
                         color :: String,
                         weight :: Number,
                         opacity :: Number,
                         fill :: Boolean,
                         fillColor :: String,
                         fillOpacity :: Number,
                         dashArray :: String,
                         lineCap :: String,
                         lineJoin :: String,
                         clickable :: Boolean,
                         pointerEvents :: String,
                         className :: String,
                         smoothFactor :: Number,
                         noClip :: Boolean }
