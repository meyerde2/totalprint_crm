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
			<p>�ber die Buttons im unteren Teil der Stammdaten�bersicht
				k�nnen Sie direkt ein Abonnement f�r den Kunden abschlie�en oder ein
				bestehendes Abonnement k�ndigen.</p>
			<img alt="" src="/crm/resources/images/handbuch/001.png">

		</div>

		<div>
			<h2>
				<a id="displayText" href="javascript:toggle('toggleText014');">Privatkunden
					- Abonnement abschlie�en - Step 1</a>
			</h2>
		</div>

		<div id="toggleText014">
			<p>Pr�fen Sie, ob der richtige Privatkunde ausgew�hlt ist. Sie
				k�nnen die Stammdaten des Kunden einsehen, indem sie oben rechts auf
				seinen Namen klicken.</p>
			<img alt="" src="/crm/resources/images/handbuch/002.png"
				height="120px">

		</div>

		<div>
			<h2>
				<a id="displayText" href="javascript:toggle('toggleText015');">Privatkunden
					- Abonnement abschlie�en - Step 2</a>
			</h2>
		</div>

		<div id="toggleText015">
			<p>W�hlen Sie bei der Rechnungsart die Rechnung oder das
				Lastschriftverfahren. Beim Lastschriftverfahren werden Sie
				aufgefordert, eine Bankverbindung anzugeben.</p>
		</div>

		<div>
			<h2>
				<a id="displayText" href="javascript:toggle('toggleText016');">Privatkunden
					- Abonnement abschlie�en - Step 3</a>
			</h2>
		</div>

		<div id="toggleText016">
			<p>Geben Sie optional eine abweichende Lieferadresse ein.</p>
		</div>

		<div>
			<h2>
				<a id="displayText" href="javascript:toggle('toggleText017');">Privatkunden
					- Abonnement k�ndigen</a>
			</h2>
		</div>

		<div id="toggleText017">
			<p>Geben Sie an, zu welchem Datum das Abonnement gek�ndigt werden
				soll. Die K�ndigungsfrist betr�gt 30 Tage. Best�tigen Sie
				anschlie�end die K�ndigung erneut. ACHTUNG! Eine K�ndigung kann
				nicht r�ckg�ngig gemacht werden. Es muss im Zweifel einer
				unbeabsichtigten K�ndigung ein neues Abonnement abgeschlossen
				werden!</p>
		</div>

		<div>
			<h2>
				<a id="displayText" href="javascript:toggle('toggleText018');">Privatkunden
					- Aktivit�ten</a>
			</h2>
		</div>

		<div id="toggleText018">
			<p>Die Aktivit�ten k�nnen mithilfe der Suchfunktion nach
				Schl�sselw�rtern durchsucht werden.</p>
		</div>

		<div>
			<h2>
				<a id="displayText" href="javascript:toggle('toggleText019');">Privatkunden
					- Aktivit�t anlegen</a>
			</h2>
		</div>

		<div id="toggleText019">
			<p>Beim Erstellen einer Aktivit�t mit einem Privatkunden sind die
				Angabe des Datums, des Mitarbeiters, des Mediums und des Grundes des
				Kundenkontakts relevant. Optional kann eine individuelle Notiz
				beigef�gt werden.</p>
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






