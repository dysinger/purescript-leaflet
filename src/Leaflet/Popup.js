/* global exports */
"use strict";

// module Leaflet.Popup

exports.popupToILayer = function(l) {
  return l;
}

exports.addPopupToMap = function(l) {
  return function(m) {
    return function() {
      return l.addTo(m);
    }
  }
}
