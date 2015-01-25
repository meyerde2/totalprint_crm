
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<title>Werbekampagnen</title>

			<h1>Übersicht</h1>

			<div class="row">
				<div class="panel panel-primary filterable">
					<div class="panel-heading">
						<h3 class="panel-title">Suchergebnisse</h3>
						<div class="pull-right">
							<button class="btn btn-default btn-xs btn-filter">
								<span class="glyphicon glyphicon-filter"></span> Filter
							</button>
						</div>
					</div>
					<table class="table">
						<thead>
							<tr class="filters">
								<th><input type="text" class="form-control" placeholder="Bezeichnung"
									disabled></th>
										<th><input type="text" class="form-control"
									placeholder="Art" disabled></th>
								<th><input type="text" class="form-control"
									placeholder="Datum" disabled></th>
								<th><input type="text" class="form-control"
									placeholder="Grund" disabled></th>
								<th><input type="text" class="form-control"
									placeholder="Exemplare" disabled></th>
								<th><input type="text" class="form-control"
									placeholder="Notiz" disabled></th>
										<th>Aktion</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>122</td>
								<td>Unternehmen</td>								
								<td>Mark</td>
								<td>Otto</td>
								<td>Privatkunde</td>
								<td>Kiel</td>
								<td><a href="/crm/privatkunden/stammdaten">auswählen</a></td>
							</tr>
							<tr>
								<td>2</td>
								<td>Unternehmen</td>	
								<td>Jacob</td>
								<td>Thornton</td>
								<td>Privatkunde</td>
								<td>Kiel</td>
								<td><a href="/crm/privatkunden/stammdaten">auswählen</a></td>
							</tr>
							<tr>
								<td>3</td>
								<td>Unternehmen</td>	
								<td>Larry</td>
								<td>the Bird</td>
								<td>Geschäftskunde</td>
								<td>Kiel</td>
								<td><a href="/crm/suche/${customer.cId}">auswählen</a></td>
							</tr>
							
							
						</tbody>
					</table>
				</div>

			</div>
		<script>
			/*

			Please consider that the JS part isn't production ready at all, I just code it to show the concept of merging filters and titles together !
			 */
			$(document)
					.ready(
							function() {
								$('.filterable .btn-filter')
										.click(
												function() {
													var $panel = $(this)
															.parents(
																	'.filterable'), $filters = $panel
															.find('.filters input'), $tbody = $panel
															.find('.table tbody');
													if ($filters
															.prop('disabled') == true) {
														$filters.prop(
																'disabled',
																false);
														$filters.first()
																.focus();
													} else {
														$filters.val('').prop(
																'disabled',
																true);
														$tbody.find(
																'.no-result')
																.remove();
														$tbody.find('tr')
																.show();
													}
												});

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

		<style type="">
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
</style>

	</tiles:putAttribute>
</tiles:insertDefinition>