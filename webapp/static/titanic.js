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
	formatOutput(url, 'class_table');
}

function onSecondClassButtonClicked() {
        var url = getAPIBaseURL() + '/count';
        url = addStatusToURL(url);
	url += '?class=2';
	formatOutput(url, 'class_table');
}

function onThirdClassButtonClicked() {
        var url = getAPIBaseURL() + '/count';
        url = addStatusToURL(url);
        url += '?class=3';
	formatOutput(url, 'class_table');
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
	formatOutput(url, 'sex_box');
}
	
function onManButtonClicked() {
        var url = getAPIBaseURL() + '/count';
        url = addStatusToURL(url);
        url += '?sex=male';
	formatOutput(url, 'sex_box');
}

function onBabyButtonClicked(){
	var url = getAPIBaseURL() + '/count';
	url = addStatusToURL(url);
	url += '?start_age=0/?end_age=5';
	formatOutput(url, 'age_box');
}

function onChildButtonClicked(){
	var url = getAPIBaseURL() + '/count';
	url = addStatusToURL(url);
	url += '?start_age=6/?end_age=14';
	formatOutput(url, 'age_box');
}

function onYouthButtonClicked() {
	var url = getAPIBaseURL() + '/count';
	url = addStatusToURL(url);
	url += '?start_age=15/?end_age=24';
	formatOutput(url, 'age_box');
}

function onAdultButtonClicked() {
	var url = getAPIBaseURL() + '/count';
	url = addStatusToURL(url);
	url += '?start_age=25/?end_age=64';
	formatOutput(url, 'age_box');
}

function onSeniorButtonClicked() {
	var url = getAPIBaseURL() + '/count';
	url = addStatusToURL(url);
        url += '?start_age=65';
	formatOutput(url, 'age_box');
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
