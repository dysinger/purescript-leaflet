/* global exports */
"use strict";

// module Leaflet.TileLayer

exports.tileLayerToILayer = function(l) {
  return l;
}

exports.addTileLayerToMap = function(l) {
  return function(m) {
    return function() {
      return l.addTo(m);
    }
  }
}

exports.tileLayer = function(u) {
  return function(o) {
    return function() {
      return L.tileLayer(u,o);
    }
  }
}
