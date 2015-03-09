<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<title>Geschäftskunden - Stammdaten</title>

		<div class="body">
			<h1>Geschäftskunden - Stammdaten</h1>

			<div class="container">
					<div class="infoPanel">
							<a href="/crm/businesskunden/stammdaten"> <span class="glyphicon glyphicon-user"></span>${sessionScope.currentCustomer.firma}</a>
							<a href="/crm/handbuch/businesskunden"><span class="glyphicon glyphicon-info-sign"></span>Hilfe</a>
						</div>
				<div class="suche">
				<div class="row">
						<div class="well well-sm">
							<h3 class="panel-title">${sessionScope.currentCustomer.firma}</h3>
							<div class="row">
								<div class="col-md-6">

									<div class="col-md-3 col-lg-3 " align="center">
										<img alt="User Pic"
											src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=100"
											class="img-circle">
									</div>

									<div class=" col-md-9 col-lg-9 ">
										<table class="table table-user-information">
											<tbody>
												<tr>
													<td>Kundenummer</td>
													<td>${sessionScope.currentCustomer.debitorId}</td>
												</tr>
												<tr>
													<td>Anrede</td>
													<td>${sessionScope.currentCustomer.anrede}</td>
												</tr>
												<tr>
													<td>Vertreter</td>
													<td>${sessionScope.currentCustomer.vorname} ${sessionScope.currentCustomer.name}</td>
												</tr>
												<tr>
													<td>Anschrift</td>
													<td>${sessionScope.currentCustomer.strasse}, ${sessionScope.currentCustomer.plz} ${sessionScope.currentCustomer.ort}</td>
												</tr>
												<tr>
													<td>Abweichende Lieferanschrift</td>
													<td>${sessionScope.currentCustomer.abwStrasse}, ${sessionScope.currentCustomer.abwPlz} ${sessionScope.currentCustomer.abwOrt}</td>
												</tr>
												<tr>
													<td>Bankverbindung</td>
													<td>
														${sessionScope.currentCustomer.bank}<br> <br>
														${sessionScope.currentCustomer.iban} (IBAN)<br> <br>
														${sessionScope.currentCustomer.bic} (BIC)<br> <br> 
														${sessionScope.currentCustomer.kontoinhaber}(Kontoinhaber)
													</td>
												</tr>
												<tr>
													<td>Email</td>
													<td><a href="mailto:${sessionScope.currentCustomer.email}" class="glyphicon glyphicon-envelope">  ${sessionScope.currentCustomer.email}</a></td>
												</tr>

											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="panel-footer">
								<div class="panelStammdaten">
									<a href="/crm/businesskunden/bestellungBearbeiten" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-pencil"></span> Bestellung aufgeben/bearbeiten</a>
								</div>
								
							</div>
						</div>
					</div>
					</div>
				</div>
			</div>
<style type="text/css">

.infoPanel {
	margin-top: -25px;
	margin-right: 220px;
}
</style>
	</tiles:putAttribute>
</tiles:insertDefinition>