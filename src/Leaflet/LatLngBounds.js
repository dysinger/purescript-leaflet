/* global exports */
"use strict";

// module Leaflet.LatLngBounds

exports.latLngBounds = function(l0) {
  return function(l1) {
    return L.latLngBounds([l0,l1]);
  }
}

exports.pad = function(n) {
  return function(l) {
    return function() {
      return l.pad(n);
    }
  }
}
