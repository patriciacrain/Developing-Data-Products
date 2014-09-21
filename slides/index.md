---
title       : The Survival of Passengers on the Titanic
subtitle    : 
author      : Patricia Crain
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow     # 
widgets     : [bootstrap, shiny, interactive] 
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## The Sinking of the Titanic

<img height=200 src=titanic.png>

It was one of the biggest tragedies of the Western world, causing worldwide shock at the loss of life and outrage at the negligence that had contributed to the disaster. On April 15, 1912, three hours after striking an iceberg, the RMS Titanic sank into the frigid cold of the north Atlantic. Of the 2201 passengers aboard the Titanic when it embarked from Southampton, England four days earlier, only 711 (32%) survived. 

--- .class #id 

## Report on the Loss of the Titanic
Data on the loss of life was collected by the British Board of Trade and published in a report on July 30, 1912. The variables recorded were Class, Sex, Age and Survived (yes/no). 


```
## 
## 
## Class   Sex      Age     Survived    Freq
## ------  -------  ------  ---------  -----
## 1st     Male     Child   No             0
## 2nd     Male     Child   No             0
## 3rd     Male     Child   No            35
## Crew    Male     Child   No             0
## 1st     Female   Child   No             0
## 2nd     Female   Child   No             0
## 3rd     Female   Child   No            17
## Crew    Female   Child   No             0
## 1st     Male     Adult   No           118
```

--- .class #id 

## Using GoogleVis to Visualize the Data
This interactive plot allows the user to explore the survival rates by Class of passenger, revealing a higher proportion of first and second class passengers were saved when compared to the number of third class and crew who were saved. 

<!-- ColumnChart generated in R 3.1.1 by googleVis 0.5.5 package -->
<!-- Sun Sep 21 11:25:16 2014 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataColumnChartID53d6feaab0d () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "1st",
122,
203 
],
[
 "2nd",
167,
118 
],
[
 "3rd",
528,
178 
],
[
 "Crew",
673,
212 
] 
];
data.addColumn('string','Class');
data.addColumn('number','No');
data.addColumn('number','Yes');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartColumnChartID53d6feaab0d() {
var data = gvisDataColumnChartID53d6feaab0d();
var options = {};
options["allowHtml"] = true;
options["width"] =    800;
options["height"] =    250;
options["isStacked"] = true;
options["title"] = "Survival of Passengers on the Titanic by Class";
options["hAxes"] = [{title:'Class of Passenger'}];

    var chart = new google.visualization.ColumnChart(
    document.getElementById('ColumnChartID53d6feaab0d')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "corechart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartColumnChartID53d6feaab0d);
})();
function displayChartColumnChartID53d6feaab0d() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartColumnChartID53d6feaab0d"></script>
 
<!-- divChart -->
  
<div id="ColumnChartID53d6feaab0d" 
  style="width: 800; height: 250;">
</div>

--- .class #id 

## More Insight Into the Data
What about the other variables in the data? To acheive better insight into the survival rate of passengers, it would be nice to see the impact of Sex and Age on survival. 

To this end, we created 2 filters which allow the user to select each Sex (male/female) and/or each Age (adult/child) and to see this subset of data in the interactive plot. 

--- .class #id 

## The Final App
The completed app has two dropdowns in a side panel. The main panel contains the interactive plot which changes as the dropdowns are changed.

<img height=200 src=screenshot-app.png>

To use the app click [here](https://patriciacrain.shinyapps.io/titanicapp/).

For more info about the sinking of the Titanic click [here](http://www.titanicinquiry.org/BOTInq/BOTReport/botRep01.php).

