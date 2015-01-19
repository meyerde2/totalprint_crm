<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<title>Privatkunden - Stammdaten</title>

		<div class="body">
			<h1>Privatkunden - Stammdaten</h1>

			<table  class="table table-hover">
				<tr>
					<th>cID</th>

					<th>Anrede</th>
					<th>Name</th>
					<th>Vorname</th>

					<th>Straﬂe</th>
					<th>PLZ</th>
					<th>Ort</th>

					<th>Straﬂe</th>
					<th>PLZ</th>
					<th>Ort</th>

					<th>IBAN</th>
					<th>BIC</th>
					<th>Bank</th>
					<th>Kontoinhaber</th>
					<th>Abonnement</th>
				</tr>

				<tr>
					<td>${ID}</td>

					<td>${anrede}</td>
					<td>${name}</td>
					<td>${vorname}</td>

					<td>${strasse}</td>
					<td>${plz}</td>
					<td>${ort}</td>

					<td>${strasse}</td>
					<td>${plz}</td>
					<td>${ort}</td>

					<td>${iban}</td>
					<td>${bic}</td>
					<td>${bank}</td>
					<td>${kontoinhabr}</td>
					<td>${abo}</td>
				</tr>
			</table>

		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>