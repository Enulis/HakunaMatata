/* 
Jedna funkcija prima string imena mjesta lokacije (npr. Zagreb, Croatia) i treba vratiti udaljenost između trenutno odabrane
dvorane i tog mjesta (parametra)

Druga funkcija radi pomoću kordinata od browsera istu stvar.
*/


// Element u kojem cemo prikazati udaljenost

// Pocetna funkcija koja trazi od browsera lokaciju
var distanceElement=document.getElementById("distance");
function getDistanceFromBrowser() {
	if (navigator.geolocation) {
		navigator.geolocation.getCurrentPosition(calculateDistance);
	}else{
		distanceElement.innerHTML="Geolocation is not supported by this browser.";
	}
}

// Pocetna funkcija koja trazi podatke custom lokacije od 
function getDistanceFromCustomLocation(fejsLokacija) {
	//TODO
}

// ---------------------------------------------------

// Funkcija za izracun udaljenosti; kao parametar prima koordinate. (zajednicka)
function calculateDistance(position) {
	var eventDestination=getSelectedEventDestination();
	var distance=Math.pow(Math.pow(eventDestination.latitude-position.coords.latitude,2)+Math.pow(eventDestination.longitude-position.coords.longitude,2),1/2);
	distanceElement.innerHTML = "Distance is: " + distance;
}

// Funkcija za dohvat event destination-a (zajednicka)
function getSelectedEventDestination() {
var objEventDest = {latitude: 40, longitude: 40};
	return objEventDest;
}

// ---------------------------------------------------

// https://developers.google.com/maps/documentation/geocoding/#RegionCodes