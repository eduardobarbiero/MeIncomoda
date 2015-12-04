/**
 * Created by EDUARDO on 03/12/2015.
 */
var latitude = 0;
var longitude = 0;
var ready = function(){
    genericFunctions = {
        setLatitude: function (lat) {
            this.latitude = lat;
        },
        setLongitude: function (long) {
            this.longitude = long;
        },
        getLatitude: function(){
            return this.latitude;
        },
        getLongitude: function(){
            return this.longitude;
        },

        getAddress: function () {
          var latlng = new google.maps.LatLng(latitude, longitude);
          var geocoder = geocoder = new google.maps.Geocoder();
          geocoder.geocode({ 'latLng': latlng }, function (results, status) {
              alert(results[1].formatted_address);
              //if (status == google.maps.GeocoderStatus.OK) {
                  if (results[1]) {
                      //alert("Location: " + results[1].formatted_address);
                  }
              //}
          });
        }
    }
}
function adicionaEstrelas (quantidade, id){
    estrelas = '';
    for(var i = 0; i < quantidade; i++)
        estrelas += '<span class="fa fa-star"></span>';
    for(var i = quantidade; i < 5; i++)
        estrelas += '<span class="fa fa-star-o"></span>';
    $(".cardRating[data-id='" + id + "']").html(estrelas);
}
$(document).ready(ready);
$(document).on("page:load", ready);
