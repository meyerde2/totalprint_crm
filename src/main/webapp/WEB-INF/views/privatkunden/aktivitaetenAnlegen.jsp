<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<title>Privatkunden - Aktivit�t anlegen</title>

		<div class="body">
			<h1>Privatkunden - Aktivit�t anlegen</h1>

			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<div class="well well-sm">
						<div class="infoPanel">
							<a href="/crm/privatkunden/stammdaten"> <span class="glyphicon glyphicon-user"></span>Vorname Name</a>
							<a href="/crm/handbuch/privatkunden"><span class="glyphicon glyphicon-info-sign"></span>Hilfe</a>
						</div>
							<form name="activityAnlegen" method="POST"
								action="/crm/privatkunden/submitAddActivity">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="date">Datum</label> <input
												type="text" class="form-control" name="date" id="date"
												placeholder="Datum" required="required" />
										</div>

										<div class="form-group">
											<label for="ma"> Mitarbeitername</label> 
											<select required="required" class="form-control" name="ma" size="1"  >
												<option value="">---bitte w�hlen---</option>
												<option value="1">Schweini</option>
												<option value="2">Poldi</option>
												<option value="3">�zil</option>
												<option value="4">G�tze</option>
												<option value="5">Boateng</option>
											</select>
										</div>
										<div class="form-group">
											<label for="ma"> Kontaktmedium</label> 
											<select required="required" class="form-control" name="medium" size="1"  >
												<option value="">---bitte w�hlen---</option>
												<option value="1">Telefon</option>
												<option value="2">E-Mail</option>
												<option value="3">Post</option>
											</select>
										</div>
										<div class="form-group">
											<label for="ma"> Kontaktgrund</label> 
											<select required="required" class="form-control" name="grund" id="grund" class="grund" size="1"  >
												<option value="">---bitte w�hlen---</option>
												<option value="1">Abonnementabschluss</option>
												<option value="2">K�ndigung</option>
												<option value="3">Adress�nderung</option>
												<option value="4">Beschwerde</option>
												<option value="5">Sonstiges</option>
											</select>
										</div>


										<div class="form-group" id="sonstiges">
											<label for="sontigesTxt"> Sonstiges</label> <input
												type="text" class="form-control" id="sonstigesTxt" name="sonstigesTxt"
												placeholder="Sonstiges" />
										</div>

									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="notiz">Notiz</label>
											<textarea name="notiz" id="notiz" class="form-control"
												rows="12" cols="25" required="required" placeholder="Notiz"></textarea>
										</div>
									</div>
									<div class="col-md-12">
										<button type="submit" class="btn btn-primary pull-right"
											id="btnContactUs">Aktivit�t anlegen</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>


		<script>
			$(document).ready(
					function() {
						$("#sonstiges").hide();

						
						
						$('#date').datetimepicker(
								{

									lang : 'de',
									i18n : {
										de : {
											months : [ 'Januar', 'Februar',
													'M�rz', 'April', 'Mai',
													'Juni', 'Juli', 'August',
													'September', 'Oktober',
													'November', 'Dezember', ],
											dayOfWeek : [ "Mo", "Di", "Mi",
													"Do", "Fr" ]
										}
									},
									timepicker : false,
									format : 'd.m.Y'
								});

						$('#grund').change(function() {
							// assign the value to a variable, so you can test to see if it is working
							var selectVal = $('#grund').val();
							if (selectVal == '5') {
								$("#sonstiges").show();
							} else {
								$("#sonstiges").hide();
							}

						});

					});
		</script>
	</tiles:putAttribute>
</tiles:insertDefinition>