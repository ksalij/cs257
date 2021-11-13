/*searchpage.js by Kiri Salij and Lysander Miller */

window.onload = initialize;

function initialize() {
	let nameSortingButton = document.getElementById('name');
	nameSortingButton.onclick = onNameSortingButtonClicked;
}

// Returns the base URL of the API, onto which endpoint components can be appended.
function getAPIBaseURL() {
	var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port + '/api';
	return baseURL;
}

function onNameSortingButtonClicked() {
	
}
