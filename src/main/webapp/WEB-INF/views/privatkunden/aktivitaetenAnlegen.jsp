<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<title>Privatkunden - Aktivität anlegen</title>

		<div class="body">
			<h1>Privatkunden - Aktivität anlegen</h1>



			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<div class="well well-sm">
							<form name="activityAnlegen" method="POST"
								action="/crm/submitAddActivity">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="cId"> Kundennummer</label> <input type="text"
												class="form-control" id="cId" placeholder="Kundennummer" required="required" />
										</div>
										<div class="form-group">
											<label for="date"> Datum</label> <input
												type="text" class="form-control" id="date"
												placeholder="Datum" required="required" />
										</div>

										<div class="form-group">
											<label for="ma"> Mitarbeitername</label> 
											<select class="form-control" name="ma" size="1" >
												<option>---bitte wählen---</option>
												<option>Schweini</option>
												<option>Poldi</option>
												<option>Özil</option>
												<option>Götze</option>
												<option>Boateng</option>
											</select>
										</div>
										<div class="form-group">
											<label for="ma"> Kontaktmedium</label> 
											<select class="form-control" name="medium" size="1">
												<option>---bitte wählen---</option>
												<option>Telefon</option>
												<option>E-Mail</option>
												<option>Post</option>
											</select>
										</div>
										<div class="form-group">
											<label for="ma"> Kontaktgrund</label> 
											<select class="form-control" name="grund" id="grund" class="grund" size="1">
												<option value="">---bitte wählen---</option>
												<option value="abo">Abonnementabschluss</option>
												<option value="kuendigung">Kündigung</option>
												<option value="change">Adressänderung</option>
												<option value="beschwerde">Beschwerde</option>
												<option value="sonstiges">Sonstiges</option>
											</select>
										</div>


										<div class="form-group" id="sonstiges">
											<label for="sontigesTxt"> Sonstiges</label> <input
												type="text" class="form-control" id="sonstigesTxt"
												placeholder="Sonstiges" />
										</div>

									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="name"> Notiz</label>
											<textarea name="message" id="notiz" class="form-control"
												rows="12" cols="25" required="required" placeholder="Notiz"></textarea>
										</div>
									</div>
									<div class="col-md-12">
										<button type="submit" class="btn btn-primary pull-right"
											id="btnContactUs">Aktivität anlegen</button>
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

						document.forms['activityAnlegen']['cId'].readOnly = true;
						
						$('#date').datetimepicker(
								{

									lang : 'de',
									i18n : {
										de : {
											months : [ 'Januar', 'Februar',
													'März', 'April', 'Mai',
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
							if (selectVal == 'sonstiges') {
								$("#sonstiges").show();
							} else {
								$("#sonstiges").hide();
							}

						});

					});
		</script>
	</tiles:putAttribute>
</tiles:insertDefinition>