/*
 * titanic.js
 * Kiri Salij and Lysander Miller, 9 November 2021
 */

window.onload = initialize;

function initialize() {
    let getInfoButton = document.getElementById('get_info_button');
    getInfoButton.onclick = onButtonClicked;
}

// Returns the base URL of the API, onto which endpoint components can be appended.
function getAPIBaseURL() {
	var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port + '/api';
	return baseURL;
}

function onButtonClicked() {
	var url = getAPIBaseURL() + '/all';
	var dataBoxElement = document.getElementById('data_table');
	fetch(url, {method: 'get'})
	.then((response) => response.json())
	.then(function(everythingList) {
		// Build the table body.
		var tableBody = '';
		tableBody += '<tr><th>ID</th><th>Survived</th><th>Class</th><th>Name</th><th>Sex</th><th>Age</th><th>Sibsp</th><th>Parch</th><th>Ticket</th><th>Fare</th><th>Cabin</th><th>Embarked</th>';
		for (var k = 0; k < everythingList.length; k++) {
			tableBody += '<tr>';
			tableBody += '<td>' + everythingList[k]['id'] + '</td>' + '<td>' + everythingList[k]['survived'] + '</td>' + '<td>' + everythingList[k]['class'] + '</td>' + '<td>' + everythingList[k]['name'] + '</td>' + '<td>' + everythingList[k]['sex'] + '</td>'+ '<td>' + everythingList[k]['age'] + '</td>' + '<td>' + everythingList[k]['sibsp'] + '</td>'+ '<td>' + everythingList[k]['parch'] + '</td>' + '<td>' + everythingList[k]['ticket'] + '</td>' + '<td>' + everythingList[k]['fare'] + '</td>' + '<td>' + everythingList[k]['cabin'] + '</td>' + '<td>' + everythingList[k]['embarked'] + '</td>';
			tableBody += '</tr>';
		}
		//Put the table body we just built inside the table that's already on the page.
		if (dataBoxElement) {
		dataBoxElement.innerHTML = tableBody;
		}
	})
	// Log the error if anything went wrong during the fetch.
	.catch(function(error) {
		console.log(error);
	 });
}

