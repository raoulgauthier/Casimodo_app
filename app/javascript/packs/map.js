// app/javascript/packs/map.js

import { autocomplete } from './autocomplete';
import GMaps from 'gmaps/gmaps.js';

const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
  const markers = JSON.parse(mapElement.dataset.markers);
  map.addMarkers(markers);
  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(14);
  } else {
    map.fitLatLngBounds(markers);
  }
    var i = 0; var lat = 0; var lng = 0;
    markers.forEach(function(marker) {
      console.log(i, '/', markers.length, marker.lat, marker.lng);
      if (i === 0) { lat = marker.lat; lng = marker.lng;
      } else {
        if(mapElement.dataset.technician === "true"){
        map.drawRoute({
          origin: [lat, lng],
          destination: [marker.lat,marker.lng],
          travelMode: 'driving',
          strokeColor: '#131540',
          strokeOpacity: 0.6,
          strokeWeight: 6
        });

       lat = marker.lat; lng = marker.lng;
       }
      }
      i += 1;
    });
}

autocomplete();

function testNum(a) {
  if (a > 0) {
    return "positive";
  } else {
    return "NOT positive";
  }
}
