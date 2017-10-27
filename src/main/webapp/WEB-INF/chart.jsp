<%--
  Created by IntelliJ IDEA.
  User: Christopher V M
  Date: 27-Oct-17
  Time: 9:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Graph</title>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
            google.charts.load('current', {'packages':['corechart']});
            google.charts.setOnLoadCallback(drawChart);

            function crunchifyData() {
                $.ajax({
                    url : 'run.html',
                    dataType : "json",
                    cache : false,
                    contentType : 'application/json; charset=utf-8',
                    type : 'GET',
                    success : function(result) {
                        var one = parseInt(result.measuredData);
                        //alert(one);
                        drawChart(one);
                    }
                });
            }

            function drawChart(count) {
                var xVal = 10;
                var yVal = count;
                var data = google.visualization.arrayToDataTable([
                    ['Time', 'Distance(cm)'],
                    [xVal,  yVal]
                ]);

                var options = {
                    title: 'Measured Distance Plot',
                    curveType: 'function',
                    legend: { position: 'bottom' }
                };

                var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

                chart.draw(data, options);
            }

            setInterval(function(){crunchifyData()}, 1000);
        </script>
    </head>
<body>
<div id="curve_chart" style="width: 900px; height: 500px"></div>
</body>
</html>

