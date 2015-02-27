<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<%@include file="/WEB-INF/views/handbuch/miniMenu.jsp"%>

		<div class="cheapterContent">
			<h1>Gesch�ftskunden</h1>

			<h2>Gesch�ftskunden - Bestellung bearbeiten - Step 1</h2>
			<p>Pr�fen Sie, ob der richtige Gesch�ftskunde ausgew�hlt ist. Sie
				k�nnen die Stammdaten des Kunden einsehen, indem sie oben rechts auf
				seinen Namen klicken.</p>

			<h2>Gesch�ftskunden - Bestellung bearbeiten - Step 2</h2>
			<p>W�hlen Sie bei der Rechnungsart die Rechnung oder das
				Lastschriftverfahren. Beim Lastschriftverfahren werden Sie
				aufgefordert, eine Bankverbindung anzugeben.</p>

			<h2>Gesch�ftskunden - Bestellung bearbeiten - Step 3</h2>
			<p>Geben Sie optional eine abweichende Lieferadresse ein.</p>

			<h2>Gesch�ftskunden - Bestellung bearbeiten - Step 4</h2>
			<p>Geben Sie an, welches Produkt in welcher Menge bestellt werden
				soll.</p>

			<h2>Gesch�ftskunden - Bestellung bearbeiten - Step 5</h2>
			<p>�berpr�fen Sie alle get�tigten Angaben und schlie�en Sie die
				Bearbeitung der Bestellung ab.</p>

			<h2>Gesch�ftskunden - Aktivit�ten</h2>
			<p>Die Aktivit�ten k�nnen mithilfe der Suchfunktion nach
				Schl�sselw�rtern durchsucht werden.</p>

			<h2>Gesch�ftskunden - Aktivit�t anlegen</h2>
			<p>Beim Erstellen einer Aktivit�t mit einem Privatkunden sind die
				Angabe des Datums, des Mitarbeiters, des Mediums und des Grundes des
				Kundenkontakts relevant. Optional kann eine individuelle Notiz
				beigef�gt werden.</p>

		</div>

	</tiles:putAttribute>
</tiles:insertDefinition>