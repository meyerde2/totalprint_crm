<!doctype html>
<html>
	<head>
		<title>Pie Chart</title>
	<script src="/crm/resources/jquery/Chart.js"></script>
	</head>
	<body>
<div class="bs-example">
    <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#sectionA">BI-Schnittstelle</a></li>
        <li><a data-toggle="tab" href="#sectionB">Grafische Auswertung</a></li>
    </ul>
    <div class="tab-content">
        <div id="sectionA" class="tab-pane fade in active">
            <h3>BI-Schnittstelle</h3>
          
							    
		</div>
			
        <div id="sectionB" class="tab-pane fade">
        	
        			
        			    
    		<div id="canvas-holder">
				<canvas id="chart-area" width="300" height="300"></canvas>
			</div>  

		</div>

    </div>

</div>


	<script>

		var pieData = [
				{
					value: 300,
					color:"#F7464A",
					highlight: "#FF5A5E",
					label: "Red"
				},
				{
					value: 50,
					color: "#46BFBD",
					highlight: "#5AD3D1",
					label: "Green"
				},
				{
					value: 100,
					color: "#FDB45C",
					highlight: "#FFC870",
					label: "Yellow"
				},
				{
					value: 40,
					color: "#949FB1",
					highlight: "#A8B3C5",
					label: "Grey"
				},
				{
					value: 120,
					color: "#4D5360",
					highlight: "#616774",
					label: "Dark Grey"
				}

			];

			window.onload = function(){
				var ctx = document.getElementById("chart-area").getContext("2d");
				window.myPie = new Chart(ctx).Pie(pieData);
			};



	</script>
	</body>
</html>
