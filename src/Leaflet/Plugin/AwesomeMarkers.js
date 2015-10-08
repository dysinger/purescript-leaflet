/* global exports */
"use strict";

// module Leaflet.Plugin.AwesomeMarkers

exports.icon = function(o) {
  return function() {
    return L.AwesomeMarkers.icon(o);
  }
}
