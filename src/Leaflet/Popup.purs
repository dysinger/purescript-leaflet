{-
  Author    : Tim Dysinger
  Copyright : 2014
  License   : MIT
-}

module Leaflet.Popup where

import Control.Monad.Eff
import Leaflet.Types

foreign import popupToILayer :: Popup -> ILayer

foreign import addPopupToMap :: forall e. Popup -> Map -> Eff e Popup
