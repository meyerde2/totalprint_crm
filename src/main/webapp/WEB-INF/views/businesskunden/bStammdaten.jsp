<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<title>Gesch�ftskunden - Stammdaten</title>

		<div class="body">
			<h1>Gesch�ftskunden - Stammdaten</h1>

			<div class="container">
				<div class="row">
						<div class="well well-sm" style="width:900px;">
							<h3 class="panel-title">Unternehmen GmbH</h3>
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
													<td>1337</td>
												</tr>
												<tr>
													<td>Anrede</td>
													<td>Herr</td>
												</tr>
												<tr>
													<td>Vertreter</td>
													<td>Max Mustermann</td>
												</tr>
												<tr>
													<td>Anschrift</td>
													<td>Teststra�e 10, 2430 Eckernf�rde</td>
												</tr>
												<tr>
													<td>Abweichende Lieferanschrift</td>
													<td>Teststra�e 1000, 2430 Kiel</td>
												</tr>
												<tr>
													<td>Bankverbindung</td>
													<td>DE19123412341234123412 (IBAN)<br> <br>
														PBNKDEFF (BIC)<br> <br> Max Mustermann
														(Kontoinhaber)
													</td>
												</tr>
												<tr>
													<td>Email</td>
													<td><a href="c">info@example.com</a></td>
												</tr>

											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="panel-footer">
								<a href="mailto:info@example.com"
									data-original-title="Broadcast Message" data-toggle="tooltip"
									type="button" class="btn btn-sm btn-primary"> <i
									class="glyphicon glyphicon-envelope"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		
	</tiles:putAttribute>
</tiles:insertDefinition>