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
						<div class="infoPanel">
							<a href="/crm/privatkunden/stammdaten"> <span class="glyphicon glyphicon-user"></span>Vorname Name</a>
							<a href="/crm/handbuch/privatkunden"><span class="glyphicon glyphicon-info-sign"></span>Hilfe</a>
						</div>
							<form name="activityAnlegen" id="activityAnlegen" method="POST"
								action="/crm/privatkunden/submitAddActivity">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="date">Datum</label> <input
												type="text" class="form-control" name="date" id="date"
												placeholder="Datum" />
										</div>

										<div class="form-group">
											<label for="ma"> Mitarbeitername</label> 
											<select class="form-control" name="ma" size="1"  >
												<option value="">---bitte wählen---</option>
												<option value="1">Schweini</option>
												<option value="2">Poldi</option>
												<option value="3">Özil</option>
												<option value="4">Götze</option>
												<option value="5">Boateng</option>
											</select>
										</div>
										<div class="form-group">
											<label for="ma"> Kontaktmedium</label> 
											<select  class="form-control" name="medium" size="1"  >
												<option value="">---bitte wählen---</option>
												<option value="1">Telefon</option>
												<option value="2">E-Mail</option>
												<option value="3">Post</option>
											</select>
										</div>
										<div class="form-group">
											<label for="ma"> Kontaktgrund</label> 
											<select  class="form-control" name="grund" id="grund" class="grund" size="1"  >
												<option value="">---bitte wählen---</option>
												<option value="1">Abonnementabschluss</option>
												<option value="2">Kündigung</option>
												<option value="3">Adressänderung</option>
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
												rows="12" cols="25" placeholder="Notiz"></textarea>
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
		
		jQuery.validator.setDefaults({
  		  debug: true,
  		  success: "valid",
  		  focusCleanup: true
  		});
  		$( "#activityAnlegen" ).validate({
  		  rules: {
  			date: {
  		      required: true,
  		      dateDECH: true
  		    },
  			ma: {
  				required: true,
  			},
  			medium: {
  				required: true,
  			},
  			grund: {
  				required: true,
  			},
  			notiz: {
  				required: true,
  			}
  		  },
  		  messages:{
  			date:{
  				dateDECH: "Kein gültiges Datum!"
  			}
	
  		  }
  		});
  		
			$(document).ready(
					function() {
						$("#sonstiges").hide();

						
						
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