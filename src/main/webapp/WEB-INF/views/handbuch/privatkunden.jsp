<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<%@include file="/WEB-INF/views/handbuch/miniMenu.jsp"%>


		<div class="cheapterContent">
			<h1>Privatkunden</h1>


	<div class="tree">

		<div>
			<h2>
				<a id="displayText" href="javascript:toggle('toggleText013');">Privatkunden
					- Stammdaten</a>
			</h2>
		</div>

		<div id="toggleText013">
			<p>Über die Buttons im unteren Teil der Stammdatenübersicht
				können Sie direkt ein Abonnement für den Kunden abschließen oder ein
				bestehendes Abonnement kündigen.</p>
			<img alt="" src="/crm/resources/images/handbuch/001.png">

		</div>

		<div>
			<h2>
				<a id="displayText" href="javascript:toggle('toggleText014');">Privatkunden
					- Abonnement abschließen - Step 1</a>
			</h2>
		</div>

		<div id="toggleText014">
			<p>Prüfen Sie, ob der richtige Privatkunde ausgewählt ist. Sie
				können die Stammdaten des Kunden einsehen, indem sie oben rechts auf
				seinen Namen klicken.</p>
			<img alt="" src="/crm/resources/images/handbuch/002.png"
				height="120px">

		</div>

		<div>
			<h2>
				<a id="displayText" href="javascript:toggle('toggleText015');">Privatkunden
					- Abonnement abschließen - Step 2</a>
			</h2>
		</div>

		<div id="toggleText015">
			<p>Wählen Sie bei der Rechnungsart die Rechnung oder das
				Lastschriftverfahren. Beim Lastschriftverfahren werden Sie
				aufgefordert, eine Bankverbindung anzugeben.</p>
		</div>

		<div>
			<h2>
				<a id="displayText" href="javascript:toggle('toggleText016');">Privatkunden
					- Abonnement abschließen - Step 3</a>
			</h2>
		</div>

		<div id="toggleText016">
			<p>Geben Sie optional eine abweichende Lieferadresse ein.</p>
		</div>

		<div>
			<h2>
				<a id="displayText" href="javascript:toggle('toggleText017');">Privatkunden
					- Abonnement kündigen</a>
			</h2>
		</div>

		<div id="toggleText017">
			<p>Geben Sie an, zu welchem Datum das Abonnement gekündigt werden
				soll. Die Kündigungsfrist beträgt 30 Tage. Bestätigen Sie
				anschließend die Kündigung erneut. ACHTUNG! Eine Kündigung kann
				nicht rückgängig gemacht werden. Es muss im Zweifel einer
				unbeabsichtigten Kündigung ein neues Abonnement abgeschlossen
				werden!</p>
		</div>

		<div>
			<h2>
				<a id="displayText" href="javascript:toggle('toggleText018');">Privatkunden
					- Aktivitäten</a>
			</h2>
		</div>

		<div id="toggleText018">
			<p>Die Aktivitäten können mithilfe der Suchfunktion nach
				Schlüsselwörtern durchsucht werden.</p>
		</div>

		<div>
			<h2>
				<a id="displayText" href="javascript:toggle('toggleText019');">Privatkunden
					- Aktivität anlegen</a>
			</h2>
		</div>

		<div id="toggleText019">
			<p>Beim Erstellen einer Aktivität mit einem Privatkunden sind die
				Angabe des Datums, des Mitarbeiters, des Mediums und des Grundes des
				Kundenkontakts relevant. Optional kann eine individuelle Notiz
				beigefügt werden.</p>
		</div>
	</div>

		</div>

		
		<script type="text/javascript">
			function toggle(elementId) {
				var ele = document.getElementById(elementId);
				if (ele.style.display == "none") {
					ele.style.display = "block";
				} else {
					ele.style.display = "none";
				}
			}
		</script>

	</tiles:putAttribute>
</tiles:insertDefinition>






