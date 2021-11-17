/*searchpage.js by Kiri Salij and Lysander Miller */

window.onload = initialize;
var nameSortingButton, ageSortingButton, passengerIDSortingButton, classSortingButton;

function initialize() {
	nameSortingButton = document.getElementById('name');
	nameSortingButton.onclick = onNameSortingButtonClicked;
	ageSortingButton = document.getElementById('age');
	ageSortingButton.onclick = onAgeSortingButtonClicked;
	passengerIDSortingButton = document.getElementById('passenger');
	passengerIDSortingButton.onclick = onPassengerIDSortingButtonClicked;
	classSortingButton = document.getElementById('class');
	classSortingButton.onclick = onClassSortingButtonClicked;

}

// Returns the base URL of the API, onto which endpoint components can be appended.
function getAPIBaseURL() {
	var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port + '/api';
	return baseURL;
}

function onNameSortingButtonClicked() {
	var url = getAPIBaseURL() + '/all/?sort=name';
	formattingOutput(url);
	updateSelection(nameSortingButton, [ageSortingButton, passengerIDSortingButton, classSortingButton]);
}

function onAgeSortingButtonClicked() {
	var url = getAPIBaseURL() + '/all/?sort=age';
        formattingOutput(url);
	updateSelection(ageSortingButton, [nameSortingButton, passengerIDSortingButton, classSortingButton]);
}

function onPassengerIDSortingButtonClicked(){
	var url = getAPIBaseURL() + '/all/';
        formattingOutput(url);
	updateSelection(passengerIDSortingButton, [ageSortingButton, nameSortingButton, classSortingButton]);
}

function onClassSortingButtonClicked() {
	var url = getAPIBaseURL() + '/all/?sort=class';
        formattingOutput(url);
	updateSelection(classSortingButton, [ageSortingButton, passengerIDSortingButton, nameSortingButton]);
}


function formattingOutput(url) {
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
		var resultsTableElement = document.getElementById('results_table');
		if (resultsTableElement) {
			resultsTableElement.innerHTML = tableBody;
		}
	})
		.catch(function(error) {
			console.log(error);
	});
}


function updateSelection(selectedButton, otherButtonsList) {
	for (var i = 0; i < otherButtonsList.length; i++) {
		if (otherButtonsList[i].classList.contains('selected')){
			otherButtonsList[i].classList.remove('selected');
		}
	}
	selectedButton.classList.add('selected');
}
