// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require_tree .
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets

$(document).ready(function (){

    function initialize() {
      var userCoords = new google.maps.LatLng(35.77657, -78.64543);

      var mapOptions = {
      center: { lat: 35.7855, lng: -78.64543 },
      zoom: 12,
      scrollwheel: false
    };

      var map = new google.maps.Map(document.getElementById('map-canvas'),
                mapOptions);  

      var image = "#"
      var marker = new google.maps.Marker({
      position: userCoords,
      map: map,
      //icon: image,
      title: 'User'
    });

      marker.setMap(map);            
    };
      
    google.maps.event.addDomListener(window, 'load', initialize);

});
