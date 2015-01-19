<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<title>Geschäftskunde - Aktivität anlegen</title>

		<div class="body">
			<h1>Geschäftskunde - Aktivität anlegen</h1>

			<form name="activityAnlegen" method="POST" action="/crm/submitAddActivity">
				<table id="activity">
					<tr>
						<td><label>Datum</label></td>
						<td><input type="text" class="form-control"name="date" id="date"></td>
					</tr>
					<tr>
						<td><label>Mitarbeitername</label></td>
						<td>
							<select class="form-control" name="ma" size="1">
								<option>---bitte wählen---</option>
								<option>Schweini</option>
								<option>Poldi</option>
								<option>Özil</option>
								<option>Götze</option>
								<option>Boateng</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><label>Kontaktmedium</label></td>
						<td>
							<select class="form-control" name="medium" size="1">
								<option>---bitte wählen---</option>
								<option>Telefon</option>
								<option>E-Mail</option>
								<option>Post</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><label>Kontaktgrund</label></td>
						<td> 
							<select class="form-control" name="grund" id="grund" class="grund" size="1">
								<option value="">---bitte wählen---</option>
								<option value="abo">Abonnementabschluss</option>
								<option value="kuendigung">Kündigung</option>
								<option value="change">Adressänderung</option>
								<option value="beschwerde">Beschwerde</option>
								<option value="sonstiges">Sonstiges</option>
							</select>
						</td>
					</tr>
					<tr id="sonstiges">
						<td><label>Sonstiges</label></td>
						<td><input type="text" class="form-control" name="sonstigesTxt" id="sonstigesTxt"></td>
					</tr>
					<tr>
						<td><label>Notiz</label></td>
						<td><textarea name="notiz" class="form-control" id="notiz"cols="50" rows="5"></textarea></td>
					</tr>
				</table>
			</form>
		</div>

		<script>
		$(document).ready(function() {
			$("#sonstiges").hide();
			
			$('#date').datetimepicker(
					{

						lang : 'de',
						i18n : {
							de : {
								months : [ 'Januar', 'Februar', 'März',
										'April', 'Mai', 'Juni', 'Juli',
										'August', 'September', 'Oktober',
										'November', 'Dezember', ],
								dayOfWeek : [ "Mo", "Di", "Mi", "Do", "Fr" ]
							}
						},
						timepicker : false,
						format : 'd.m.Y'
					});

		
			$('#grund').change(function() {    
				   // assign the value to a variable, so you can test to see if it is working
				    var selectVal = $('#grund').val();
				   if (selectVal == 'sonstiges'){
						$("#sonstiges").show();
				   }else{
						$("#sonstiges").hide();
				   }

				});
		
		});
			
		</script>
	</tiles:putAttribute>
</tiles:insertDefinition>