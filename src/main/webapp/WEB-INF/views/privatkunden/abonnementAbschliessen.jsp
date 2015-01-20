<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<title>Privatkunden</title>

		<div class="body">
			<h1>Privatkunden - Abonnement abschlieﬂen</h1>

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
										<p class="list-group-item-text">Best‰tigung</p>
								</a></li>
							</ul>
						</div>
					</div>
					<div class="row setup-content" id="step-1">
						<div class="col-xs-12">
							<div class="col-md-12 well text-center">
								<h2>Kundendaten</h2>
								<table>
									<tr>
										<td><label>Kundennummer</label></td>
										<td>12345</td>
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
								<h2>Zahlungsart</h2>
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
										<td><label>Straﬂe</label></td>
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
								<h2>Lieferadresse</h2>

								<table>
									<tr>
										<td><label>Straﬂe</label></td>
										<td>Musterstr. 123</td>
									</tr>
									<tr>
										<td><label>PLZ</label></td>
										<td>12345</td>
									</tr>
									<tr>
										<td><label>Ort</label></td>
										<td>Dˆrfchen XYZ</td>
									</tr>


									<tr>
										<td><label>Abweichende Lieferadresse</label></td>
										<td><input type="checkbox" class="checkbox-inline"
											name="abwLieferadresse" id="abwLieferadresse" value="ja">
										</td>
									</tr>

									<tr class="abwLieferadresse">
										<td><label>Straﬂe</label></td>
										<td><input type="text" class="form-control"
											name="strasse" id="strasse" placeholder="Straﬂe"></td>
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
								<h2>Best‰tigung</h2>

								<table>
									<tr>
										<td><label>Straﬂe</label></td>
										<td>Musterstr. 123</td>
									</tr>
									<tr>
										<td><label>PLZ</label></td>
										<td>12345</td>
									</tr>
									<tr>
										<td><label>Ort</label></td>
										<td>Dˆrfchen XYZ</td>
									</tr>

								</table>

								<p>
									Soll das Abonnement der Tageszeitung verbindlich bestellt
									werden? <input type="checkbox" id="aboYes">
								</p>

								<button id="submitAbo" class="btn btn-primary btn-lg">Abonnement
									abschlieﬂen</button>
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

							});
		</script>
	</tiles:putAttribute>
</tiles:insertDefinition>