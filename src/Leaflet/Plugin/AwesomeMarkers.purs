{-
  Author    : Tim Dysinger
  Copyright : 2014
  License   : MIT
-}

module Leaflet.Plugin.AwesomeMarkers where

import Control.Monad.Eff
import Leaflet.Types

type IconOptions r = { prefix      :: String,
                       icon        :: String,
                       markerColor :: String | r }

foreign import icon
  """
  function icon(o) {
    return function() {
      return L.AwesomeMarkers.icon(o);
    }
  }
  """
  :: forall r e. IconOptions r -> Eff e Icon
