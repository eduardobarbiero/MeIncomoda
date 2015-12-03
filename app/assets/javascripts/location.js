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
        }
    }
}
$(document).ready(ready);
$(document).on("page:load", ready);
