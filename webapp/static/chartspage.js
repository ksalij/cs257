/*
 * chartspage.js
 * By Kiri Salij and Lysander Miller
 * Last edited: 23 November 2021
 * Uses AnyChart, a JavaScript charting library 
 * */

anychart.onDocumentReady(function() {	

	//Data taken from the database but hardcoded in for reasons explained in readme.txt

	var sexData = [
		{x: "Number of male survivors", value: 109},
		{x: "Number of deceased men", value: 486},
		{x: "Number of female survivors", value: 233},
		{x: "Number of deceased women", value: 81},
	];
	
	var classData = [
		{x: "Number of first class survivors", value: 136},
	 	{x: "Number of deceased first class", value: 80},
	 	{x: "Number of second class survivors", value: 87},
	 	{x: "Number of deceased second class", value: 97},
		{x: "Number of third class survivors", value: 119},
		{x: "Number of deceased third class", value: 372},
	 	];

	var ageData = [
		{x: "Number of 0-5 year old passengers", value: 44},
                {x: "Number of 6-14 year old passengers", value: 33},
                {x: "Number of 15-24 year old passengers", value: 199},
                {x: "Number of 25-64 year old passengers", value: 425},
                {x: "Number of 65+ year old passengers", value: 11},
                ];

	// create the charts
	var sexChart = anychart.pie();
	var classChart = anychart.pie();
	var ageChart = anychart.pie();
	// set the charts' titles
	sexChart.title("Statistics of Men and Women on the Titanic");
	classChart.title("Statistics of Classes on the Titanic");
	ageChart.title("Statistics of Various Ages on the Titanic");
	// add the data
	sexChart.data(sexData);
	classChart.data(classData);
	ageChart.data(ageData);
	// display the charts in their containers
	sexChart.container('sex_chart_container');
	sexChart.draw();
	classChart.container('class_chart_container');
	classChart.draw();
	ageChart.container('age_chart_container');
	ageChart.draw();
});
