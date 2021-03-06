<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
	

		<title>Suche</title>

		<div class="body">
			<!-- ToDo:
	Die Suchtreffer sollen in einer Liste mit 20 Einträgen ausgegeben werden. Bei mehr Treffern muss die Möglichkeit gegeben werden Vor und Zurück zu blättern.
	Die Auswahlliste besteht aus: ID, Name, Vorname, Firma, PK/GK Kennzeichen
	Der Kunde wird durch Doppelklick selektiert und der Benutzer wird auf die Stammdatenübersicht der Geschäftskunden oder Privatkunden geleitet.

 -->
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
					<div id="tableContainer">
					<table class="table">
						<thead>
						   <tr class="filters">
						      <th><input type="text" class="form-control" placeholder="KdNr" disabled></th>
						      <th><input type="text" class="form-control" placeholder="Firma" disabled></th>
						      <th><input type="text" class="form-control" placeholder="Vorname" disabled></th>
						      <th><input type="text" class="form-control" placeholder="Name" disabled></th>
						      <th><input type="text" class="form-control" placeholder="Ort" disabled></th>
						      <th><input type="text" class="form-control" placeholder="Kundenart" disabled></th>
						      <th><input type="text" class="form-control" placeholder="Abonnement" disabled></th>
						      <th>Aktion</th>
						   </tr>
						</thead>
						<tbody>
						
						<c:forEach var="customer" items="${customerList}">
										
							<tr>
								<td>${customer.debitorId}</td>
								<td>${customer.kundenart == 'Privatkunde' ? '-' : customer.firma}</td>	
								<td>${customer.vorname}</td>
								<td>${customer.name}</td>
								<td>${customer.ort}</td>
								<td>${customer.kundenart == 'Businesskunde' ? 'Geschäftskunde' : 'Privatkunde'}</td>
								<td>${customer.kundenart == 'Privatkunde' ? customer.isAbonnent == true ? 'ja' : 'nein' : '-'}</td>
								<td>
								<a href="/crm/suche/${customer.id}" class="btn btn-primary btn-sm">
						        	<span class="glyphicon glyphicon-zoom-in"></span> auswählen
						        </a>
								</td>
							</tr>
							
						</c:forEach>	
						<c:if test="${empty customerList}">
						    <tr class="no-result text-center">
								<td colspan="7"><p>Keine Ergebnisse gefunden!</p></td>
							</tr>
						</c:if>		
						</tbody>
					</table>
					<div id="naviContainerPagination">
								<div class="my-navigation">
									<div class="simple-pagination-first"></div>
									<div class="simple-pagination-previous"></div>
									<div class="simple-pagination-page-numbers">
									
									</div>
									<div class="simple-pagination-next"></div>
									<div class="simple-pagination-last"></div>
								</div>
								<div class="simple-pagination-page-x-of-x"></div>
								<div class="simple-pagination-showing-x-of-x"></div>
								<div>
									Zeige <select class="simple-pagination-items-per-page"></select> Elemente pro Seite an.
								</div>
					
							</div>
					</div>
				</div>

			</div>
		</div>
		<script>
			/*
			 Please consider that the JS part isn't production ready at all, I just code it to show the concept of merging filters and titles together !
			 */
			 
				$('#tableContainer').simplePagination({
					items_per_page: 5,
					number_of_visible_page_numbers: 10
				});
			
			
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
																				+ '">Keine Ergebnisse gefunden!</td></tr>'));
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