module Main where

import Prelude (bind, negate)
import Control.Monad.Eff (Eff)

import Leaflet.Map (createMap)
import Leaflet.Types
  ( URL
  , LatLng
  , LatLngBounds
  , MapOptions
  , TileLayer
  , TileLayerOptions)
import Leaflet.LatLng (latLng)
import Leaflet.LatLngBounds (latLngBounds)
import Leaflet.TileLayer (tileLayer)
import Leaflet.Layer (addTo)

defCenter :: LatLng
defCenter = latLng (-0.09349) (-78.43276)

minBound :: LatLng
minBound = latLng (-100.0) (-100.0)

maxBound :: LatLng
maxBound = latLng 100000.0 10000000.0

defMaxBounds :: LatLngBounds
defMaxBounds = latLngBounds minBound maxBound

defMapOps :: MapOptions
defMapOps =
  {
    attributionControl : true,
    center : defCenter,
    layers : [],
    maxBounds : defMaxBounds,
    zoom : 16
  }

osmURL :: URL
osmURL = "http://{s}.tile.osm.org/{z}/{x}/{y}.png"

osmSubdomains :: Array String
osmSubdomains = [ "a", "b", "c" ]

defTileLayerOptions :: TileLayerOptions (attribution :: String)
defTileLayerOptions =
  { subdomains : osmSubdomains
  , attribution: "&copy; <a href=\"http://osm.org/copyright\">OpenStreetMap</a> contributors"
  }

main :: forall e. Eff e TileLayer
main = do
  defTileLayer <- tileLayer osmURL defTileLayerOptions
  myMap <- createMap "mapid" defMapOps
  addTo defTileLayer myMap

