<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<%@include file="/WEB-INF/views/handbuch/miniMenu.jsp"%>

		<div class="cheapterContent">
			<h1>Geschäftskunden</h1>

			<h2>Geschäftskunden - Bestellung bearbeiten - Step 1</h2>
			<p>Prüfen Sie, ob der richtige Geschäftskunde ausgewählt ist. Sie
				können die Stammdaten des Kunden einsehen, indem sie oben rechts auf
				seinen Namen klicken.</p>

			<h2>Geschäftskunden - Bestellung bearbeiten - Step 2</h2>
			<p>Wählen Sie bei der Rechnungsart die Rechnung oder das
				Lastschriftverfahren. Beim Lastschriftverfahren werden Sie
				aufgefordert, eine Bankverbindung anzugeben.</p>

			<h2>Geschäftskunden - Bestellung bearbeiten - Step 3</h2>
			<p>Geben Sie optional eine abweichende Lieferadresse ein.</p>

			<h2>Geschäftskunden - Bestellung bearbeiten - Step 4</h2>
			<p>Geben Sie an, welches Produkt in welcher Menge bestellt werden
				soll.</p>

			<h2>Geschäftskunden - Bestellung bearbeiten - Step 5</h2>
			<p>Überprüfen Sie alle getätigten Angaben und schließen Sie die
				Bearbeitung der Bestellung ab.</p>

			<h2>Geschäftskunden - Aktivitäten</h2>
			<p>Die Aktivitäten können mithilfe der Suchfunktion nach
				Schlüsselwörtern durchsucht werden.</p>

			<h2>Geschäftskunden - Aktivität anlegen</h2>
			<p>Beim Erstellen einer Aktivität mit einem Privatkunden sind die
				Angabe des Datums, des Mitarbeiters, des Mediums und des Grundes des
				Kundenkontakts relevant. Optional kann eine individuelle Notiz
				beigefügt werden.</p>

		</div>

	</tiles:putAttribute>
</tiles:insertDefinition>