
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<title>Suche</title>

		<div class="body">
			<h1>Suche</h1>
			<!-- ToDo:
	Die Suchtreffer sollen in einer Liste mit 20 Einträgen ausgegeben werden. Bei mehr Treffern muss die Möglichkeit gegeben werden Vor und Zurück zu blättern.
	Die Auswahlliste besteht aus: ID, Name, Vorname, Firma, PK/GK Kennzeichen
	Der Kunde wird durch Doppelklick selektiert und der Benutzer wird auf die Stammdatenübersicht der Geschäftskunden oder Privatkunden geleitet.

 -->
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<div class="well well-sm">

							<form name="bestellung" method="POST"
								action="/crm/suche/submitSearch">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="cId"> Kundennummer</label> <input type="text"
												class="form-control" id="cId" placeholder="Kundennummer" />
										</div>
										<div class="form-group">
											<label for="vorname">Vorname</label> <input type="text"
												class="form-control" id="vorname" placeholder="Vorname" />
										</div>
										<div class="form-group">
											<label for="name">Name</label> <input type="text"
												class="form-control" id="name" placeholder="Name" />
										</div>
										<div class="form-group">
											<label for="firma">Firma</label> <input type="text"
												class="form-control" id="firma" placeholder="Firma" />
										</div>
										<div class="form-group">
											<label for="ort">Ort</label> <input type="text"
												class="form-control" id="ort" placeholder="Ort" />
										</div>
										<div class="form-group">
											<label for="kundenart">Kundenart</label> <br> <input
												type="radio" class="radio-inline" name="kundenart"
												id="kundenart" value="privatkunde"> Privatkunde <input
												type="radio" class="radio-inline" name="kundenart"
												id="kundenart" value="businesskunde"> Geschäftskunde
										</div>

										<input type="submit" class="btn btn-primary pull-right"
											value="Suchen" />
									</div>

									<div class="col-md-6">
										<div class="form-group">
											<label for="name">Suchhinweise</label>
											<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
											 sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,
											  sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.
											   Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. 
											   Lorem ipsum dolor sit amet, consetetur sadipscing elitr, 
											   sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, 
											   sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.
											 Stet clita kasd gubergren, no sea takimata sanctus est.	
											</p>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

	</tiles:putAttribute>
</tiles:insertDefinition>