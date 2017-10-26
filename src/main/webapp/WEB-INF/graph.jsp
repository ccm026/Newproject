<%--
  Created by IntelliJ IDEA.
  User: Christopher V M
  Date: 25-Oct-17
  Time: 10:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Graph</title>
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

    <script type="text/javascript"
            src="https://www.gstatic.com/charts/loader.js"></script>

        <script>
            window.onload = function () {

                var dps = []; // dataPoints
                var chart = new CanvasJS.Chart("chartContainer", {
                    title :{
                        text: "Dynamic Data"
                    },
                    axisY: {
                        includeZero: false
                    },
                    data: [{
                        type: "line",
                        dataPoints: dps
                    }]
                });
                function crunchifySparkline() {
                    $.ajax({
                        url : 'run.html',
                        dataType : "json",
                        cache : true,
                        contentType : 'application/json; charset=utf-8',
                        type : 'GET',
                        success : function(result) {
                            var one = result.measuredData;
                            //alert(one);
                            updateChart(one);
                        }
                    });
                }

                var xVal = 0;
                var yVal ;
                var updateInterval = 1000;
                var dataLength = 20; // number of dataPoints visible at any point

                var updateChart = function (count) {
                       // alert(count);
                    for (var j = 0; j < count.length; j++) {
                        //yVal.add(count[j]);
                        dps.push({
                            x: xVal,
                            y: yVal
                        });
                        xVal++;
                    }

                    if (dps.length > dataLength) {
                        dps.shift();
                    }

                    chart.render();
                };

                //updateChart(dataLength);
                setInterval(function(){crunchifySparkline()}, updateInterval);

            }
        </script>
    </head>
<body>
<div id="chartContainer" style="height: 370px; width:100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html></html>