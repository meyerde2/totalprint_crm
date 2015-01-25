<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
	

		<title>Privatkunden - Abonnement k�ndigen</title>
		<h1>Privatkunden - Abonnement k�ndigen</h1>
					
		<div class="well">

			<form method="POST" action="/crm/submitAddAbo">
				<div class="row">
					<div class="infoPanel">
							<a href="/crm/privatkunden/stammdaten"> <span class="glyphicon glyphicon-user"></span>Vorname Name</a>
							<a href="/crm/handbuch/privatkunden"><span class="glyphicon glyphicon-info-sign"></span>Hilfe</a>
					</div>
					<div class="col-md-6">

						<div class="form-group">
							<label for="dateUntil">K�ndigung zum</label> 
							<input type="text" class="form-control" name="dateUntil" id="dateUntil">
						</div>
						
						<div class="form-group">
							<label for="abo">Soll das Abonnement wirklich gek�ndigt werden?</label> <br>
							<input type="checkbox" class="checkbox-inline" name="abo" id="abo" value="ja">
						</div>

						<button type="submit" id="submit" class="btn btn-primary btn-md"><span class="glyphicon glyphicon-remove"></span>  Abonnement k�ndigen</button>
					</div>
				

					<div class="col-md-6">

					</div>
				</div>
			</form>
		</div>

		<script>
			$('#dateUntil').datetimepicker({

			lang : 'de',
			i18n : {
				de : {
					months : [ 'Januar', 'Februar', 'M�rz',
							'April', 'Mai', 'Juni', 'Juli',
							'August', 'September', 'Oktober',
							'November', 'Dezember', ],
					dayOfWeek : ["Mo", "Di", "Mi", "Do","Fr" ]
				}
			},
			timepicker : false,
			format : 'd.m.Y'
		});
		</script>

	</tiles:putAttribute>
</tiles:insertDefinition>