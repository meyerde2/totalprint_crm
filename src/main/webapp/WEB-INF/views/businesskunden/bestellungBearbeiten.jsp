<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<title>Geschäftskunden</title>

		<div class="body">
			<h1>Geschäftskunden - Bestellung bearbeiten</h1>

			<form name="abschliessen" method="POST"
				action="/crm/privatkunden/submitAddAbo">

				<div class="container">
					<div class="row form-group">
						<div class="col-xs-12">
							<ul class="nav nav-pills nav-justified thumbnail setup-panel">
								<li class="active"><a href="#step-1">
										<h4 class="list-group-item-heading">Step 1</h4>
										<p class="list-group-item-text">Kundendaten</p>
								</a></li>
								<li class="disabled"><a href="#step-2">
										<h4 class="list-group-item-heading">Step 2</h4>
										<p class="list-group-item-text">Rechnungsart</p>
								</a></li>
								<li class="disabled"><a href="#step-3">
										<h4 class="list-group-item-heading">Step 3</h4>
										<p class="list-group-item-text">Lieferadresse</p>
								</a></li>
								<li class="disabled"><a href="#step-4">
										<h4 class="list-group-item-heading">Step 4</h4>
										<p class="list-group-item-text">Anzahl</p>
								</a></li>
								<li class="disabled"><a href="#step-5">
										<h4 class="list-group-item-heading">Step 5</h4>
										<p class="list-group-item-text">Bestätigung</p>
								</a></li>
							</ul>
						</div>
					</div>
					<div class="row setup-content" id="step-1">
						<div class="col-xs-12">
							<div class="col-md-12 well text-center">
								<h1>Kundendaten</h1>
								<table>
									<tr>
										<td><label>Kundennummer</label></td>
										<td>12345</td>
									</tr>
									<tr>
										<td><label>Firma</label></td>
										<td>Muster GmbH</td>

									</tr>
									<tr>
										<td><label>Name</label></td>
										<td>Mustermann</td>

									</tr>
									<tr>
										<td><label>Vorname</label></td>
										<td>Max</td>
									</tr>
								</table>

								<button id="activate-step-2" class="btn btn-primary btn-lg">Weiter</button>


							</div>
						</div>
					</div>
					<div class="row setup-content" id="step-2">
						<div class="col-xs-12">
							<div class="col-md-12 well text-center">
								<h1 class="text-center">Zahlungsart</h1>
								<table>
									<tr>
										<td><label>Zahlungsart</label></td>
										<td><input type="radio" class="radio-inline"
											name="zahlungsart" id="zahlungsart" value="rechnung"
											checked="true">Rechnung <input type="radio"
											class="radio-inline" name="zahlungsart" id="zahlungsart"
											value="lastschrift">Lastschrift</td>
									</tr>

									<tr class="rechnung">
										<td><label>Name</label></td>
										<td>Max Mustermann</td>
									</tr>

									<tr class="rechnung">
										<td><label>Straße</label></td>
										<td>Musterstr. 123</td>
									</tr>

									<tr class="rechnung">
										<td><label>PLZ/Ort</label></td>
										<td>12345 Kiel</td>
									</tr>
									<tr class="payment">
										<td><label>IBAN</label></td>
										<td><input type="text" class="form-control" name="iban"
											id="iban" placeholder="IBAN"></td>
									</tr>
									<tr class="payment">
										<td><label>BIC</label></td>
										<td><input type="text" class="form-control" name="bic"
											id="bic" placeholder="BIC"></td>
									</tr>
									<tr class="payment">
										<td><label>Bank</label></td>
										<td><input type="text" class="form-control" name="bank"
											id="bank" placeholder="Bank"></td>
									</tr>
									<tr class="payment">
										<td><label>Kontoinhaber</label></td>
										<td><input type="text" class="form-control"
											name="kontoinhaber" id="kontoinhaber"
											placeholder="Kontoinhaber"></td>
									</tr>

								</table>
								<button id="activate-step-3" class="btn btn-primary btn-lg">Weiter</button>
							</div>
						</div>
					</div>

					<div class="row setup-content" id="step-3">
						<div class="col-xs-12">
							<div class="col-md-12 well text-center">
								<h1 class="text-center">Lieferadresse</h1>

								<table>
									<tr>
										<td><label>Straße</label></td>
										<td>Musterstr. 123</td>
									</tr>
									<tr>
										<td><label>PLZ</label></td>
										<td>12345</td>
									</tr>
									<tr>
										<td><label>Ort</label></td>
										<td>Dörfchen XYZ</td>
									</tr>


									<tr>
										<td><label>Abweichende Lieferadresse</label></td>
										<td><input type="checkbox" class="checkbox-inline"
											name="abwLieferadresse" id="abwLieferadresse" value="ja">
										</td>
									</tr>

									<tr class="abwLieferadresse">
										<td><label>Straße</label></td>
										<td><input type="text" class="form-control"
											name="strasse" id="strasse" placeholder="Straße"></td>
									</tr>
									<tr class="abwLieferadresse">
										<td><label>PLZ</label></td>
										<td><input type="text" class="form-control" name="plz"
											id="plz" placeholder="Postleitzahl"></td>
									</tr>
									<tr class="abwLieferadresse">
										<td><label>Ort</label></td>
										<td><input type="text" class="form-control" name="ort"
											id="ort" placeholder="Ort"></td>
									</tr>
								</table>
								<button id="activate-step-4" class="btn btn-primary btn-lg">Weiter</button>
							</div>
						</div>
					</div>


					<div class="row setup-content" id="step-4">
						<div class="col-xs-12">
							<div class="col-md-12 well text-center">
								<h1 class="text-center">Lieferadresse</h1>

								<table>
									<tr>
										<td><label>Zeitschrift A</label></td>
										<td><input type="number" MIN="0" MAX="" STEP="1"
											class="form-control" name="numberZeitschriftA"
											id="numberZeitschriftA" placeholder="Anzahl"></td>
									</tr>

									<tr>
										<td><label>Zeitschrift B</label></td>
										<td><input type="number" MIN="0" MAX="" STEP="1"
											class="form-control" name="numberZeitschriftB"
											id="numberZeitschriftB" placeholder="Anzahl"></td>
									</tr>
									<tr>
										<td><label>Tageszeitung</label></td>
										<td><input type="number" MIN="0" MAX="" STEP="1"
											class="form-control" name="numberTZ" id="numberTZ" placeholder="Anzahl"></td>
									</tr>
								</table>
								<button id="activate-step-5" class="btn btn-primary btn-lg">Weiter</button>
							</div>
						</div>
					</div>



					<div class="row setup-content" id="step-5">
						<div class="col-xs-12">
							<div class="col-md-12 well text-center">
								<h1 class="text-center">Bestätigung</h1>

								<table>
									<tr>
										<td><label>Straße</label></td>
										<td>Musterstr. 123</td>
									</tr>
									<tr>
										<td><label>PLZ</label></td>
										<td>12345</td>
									</tr>
									<tr>
										<td><label>Ort</label></td>
										<td>Dörfchen XYZ</td>
									</tr>

								</table>

			Die eingegebenen Daten müssen an das ERP System geliefert werden:<br>
