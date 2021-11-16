/*
 * titanic.js
 * Kiri Salij and Lysander Miller, 9 November 2021
 */


deceased = false;
alive = false;
all = true;
window.onload = initialize;
var deceasedButton, aliveButton, allButton, firstClassButton, secondClassButton, thirdClassButton, womanButton, manButton, babyButton, childButton, youthButton, adultButton, seniorButton;

function initialize() {
        deceasedButton = document.getElementById('deceased');
        deceasedButton.onclick = onDeceasedButtonClicked;
        aliveButton = document.getElementById('survivors');
        aliveButton.onclick = onAliveButtonClicked;
        allButton = document.getElementById('all');
        allButton.onclick = onAllButtonClicked;
        firstClassButton = document.getElementById('firstClass');
        firstClassButton.onclick = onFirstClassButtonClicked;
       	secondClassButton = document.getElementById('secondClass');
        secondClassButton.onclick = onSecondClassButtonClicked;
        thirdClassButton = document.getElementById('thirdClass');
        thirdClassButton.onclick = onThirdClassButtonClicked;
        womanButton = document.getElementById('women');
        womanButton.onclick = onWomanButtonClicked;
        manButton = document.getElementById('men');
        manButton.onclick = onManButtonClicked;
	babyButton = document.getElementById('0-5');
	babyButton.onclick = onBabyButtonClicked;
	childButton = document.getElementById('6-14');
	childButton.onclick = onChildButtonClicked;
	youthButton = document.getElementById('15-24');
	youthButton.onclick = onYouthButtonClicked;
	adultButton = document.getElementById('25-64');
	adultButton.onclick = onAdultButtonClicked;
	seniorButton = document.getElementById('65+');
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
	updateSelection(deceasedButton, [aliveButton, allButton]);
}

function onAliveButtonClicked() {
        alive = true;
        all = false;
        deceased = false;
	updateSelection(aliveButton, [deceasedButton, allButton]);
}

function onAllButtonClicked() {
        alive = false;
        deceased = false;
        all = true;
	updateSelection(allButton, [aliveButton, deceasedButton]);
}

function onFirstClassButtonClicked() {
        var url = getAPIBaseURL() + '/count';
        url = addStatusToURL(url);
        url += '?class=1';
        var outputString = '<p>' + getCurrentStatus() + 'in first class: ';
        formatOutput(url, 'class_table', outputString);
	updateSelection(firstClassButton, [secondClassButton, thirdClassButton]);
}

function onSecondClassButtonClicked() {
        var url = getAPIBaseURL() + '/count';
        url = addStatusToURL(url);
        url += '?class=2';
        var outputString = '<p>' + getCurrentStatus() + 'in second class: ';
        formatOutput(url, 'class_table', outputString);
	updateSelection(secondClassButton, [firstClassButton, thirdClassButton]);
}

function onThirdClassButtonClicked() {
        var url = getAPIBaseURL() + '/count';
        url = addStatusToURL(url);
        url += '?class=3';
        var outputString = '<p>' + getCurrentStatus() + 'in third class: ';
        formatOutput(url, 'class_table', outputString);
	updateSelection(thirdClassButton, [secondClassButton, firstClassButton]);
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
        var outputString = '<p>' + getCurrentStatus() + 'who were women: ';
        formatOutput(url, 'sex_box', outputString);
	updateSelection(womanButton, [manButton]);
}

function onManButtonClicked() {
        var url = getAPIBaseURL() + '/count';
        url = addStatusToURL(url);
        url += '?sex=male';
        var outputString = '<p>' + getCurrentStatus() + 'who were men: ';
        formatOutput(url, 'sex_box', outputString);
	updateSelection(manButton, [womanButton]);
}

function onBabyButtonClicked(){
        var url = getAPIBaseURL() + '/count';
        url = addStatusToURL(url);
        url += '?start_age=0&end_age=5';
        var outputString = '<p>' + getCurrentStatus() + 'in between the ages of 0-5: ';
        formatOutput(url, 'age_box', outputString);
	updateSelection(babyButton, [childButton, youthButton, adultButton, seniorButton]);
}

function onChildButtonClicked(){
        var url = getAPIBaseURL() + '/count';
        url = addStatusToURL(url);
        url += '?start_age=6&end_age=14';
        var outputString = '<p>' + getCurrentStatus() + 'in between the ages of 6-14: ';
        formatOutput(url, 'age_box', outputString);
	updateSelection(childButton, [babyButton, youthButton, adultButton, seniorButton]);
}

function onYouthButtonClicked() {
        var url = getAPIBaseURL() + '/count';
        url = addStatusToURL(url);
        url += '?start_age=15&end_age=24';
        var outputString = '<p>' + getCurrentStatus() + 'in between the ages of 15-24: ';
        formatOutput(url, 'age_box', outputString);
	updateSelection(youthButton, [childButton, babyButton, adultButton, seniorButton]);
}

function onAdultButtonClicked() {
        var url = getAPIBaseURL() + '/count';
        url = addStatusToURL(url);
        url += '?start_age=25&end_age=64';
        var outputString = '<p>' + getCurrentStatus() + 'in between the ages of 25-64: ';
        formatOutput(url, 'age_box', outputString);
	updateSelection(adultButton, [childButton, youthButton, babyButton, seniorButton]);
}

function onSeniorButtonClicked() {
        var url = getAPIBaseURL() + '/count';
        url = addStatusToURL(url);
        url += '?start_age=65';
        var outputString = '<p>' + getCurrentStatus() + 'over the age of 65: ';
        formatOutput(url, 'age_box', outputString);
	updateSelection(seniorButton, [childButton, youthButton, adultButton, babyButton]);
}

function getCurrentStatus(){
        if (deceased == true) {
                return "Number of passengers who did not survive ";
        }
        else if (alive == true) {
                return "Number of passengers who survived ";
        }
        else if (all == true) {
                return "Count of all of the passengers ";
        }
}

function formatOutput(url, resultsBox, outputStringPortion) {
        fetch(url, {method: 'get'})
        .then((response) => response.json())
        .then(function(list) {
                var contents = '';
                contents += outputStringPortion + list + '</p>';
                var resultsElement = document.getElementById(resultsBox);
                if (resultsElement) {
                        resultsElement.innerHTML = contents;
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
