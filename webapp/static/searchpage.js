/*searchpage.js by Kiri Salij and Lysander Miller */

window.onload = initialize;

function initialize() {
	let enterButton = document.getElementById('enter');
        enterButton.onclick = onEnterButtonClicked;
}

// Returns the base URL of the API, onto which endpoint components can be appended.
function getAPIBaseURL() {
	var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port + '/api';
	return baseURL;
}

function onEnterButtonClicked() {
	var url = getAPIBaseURL() + '/all/?search=';
        var searchWordElement = document.getElementById('search').value;
	url += searchWordElement;
	fetch(url, {method: 'get'})
	.then((response) => response.json())
	.then(function(everythingList) {
		var tableBody = '';
		tableBody += '<tr><th>ID</th><th>Survived</th><th>Class</th><th>Name</th><th>Sex</th><th>Age</th><th>Sibsp</th><th>Parch</th><th>Ticket</th><th>Fare</th><th>Cabin</th><th>Embarked</th>';
		for (var k = 0; k < everythingList.length; k++) {
			tableBody += '<tr>';
			tableBody += '<td>' + everythingList[k]['id'] + '</td>' + '<td>' + everythingList[k]['survived'] + '</td>' + '<td>' + everythingList[k]['class'] + '</td>' + '<td>' + everythingList[k]['name'] + '</td>' + '<td>' + everythingList[k]['sex'] + '</td>'+ '<td>' + everythingList[k]['age'] + '</td>' + '<td>' + everythingList[k]['sibsp'] + '</td>'+ '<td>' + everythingList[k]['parch'] + '</td>' + '<td>' + everythingList[k]['ticket'] + '</td>' + '<td>' + everythingList[k]['fare'] + '</td>' + '<td>' + everythingList[k]['cabin'] + '</td>' + '<td>' + everythingList[k]['embarked'] + '</td>';
			 tableBody += '</tr>';
		}
		var searchBoxElement = document.getElementById('search_box');
		if (searchBoxElement) {
			searchBoxElement.innerHTML = tableBody;
		}
	})
		.catch(function(error) {
			console.log(error);
	});
}
