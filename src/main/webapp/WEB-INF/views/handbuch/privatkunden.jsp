<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<%@include file="/WEB-INF/views/handbuch/miniMenu.jsp"%>


		<div class="cheapterContent">
			<h1>Privatkunden</h1>

			<h2>Privatkunden - Stammdaten</h2>
			<p>Über die Buttons im unteren Teil der Stammdatenübersicht
				können Sie direkt ein Abonnement für den Kunden abschließen oder ein
				bestehendes Abonnement kündigen.</p>
			<img alt="" src="/crm/resources/images/handbuch/001.png">

			<h2>Privatkunden - Abonnement abschließen - Step 1</h2>
			<p>Prüfen Sie, ob der richtige Privatkunde ausgewählt ist. Sie
				können die Stammdaten des Kunden einsehen, indem sie oben rechts auf
				seinen Namen klicken.</p>
			<img alt="" src="/crm/resources/images/handbuch/002.png" height="120px">

			<h2>Privatkunden - Abonnement abschließen - Step 2</h2>
			<p>Wählen Sie bei der Rechnungsart die Rechnung oder das
				Lastschriftverfahren. Beim Lastschriftverfahren werden Sie
				aufgefordert, eine Bankverbindung anzugeben.</p>

			<h2>Privatkunden - Abonnement abschließen - Step 3</h2>
			<p>Geben Sie optional eine abweichende Lieferadresse ein.</p>

			<h2>Privatkunden - Abonnement kündigen</h2>
			<p>Geben Sie an, zu welchem Datum das Abonnement gekündigt werden
				soll. Die Kündigungsfrist beträgt 30 Tage. Bestätigen Sie
				anschließend die Kündigung erneut. ACHTUNG! Eine Kündigung kann
				nicht rückgängig gemacht werden. Es muss im Zweifel einer
				unbeabsichtigten Kündigung ein neues Abonnement abgeschlossen
				werden!</p>

			<h2>Privatkunden - Aktivitäten</h2>
			<p>Die Aktivitäten können mithilfe der Suchfunktion nach
				Schlüsselwörtern durchsucht werden.</p>

			<h2>Privatkunden - Aktivität anlegen</h2>
			<p>Beim Erstellen einer Aktivität mit einem Privatkunden sind die
				Angabe des Datums, des Mitarbeiters, des Mediums und des Grundes des
				Kundenkontakts relevant. Optional kann eine individuelle Notiz
				beigefügt werden.</p>


		</div>

	</tiles:putAttribute>
</tiles:insertDefinition>