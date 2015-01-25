<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<title>Werbekampagne erstellen</title>

		<h1>Werbekampagne erstellen</h1>
		<dl class="accordion">
		
		<dt><a href="" class="accTitle">Sonderausgabe</a></dt>
		<dd>
		<div class="row">
					<div class="col-md-8">
						<div class="well well-sm">

							<form name="bestellung" method="POST"
								action="/crm/suche/submitSearch">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="kName">Kampagnenbezeichnung</label> <input type="text" 
											class="form-control" id="kName" placeholder="Kampagnenbezeichnung" />
										</div>
										<div class="form-group">
											<label for="date">Datum</label> 
											<input type="text" class="form-control" id="date" placeholder="Datum" />
										</div>
										<div class="form-group">
											<label for="grund">Grund</label> 
											<select class="form-control" name="grund" size="1" >
												<option>---bitte wählen---</option>
												<option>Neukundengewinnung</option>
												<option>Event</option>
												<option>Kundenbindung</option>
												<option>Sonstiges</option>
											</select>
										</div>
										<div class="form-group">
											<label for="zielgruppe">Zielgruppe</label> 
											<select class="form-control" name="zielgruppe" size="1" >
												<option>---bitte wählen---</option>
												<option>Kunden, die die Zeitschrift A kaufen</option>
												<option>Kunden, die die Zeitschrift B kaufen</option>
												<option>Kunden, die die Tageszeitung abonnieren</option>
												<option>Kunden in einem bestimmten Gebiet</option>
												<option>Kunden in einem bestimmten Alter</option>
											</select>
										</div>
										<div class="form-group">
											<label for="thema">Thema</label> 
											<select class="form-control" name="thema" size="1" >
												<option>---bitte wählen---</option>
												<option>Angeln</option>
												<option>Sport</option>
												<option>Kunst</option>
											</select>
										</div>
										<div class="form-group">
											<label for="aExemplare">Anzahl der Exemplare</label> <input type="text"
												class="form-control" id="aExemplare" placeholder="Anzahl der Exemplare" />
										</div>
										<div class="form-group">
											<label for="vExemplare">Anzahl der verkauften Exemplare</label> <input type="text"
												class="form-control" id="vExemplare" placeholder="Verkaufte Exemplare" />
										</div>
										<div class="form-group">
											<label for="inserate">Anzahl der Inserate</label> <input type="text"
												class="form-control" id="inserate" placeholder="Anzahl der Inserate" />
										</div>

				
									</div>

									<div class="col-md-6">

										<div class="form-group">
											<label for="kosten">Kosten</label> <input type="text"
												class="form-control" id="kosten" placeholder="Kosten" />
										</div>
										<div class="form-group">
											<label for="umsatz">Umsatz</label> <input type="text"
												class="form-control" id="umsatz" placeholder="Umsatz" />
										</div>
										<div class="form-group">
											<label for="resonanz">Resonanz</label> <input type="text"
												class="form-control" id="resonanz" placeholder="Resonanz" />
										</div>
										<div class="form-group">
											<label for="name"> Notiz</label>
											<textarea name="message" id="notiz" class="form-control"
												rows="12" cols="25" required="required" placeholder="Notiz"></textarea>
										</div>
										<input type="submit" class="btn btn-primary pull-right" value="Kampagne erstellen" />
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>

		</dd>
		
		<dt><a href="" class="accTitle">Beilage</a></dt>
		<dd>
		
			<div class="row">
					<div class="col-md-8">
						<div class="well well-sm">

							<form name="bestellung" method="POST"
								action="/crm/suche/submitSearch">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="kName">Kampagnenbezeichnung</label> <input type="text" 
											class="form-control" id="kName" placeholder="Kampagnenbezeichnung" />
										</div>
										<div class="form-group">
											<label for="date">Datum</label> 
											<input type="text" class="form-control" id="date" placeholder="Datum" />
										</div>
										<div class="form-group">
											<label for="grund">Grund</label> 
											<select class="form-control" name="grund" size="1" >
												<option>---bitte wählen---</option>
												<option>Neukundengewinnung</option>
												<option>Event</option>
												<option>Kundenbindung</option>
												<option>Sonstiges</option>
											</select>
										</div>
										<div class="form-group">
											<label for="zielgruppe">Zielgruppe</label> 
											<select class="form-control" name="zielgruppe" size="1" >
												<option>---bitte wählen---</option>
												<option>Kunden, die die Zeitschrift A kaufen</option>
												<option>Kunden, die die Zeitschrift B kaufen</option>
												<option>Kunden, die die Tageszeitung abonnieren</option>
												<option>Kunden in einem bestimmten Gebiet</option>
												<option>Kunden in einem bestimmten Alter</option>
											</select>
										</div>
										<div class="form-group">
											<label for="thema">Thema</label> 
											<select class="form-control" name="thema" size="1" >
												<option>---bitte wählen---</option>
												<option>Angeln</option>
												<option>Sport</option>
												<option>Kunst</option>
											</select>
										</div>
										<div class="form-group">
											<label for="aExemplare">Anzahl der Exemplare</label> <input type="text"
												class="form-control" id="aExemplare" placeholder="Anzahl der Exemplare" />
										</div>
										<div class="form-group">
											<label for="vExemplare">Anzahl der verkauften Exemplare</label> <input type="text"
												class="form-control" id="vExemplare" placeholder="Verkaufte Exemplare" />
										</div>
										<div class="form-group">
											<label for="inserate">Anzahl der Inserate</label> <input type="text"
												class="form-control" id="inserate" placeholder="Anzahl der Inserate" />
										</div>

				
									</div>

									<div class="col-md-6">

										<div class="form-group">
											<label for="kosten">Kosten</label> <input type="text"
												class="form-control" id="kosten" placeholder="Kosten" />
										</div>
										<div class="form-group">
											<label for="umsatz">Umsatz</label> <input type="text"
												class="form-control" id="umsatz" placeholder="Umsatz" />
										</div>
										<div class="form-group">
											<label for="resonanz">Resonanz</label> <input type="text"
												class="form-control" id="resonanz" placeholder="Resonanz" />
										</div>
										<div class="form-group">
											<label for="name"> Notiz</label>
											<textarea name="message" id="notiz" class="form-control"
												rows="12" cols="25" required="required" placeholder="Notiz"></textarea>
										</div>
										<input type="submit" class="btn btn-primary pull-right" value="Kampagne erstellen" />
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>

			
		</dd>
		
		<dt><a href="" class="accTitle">Geburtstage</a></dt>
		<dd>
		<div class="row">
					<div class="col-md-8">
						<div class="well well-sm">

							<form name="bestellung" method="POST"
								action="/crm/suche/submitSearch">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="kName">Kampagnenbezeichnung</label> <input type="text" 
											class="form-control" id="kName" placeholder="Kampagnenbezeichnung" />
										</div>
										<div class="form-group">
											<label for="date">Datum</label> 
											<input type="text" class="form-control" id="date" placeholder="Datum" />
										</div>
										<div class="form-group">
											<label for="grund">Grund</label> 
											<select class="form-control" name="grund" size="1" >
												<option>---bitte wählen---</option>
												<option>Neukundengewinnung</option>
												<option>Event</option>
												<option>Kundenbindung</option>
												<option>Sonstiges</option>
											</select>
										</div>
										 <div class="form-group">
											<label for="kosten">Kosten</label> <input type="text"
												class="form-control" id="kosten" placeholder="Kosten" />
										</div>
										<div class="form-group">
											<label for="geschenk">Geschenkart</label> <input type="text"
												class="form-control" id="geschenk" placeholder="Geschenk" />
										</div>
										<div class="form-group">
											<label for="resonanz">Resonanz</label> <input type="text"
												class="form-control" id="resonanz" placeholder="Resonanz" />
										</div>
									</div>

									<div class="col-md-6">


										<div class="form-group">
											<label for="name"> Notiz</label>
											<textarea name="message" id="notiz" class="form-control"
												rows="12" cols="25" required="required" placeholder="Notiz"></textarea>
										</div>
										<input type="submit" class="btn btn-primary pull-right" value="Kampagne erstellen" />
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>

		</dd>
		
		</dl>

		<style type="text/css">
		.accordion {
			
			   dt{
			      
			      border: 1px solid black;
			      border-bottom: 0; 
			      &:last-of-type {
			        border-bottom: 1px solid black; 
			      }
			      a {
			        display: block;
			        color: black;
			        font-weight: bold;
			      }
			   }
			  dd {
			     border-top: 0; 
			     font-size: 12px;
			     &:last-of-type {
			       border-top: 1px solid white;
			       position: relative;
			       top: -1px;
			     }
			  }
			}
			.accTitle{
				
				  
				 
			}
		</style>
<script>

(function($) {
    
	  var allPanels = $('.accordion > dd').hide();
	    
	  $('.accordion > dt > a').click(function() {
		  
	    allPanels.slideUp();
	    $(this).parent().next().toggle();
	    return false;
	  });

	})(jQuery);

</script>

	</tiles:putAttribute>
</tiles:insertDefinition>