<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<title>Privatkunden - Aktivitäten</title>

		<h1>Privatkunden - Aktivitäten</h1>




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
						
									<c:forEach var="activity" items="${aList}">
									
									<tr>
										<td><a href="#?aId=${activity.aktivitaetenId}"> <span class="activityH1" id="first"> ${activity.date}
													|  ${activity.grundBez}</span> <br> <span class="activityH2">${activity.mitarbeiterBez}
													| ${activity.mediumBez}</span> <br> <span class="activityNotiz">${activity.notiz}.... </span>
										</a></td>
									</tr>
		 							</c:forEach>
								</tbody>
							</table>
						</div>

					</div>
				</div>

			</div>
			
			<c:forEach var="activity" items="${aList}">
			
			<div class="modal ${activity.aktivitaetenId}" id="myModal">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h4 class="modal-title">Aktivität | ${activity.aktivitaetenId}</h4>
						</div>
						<div class="modal-body">


							<div class="col-md-6">
								<div class="form-group">
									<label for="cId">Kundennummer</label> ${activity.kundenId}
								</div>
								<div class="form-group">
									<label for="date">Datum</label> ${activity.date}
								</div>

								<div class="form-group">
									<label for="ma">Mitarbeitername</label> ${activity.mitarbeiterBez}
								</div>
								<div class="form-group">
									<label for="ma">Kontaktmedium</label> ${activity.mediumBez}
								</div>
								<div class="form-group">
									<label for="ma">Kontaktgrund</label> ${activity.grundBez}
								</div>


							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="name">Notiz</label>
									<p>${activity.notiz}</p>
								</div>
							</div>
						</div>
						<div class="modal-footer"></div>
					</div>
				</div>
			</div>
			</c:forEach>


		</div>


		<script>
		
			$(document)
					.ready(
							function() {

								
								$('table a').click(function() {
									
									var value = $(this).attr("href");
							      
							        var result = value.split('=');
							        var aId= result[1];
									//var aId = getURLParam('aId');
									// alert('aid:  ' + aId);
									
									$(".modal." + aId).modal({
										show : true
									})
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
			.activityNotiz{
				font-size: 14px;
			}
			
		</style>
	</tiles:putAttribute>
</tiles:insertDefinition>