<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
	

		<title>Privatkunden - Abonnement kündigen</title>
		<h1>Privatkunden - Abonnement kündigen</h1>
					
		<div class="well">

			<form method="POST" action="/crm/privatkunden/submitCancelAbo" id="kuendigen" name="kuendigen">
				<div class="row">
					<div class="infoPanel">
							<a href="/crm/privatkunden/stammdaten"> <span class="glyphicon glyphicon-user"></span>${sessionScope.currentCustomer.vorname} ${sessionScope.currentCustomer.name}</a>
							<a href="/crm/handbuch/privatkunden"><span class="glyphicon glyphicon-info-sign"></span>Hilfe</a>
					</div>
					<div class="col-md-6">

						<div class="form-group">
							<label for="dateUntil">Kündigung zum</label> 
							<input type="text" class="form-control" name="dateUntil" id="dateUntil">
						</div>
						<p>Hiermit wird das Abonnement zum oben genannten Datum gekündigt.</p>

						<button type="submit" id="submit" class="btn btn-primary btn-md"><span class="glyphicon glyphicon-remove"></span>  Abonnement kündigen</button>
					</div>
				

					<div class="col-md-6">

					</div>
				</div>
			</form>
		</div>

		<script>
		
		jQuery.validator.setDefaults({
  		  debug: false,
  		  success: "valid"
  		});
  		$( "#kuendigen" ).validate({
  		  rules: {
  			dateUntil: {
  		      required: true,
  		      dateDECH: true
  		    },
  			abo: {
  				required: true,
  			}
  		  },
  		  messages:{
  			dateUntil: {
  				dateDECH: "Kein gültiges Datum"
  				  
  			  }
  		  }
  		});
			$('#dateUntil').datetimepicker({

			lang : 'de',
			i18n : {
				de : {
					months : [ 'Januar', 'Februar', 'März',
							'April', 'Mai', 'Juni', 'Juli',
							'August', 'September', 'Oktober',
							'November', 'Dezember'],
				 dayOfWeek : ["So", "Mo", "Di", "Mi", "Do", "Fr", "Sa"]
				}
			},
			timepicker : false,
			format : 'd.m.Y'
		});
		</script>

	</tiles:putAttribute>
</tiles:insertDefinition>