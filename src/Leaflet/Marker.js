/* global exports */
"use strict";

// module Leaflet.Marker

exports.markerToILayer = function(l) {
  return l;
}

exports.addMarkerToMap = function(l) {
  return function(m) {
    return function() {
      return l.addTo(m);
    }
  }
}

exports.marker = function(o) {
  return function(l) {
    return L.marker(l,o);
  }
}

exports.bindPopup = function(s) {
  return function(o) {
    return function(m) {
      return function() {
        return m.bindPopup(s,o);
      }
    }
  }
}
