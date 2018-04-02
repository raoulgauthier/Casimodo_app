//app/javascript/components/autocomplete.js

function autocomplete() {
  document.addEventListener("turbolinks:load", function() {
    var my_address = document.getElementById('workorder_address');

    if (my_address) {
      var autocomplete = new google.maps.places.Autocomplete(my_address, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(my_address, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
