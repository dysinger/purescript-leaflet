/* global exports */
"use strict";

// module Leaflet.Polyline

exports.latLng = function(n0) {
  return function(n1) {
    return L.latLng([n0,n1]);
  }
}

exports.polylineToILayer = function(l) {
  return l;
}

exports.addPolylineToMap = function(p) {
  return function(m) {
    return function() {
      return p.addTo(m);
    }
  }
}

exports.polyline = function(l) {
  return function(o) {
    return function() {
      return L.polyline(l,o);
    }
  }
}

exports.addLatLng = function(l) {
  return function(p) {
    return function() {
      return p.addLatLng(l);
    }
  }
}

exports.setLatLngs = function(l) {
  return function(p) {
    return function() {
      return p.setLatLngs(l);
    }
  }
}
