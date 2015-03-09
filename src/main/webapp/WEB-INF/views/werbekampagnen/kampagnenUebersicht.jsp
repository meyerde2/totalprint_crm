<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<title>Werbekampagnen</title>

			<h1>Werbekampagnen - Übersicht</h1>

			<div class="row">
			<div class="infoPanel">
				<a href="/crm/handbuch/kampagne"><span class="glyphicon glyphicon-info-sign"></span>Hilfe</a>
			</div>
				<div class="panel panel-primary filterable">
					<div class="panel-heading">
						<h3 class="panel-title">Übersicht der Werbekampagnen</h3>
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
						      <th><input type="text" class="form-control id" placeholder="ID" disabled></th>
						      <th><input type="text" class="form-control" placeholder="Bezeichnung" disabled></th>
						      <th><input type="text" class="form-control art" placeholder="Art" disabled></th>
						      <th><input type="text" class="form-control" placeholder="Datum" disabled></th>
						      <th><input type="text" class="form-control " placeholder="Grund" disabled></th>
						      <th><input type="text" class="form-control status" placeholder="Status" disabled></th>
						      <th class="aktion">Aktion</th>
						   </tr>
						</thead>
						<tbody>
						<c:forEach var="kampagne" items="${kampagnenList}">
										
							<tr>
								<td>${kampagne.kampagnenId}</td>
								<td>${kampagne.kampagnenBez}</td>	
								<td>${kampagne.art}</td>
								
								<td><fmt:formatDate pattern="dd.MM.YYYY"  value="${kampagne.dateBeginn}" /> - <fmt:formatDate pattern="dd.MM.YYYY"  value="${kampagne.dateUntil}"  /> </td>
								<td>${kampagne.grund}</td>
								
								<td>
								<c:if test="${kampagne.status == 3}">
									<span class="label label-success">gut</span>
								</c:if> 
								<c:if test="${kampagne.status == 2}">
									<span class="label label-warning">mittel</span>
								</c:if> 
								<c:if test="${kampagne.status == 1}">
									<span class="label label-danger">schlecht</span>
								</c:if> 
								<c:if test="${kampagne.status == 0}">
									<span class="label label-default">nicht ausgewertet</span>
								</c:if> 
								</td>
								<td>
								<a href="/crm/werbekampagnen/${kampagne.kampagnenId}" title="bearbeiten" class="btn btn-primary btn-sm">
						        	<span class="glyphicon glyphicon-pencil"></span> 
						        </a>
			
								<a href="/crm/werbekampagnen/auswerten/${kampagne.kampagnenId}" title="auswerten" class="btn btn-primary btn-sm">
         							 <span class="glyphicon glyphicon-stats"></span>
						        </a>
								</td>
							</tr>
							
						</c:forEach>	
						<c:if test="${empty kampagnenList}">
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
	
		<script>
		
		$('#tableContainer').simplePagination({
			items_per_page: 5,
			number_of_visible_page_numbers: 10
		});
		
			/*

			Please consider that the JS part isn't production ready at all, I just code it to show the concept of merging filters and titles together !
			 */
			$(document).ready(function() {$('.filterable .btn-filter').click(function() {
					var $panel = $(this)
							.parents('.filterable'), $filters = $panel
							.find('.filters input'), $tbody = $panel
							.find('.table tbody');
					if ($filters
							.prop('disabled') == true) {
						$filters.prop('disabled',false);
						$filters.first().focus();
					} else {
						$filters.val('').prop('disabled',true);
						$tbody.find('.no-result').remove();
						$tbody.find('tr').show();
					}
				});

				$('.filterable .filters input').keyup(function(e) {
						/* Ignore tab key */
						var code = e.keyCode || e.which;
						if (code == '9')
							return;
						/* Useful DOM data and selectors */
						var $input = $(this), inputContent = $input
								.val()
								.toLowerCase(), $panel = $input
								.parents('.filterable'), column = $panel
								.find('.filters th')
								.index($input.parents('th')), $table = $panel
								.find('.table'), $rows = $table
								.find('tbody tr');
						/* Dirtiest filter function ever ;) */
						var $filteredRows = $rows.filter(function() {
									var value = $(this).find('td').eq(column).text().toLowerCase();
									return value.indexOf(inputContent) === -1;
								});
						/* Clean previous no-result if exist */
						$table.find('tbody .no-result').remove();
						/* Show all rows, hide filtered ones (never do that outside of a demo ! xD) */
						$rows.show();
						$filteredRows.hide();
						/* Prepend no-result row if all rows are filtered */
						if ($filteredRows.length === $rows.length) {
							$table.find('tbody').prepend(
											$('<tr class="no-result text-center"><td colspan="'
													+ $table.find('.filters th').length
													+ '">No result found</td></tr>'));
						}
					});
			});
		</script>

		<style type="text/css">
.id{
	width: 40px;
}	
.art{
	width: 140px;
}	
.aktion{
	width: 94px;
}	
.status{
	width: 100px;
}
.filterable {
	margin-top: 15px;
}

.filterable .panel-heading .pull-right {
	margin-top: -20px;
}

.infoPanel {
	margin-top: -5px;
	margin-right: 5px;
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