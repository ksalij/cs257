var maleSurvivors;
var deadMales;
var femaleSurvivors = [];
var deadFemales = [];

function initialize() {
	maleSurvivors = 
}

anychart.onDocumentReady(function() {

	var sexData = [
		{x: "Number of male survivors", value: getInfo(getAPIBaseURL() + '/count/alive/?sex=male')},
		{x: "Number of deceased men", value: getInfo(getAPIBaseURL() + '/count/dead/?sex=male')},
		{x: "Number of female survivors", value: getInfo(getAPIBaseURL() + '/count/alive/?sex=female')},
		{x: "Number of deceased women", value: getInfo(getAPIBaseURL() + '/count/dead/?sex=female')},
	];

	console.log(getInfo(getAPIBaseURL() + '/count/alive/?sex=male'));
/*
	var classData = [
		{x: "Number of male survivors", value: 223553265},
		{x: "Number of deceased men", value: 38929319},
		{x: "Number of female survivors", value: 2932248},
		{x: "Number of deceased women", value: 14674252},
	];
*/
	// create the chart
	var sexChart = anychart.pie();

	// set the chart title
	sexChart.title("Statistics of Men and Women on the Titanic");

	// add the data
	sexChart.data(sexData);

	// display the chart in the container
	sexChart.container('sex_chart_container');
	sexChart.draw();
});

function getAPIBaseURL() {
	var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port + '/api';
        return baseURL;
}

function getInfo(url) {
	fetch(url, {method: 'get'})
	.then((response) => response.json())
        .then(function(response) {
		console.log(typeOf(response));
		return response;
	})
	.catch(function(error) {
		console.log(error);
        });
}
