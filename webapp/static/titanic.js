/*
 * titanic.js
 * Kiri Salij and Lysander Miller, 9 November 2021
 */


deceased = false;
alive = false;
all = true;
window.onload = initialize;

function initialize() {
        let deceasedButton = document.getElementById('deceased');
        deceasedButton.onclick = onDeceasedButtonClicked;
        let aliveButton = document.getElementById('survivors');
        aliveButton.onclick = onAliveButtonClicked;
        let allButton = document.getElementById('all');
        allButton.onclick = onAllButtonClicked;
        let firstClassButton = document.getElementById('firstClass');
        firstClassButton.onclick = onFirstClassButtonClicked;
        let secondClassButton = document.getElementById('secondClass');
        secondClassButton.onclick = onSecondClassButtonClicked;
        let thirdClassButton = document.getElementById('thirdClass');
        thirdClassButton.onclick = onThirdClassButtonClicked;
        let womanButton = document.getElementById('women');
        womanButton.onclick = onWomanButtonClicked;
        let manButton = document.getElementById('men');
        manButton.onclick = onManButtonClicked;
	let babyButton = document.getElementById('0-5');
	babyButton.onclick = onBabyButtonClicked;
	let childButton = document.getElementById('6-14');
	childButton.onclick = onChildButtonClicked;
	let youthButton = document.getElementById('15-24');
	youthButton.onclick = onYouthButtonClicked;
	let adultButton = document.getElementById('25-64');
	adultButton.onclick = onAdultButtonClicked;
	let seniorButton = document.getElementById('65+');
	seniorButton.onclick = onSeniorButtonClicked;
}

// Returns the base URL of the API, onto which endpoint components can be appended.
function getAPIBaseURL() {
        var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port + '/api';
        return baseURL;
}

function onDeceasedButtonClicked() {
        alive = false;
        all = false;
        deceased = true;
}

function onAliveButtonClicked() {
        alive = true;
        all = false;
        deceased = false;
}

function onAllButtonClicked() {
        alive = false;
        deceased = false;
        all = true;
}

function onFirstClassButtonClicked() {
        var url = getAPIBaseURL() + '/count';
        url = addStatusToURL(url);
        url += '?class=1';
        fetch(url, {method: 'get'})
        .then((response) => response.json())
        .then(function(firstClassList) {
                var tableBody = '';
                tableBody += '<p>' + firstClassList + '</p>';
                var classTableElement = document.getElementById('class_table');
                if (classTableElement) {
                classTableElement.innerHTML = tableBody;
                }
        })
        .catch(function(error) {
                console.log(error);
        });
}

function onSecondClassButtonClicked() {
        var url = getAPIBaseURL() + '/count';
        url = addStatusToURL(url);
        url += '?class=2';
        fetch(url, {method: 'get'})
        .then((response) => response.json())
        .then(function(secondClassList) {
                var tableBody = '';
                tableBody += '<p>' + secondClassList + '</p>';
                var classTableElement = document.getElementById('class_table');
                if (classTableElement) {
                        classTableElement.innerHTML = tableBody;
                }
        })
        .catch(function(error) {
                console.log(error);
        });
}

function onThirdClassButtonClicked() {
        var url = getAPIBaseURL() + '/count';
        url = addStatusToURL(url);
        url += '?class=3';
        fetch(url, {method: 'get'})
        .then((response) => response.json())
        .then(function(thirdClassList) {
                var tableBody = '';
                tableBody += '<p>' + thirdClassList + '</p>';
                var classTableElement = document.getElementById('class_table');
                if (classTableElement) {
                        classTableElement.innerHTML = tableBody;
                }
        })
        .catch(function(error) {
                console.log(error);
        });
}

function addStatusToURL(url) {
        if (alive==true){
                url += '/alive/';
        }
        else if (all == true){
                url += '/all/';
        }
        else if (deceased == true){
                url += '/dead/';
        }
        return url;
}
	
function onWomanButtonClicked() {
        var url = getAPIBaseURL() + '/count';
        url = addStatusToURL(url);
        url += '?sex=female';
        fetch(url, {method: 'get'})
        .then((response) => response.json())
        .then(function(womanList) {
                var contents = '';
                contents += '<p>' + womanList + '</p>';
                var sexBoxElement = document.getElementById('sex_box');
                if (sexBoxElement) {
                        sexBoxElement.innerHTML = contents;
                }
        })
        .catch(function(error) {
                console.log(error);
        });
}
	
function onManButtonClicked() {
        var url = getAPIBaseURL() + '/count';
        url = addStatusToURL(url);
        url += '?sex=male';
	formatOutput(url, 'sex_box');
	/*
        fetch(url, {method: 'get'})
        .then((response) => response.json())
        .then(function(manList) {
                var contents = '';
                contents += '<p>' + manList + '</p>';
                var sexBoxElement = document.getElementById('sex_box');
                if (sexBoxElement) {
                        sexBoxElement.innerHTML = contents;
                }
        })
        .catch(function(error) {
                console.log(error);
        });
	*/
}

function onBabyButtonClicked(){
	var url = getAPIBaseURL() + '/count';
	url = addStatusToURL(url);
	url += '?start_age=0?end_age=5';
	
}

function formatOutput(url, resultsBox) {
	fetch(url, {method: 'get'})
	.then((response) => response.json())
	.then(function(list) {
		var contents = '';
		contents += '<p>' + list + '</p>';
		var resultsElement = document.getElementById(resultsBox);
		if (resultsElement) {
			resultsElement.innerHTML = contents;
		}
	})
	.catch(function(error) {
		console.log(error);
	});

}
