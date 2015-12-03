/**
 * Created by EDUARDO on 03/12/2015.
 */
function getLocation()
{
    if (navigator.geolocation)
    {
        navigator.geolocation.getCurrentPosition(showPosition);
    }
    else{
        x.innerHTML="Geolocation is not supported by this browser.";
    }
}
function showPosition(position)
{
    genericFunctions.setLatitude(position.coords.latitude);
    genericFunctions.setLongitude(longitude = position.coords.longitude);
}

getLocation()