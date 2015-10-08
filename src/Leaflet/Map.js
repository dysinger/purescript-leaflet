/* global exports */
"use strict";

// module Leaflet.Map

exports.createMap = function(i) {
  return function(o) {
    return function() {
      return L.map(i,o);
    }
  }
}