Kunden ID<br>
Straße<br>
Nr.<br>
PLZ<br>
Ort<br>
IBAN<br>
BIC<br>
Name der Bank<br>
Kontoinhaber<br>
Menge Zeitschrift A<br>
Menge Zeitschrift B<br>
Menge Tageszeitung<br>
			

								<button id="submitAbo" class="btn btn-primary btn-lg">Bearbeitung
									abschließen</button>
							</div>
						</div>
					</div>


				</div>

			</form>
		</div>
		<script>
			$(document)
					.ready(
							function() {

								var isVisiblePayment = false;

								$(".abwLieferadresse").hide();
								$(".payment").hide();

								$("input:radio[value=lastschrift]").click(
										function() {
											if (!isVisiblePayment) {
												$(".rechnung").hide("fast");
												$(".payment").show("slow");

												isVisiblePayment = true;
											}

										});
								$("input:radio[value=rechnung]").click(
										function() {
											if (isVisiblePayment) {
												$(".payment").hide("fast");
												$(".rechnung").show("slow");
												isVisiblePayment = false;
											}

										});
								$(".checkbox-inline").click(function() {
									$(".abwLieferadresse").toggle("slow");
								});

								var navListItems = $('ul.setup-panel li a'), allWells = $('.setup-content');

								allWells.hide();

								navListItems
										.click(function(e) {
											e.preventDefault();
											var $target = $($(this)
													.attr('href')), $item = $(
													this).closest('li');

											if (!$item.hasClass('disabled')) {
												navListItems.closest('li')
														.removeClass('active');
												$item.addClass('active');
												allWells.hide();
												$target.show();
											}
										});

								$('ul.setup-panel li.active a')
										.trigger('click');

								// DEMO ONLY //
								$('#activate-step-2')
										.on(
												'click',
												function(e) {
													$('ul.setup-panel li:eq(1)')
															.removeClass(
																	'disabled');
													$(
															'ul.setup-panel li a[href="#step-2"]')
															.trigger('click');
													$(this).remove();
												})

								$('#activate-step-3')
										.on(
												'click',
												function(e) {
													$('ul.setup-panel li:eq(2)')
															.removeClass(
																	'disabled');
													$(
															'ul.setup-panel li a[href="#step-3"]')
															.trigger('click');
													$(this).remove();
												})
								$('#activate-step-4')
										.on(
												'click',
												function(e) {
													$('ul.setup-panel li:eq(3)')
															.removeClass(
																	'disabled');
													$(
															'ul.setup-panel li a[href="#step-4"]')
															.trigger('click');
													$(this).remove();
												})
								$('#activate-step-5')
										.on(
												'click',
												function(e) {
													$('ul.setup-panel li:eq(4)')
															.removeClass(
																	'disabled');
													$(
															'ul.setup-panel li a[href="#step-5"]')
															.trigger('click');
													$(this).remove();
												})

							});
		</script>
	</tiles:putAttribute>
</tiles:insertDefinition>