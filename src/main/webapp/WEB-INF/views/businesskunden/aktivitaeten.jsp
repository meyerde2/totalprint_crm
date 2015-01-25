
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<title>Geschäftskunden - Aktivitäten</title>

		<h1>Geschäftskunden - Aktivitäten</h1>


		<div class="activity">
			<div class="row">
				<div class="col-md-8">
					<div class="well well-sm">
						 <div class="infoPanel">
							<a href="/crm/privatkunden/stammdaten"> <span class="glyphicon glyphicon-user"></span>Vorname Name</a>
							<a href="/crm/handbuch/privatkunden"><span class="glyphicon glyphicon-info-sign"></span>Hilfe</a>
						</div>
						<div class="filterable">
							<div class="panel-heading">
								<h3 class="panel-title">Übersicht</h3>
							</div>
							<table class="table">
								<thead>
									<tr class="filters">
										<th><input type="text" class="form-control"
											placeholder="Suche"></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><a href="#"> <span class="activityH1" id="first">10.01.2015
													| Kontaktgrund</span> <br> <span class="activityH2">Mitarbeitername
													| Kontaktmedium</span> <br> <span class="activityNotiz">Lorem
													ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
													nonumy eirmod tempor invidunt ut labore et dolore magna
													aliquyam erat, sed diam voluptua. At vero eos et accusam et
													justo duo dolores et ea rebum.... </span>
										</a></td>
									</tr>
									<tr>
										<td><a href="#"> <span class="activityH1" id="first">21.01.2015
													| Kontaktgrund</span> <br> <span class="activityH2">Mitarbeitername
													| Kontaktmedium</span> <br> <span class="activityNotiz">Lorem
													ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
													nonumy eirmod tempor invidunt ut labore et dolore magna
													aliquyam erat, sed diam voluptua. At vero eos et accusam et
													justo duo dolores et ea rebum.... </span>
										</a></td>
									</tr>
									<tr>
										<td><a href="#"> <span class="activityH1" id="first">15.01.2015
													| Kontaktgrund</span> <br> <span class="activityH2">Mitarbeitername
													| Kontaktmedium</span> <br> <span class="activityNotiz">Lorem
													ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
													nonumy eirmod tempor invidunt ut labore et dolore magna
													aliquyam erat, sed diam voluptua. At vero eos et accusam et
													justo duo dolores et ea rebum.... </span>
										</a></td>
									</tr>

								</tbody>
							</table>
						</div>

					</div>
				</div>

			</div>

			<div class="modal" id="myModal">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h4 class="modal-title">Aktivität</h4>
						</div>
						<div class="modal-body">


							<div class="col-md-6">
								<div class="form-group">
									<label for="cId"> Kundennummer</label> 12345
								</div>
								<div class="form-group">
									<label for="date"> Datum</label> 10.01.2015
								</div>

								<div class="form-group">
									<label for="ma"> Mitarbeitername</label> Vorname Nachname
								</div>
								<div class="form-group">
									<label for="ma"> Kontaktmedium</label> E-Mail
								</div>
								<div class="form-group">
									<label for="ma"> Kontaktgrund</label> Beschwerde
								</div>


							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="name"> Notiz</label>
									<textarea name="message" id="notiz" class="form-control"
										rows="12" cols="25" placeholder="Notiz" disabled="disabled"></textarea>
								</div>
							</div>
						</div>
						<div class="modal-footer"></div>
					</div>
				</div>
			</div>


		</div>


		<script>
			$('table a').click(function() {
				$('#myModal').modal({
					show : true
				})
			});

			$(document)
					.ready(
							function() {

								$('.filterable .filters input')
										.keyup(
												function(e) {
													/* Ignore tab key */
													var code = e.keyCode
															|| e.which;
													if (code == '9')
														return;
													/* Useful DOM data and selectors */
													var $input = $(this), inputContent = $input
															.val()
															.toLowerCase(), $panel = $input
															.parents('.filterable'), column = $panel
															.find('.filters th')
															.index(
																	$input
																			.parents('th')), $table = $panel
															.find('.table'), $rows = $table
															.find('tbody tr');
													/* Dirtiest filter function ever ;) */
													var $filteredRows = $rows
															.filter(function() {
																var value = $(
																		this)
																		.find(
																				'td')
																		.eq(
																				column)
																		.text()
																		.toLowerCase();
																return value
																		.indexOf(inputContent) === -1;
															});
													/* Clean previous no-result if exist */
													$table.find(
															'tbody .no-result')
															.remove();
													/* Show all rows, hide filtered ones (never do that outside of a demo ! xD) */
													$rows.show();
													$filteredRows.hide();
													/* Prepend no-result row if all rows are filtered */
													if ($filteredRows.length === $rows.length) {
														$table
																.find('tbody')
																.prepend(
																		$('<tr class="no-result text-center"><td colspan="'
																				+ $table
																						.find('.filters th').length
																				+ '">No result found</td></tr>'));
													}
												});

							});
		</script>

		<style type="text/css">
		
			
			.filterable {
				margin-top: 15px;
			}
			
			.filterable .panel-heading .pull-right {
				margin-top: -20px;
			}
			
			.filterable .filters input[disabled] {
				background-color: transparent;
				border: none;
				cursor: auto;
				box-shadow: none;
				padding: 0;
				height: auto;
			}
			
			.filterable .filters input[disabled]::-webkit-input-placeholder {
				color: #333;
			}
			
			.filterable .filters input[disabled]::-moz-placeholder {
				color: #333;
			}
			
			.filterable .filters input[disabled]:-ms-input-placeholder {
				color: #333;
			}
				
			.activityH1{
				font-weight: 600;
				color: #8F8F8F;
			}
			.activityH2{
				color: #8C8C8C;
			}
			.notiz{
				display: block;
				color: #A8A8A8;
			}
			td a {
				display: block;
				border-bottom: 1px dotted #CFCFCF;
				padding: 20px;
				text-decoration: none;
			}
			td a:hover {
				background-color: #E6E6E6;
				text-decoration: none;
			}
			
		</style>
	</tiles:putAttribute>
</tiles:insertDefinition>