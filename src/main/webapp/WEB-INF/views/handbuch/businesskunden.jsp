<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<%@include file="/WEB-INF/views/handbuch/miniMenu.jsp"%>

		<div class="cheapterContent">
			<h1>Geschäftskunden</h1>





	<div class="tree">
	
	<div><h2> <a id="displayText" href="javascript:toggle('toggleText003');">Geschäftskunden - Bestellung bearbeiten - Step 1</a></h2></div>

			<div id="toggleText003">
			Prüfen Sie, ob der richtige Geschäftskunde ausgewählt ist. Sie
				können die Stammdaten des Kunden einsehen, indem sie oben rechts auf
				seinen Namen klicken.
		</div>
		
		<div><h2> <a id="displayText" href="javascript:toggle('toggleText004');">Geschäftskunden - Bestellung bearbeiten - Step 2</a></h2></div>

			<div id="toggleText004">
			Wählen Sie bei der Rechnungsart die Rechnung oder das
				Lastschriftverfahren. Beim Lastschriftverfahren werden Sie
				aufgefordert, eine Bankverbindung anzugeben.
		</div>
		
		<div><h2> <a id="displayText" href="javascript:toggle('toggleText005');">Geschäftskunden - Bestellung bearbeiten - Step 3</a></h2></div>

			<div id="toggleText005">
			Geben Sie optional eine abweichende Lieferadresse ein.
		</div>
		
		<div><h2> <a id="displayText" href="javascript:toggle('toggleText006');">Geschäftskunden - Bestellung bearbeiten - Step 4</a></h2></div>

			<div id="toggleText006">
			Geben Sie an, welches Produkt in welcher Menge bestellt werden
				soll.
		</div>
		
			<div><h2> <a id="displayText" href="javascript:toggle('toggleText007');">Geschäftskunden - Bestellung bearbeiten - Step 5</a></h2></div>

			<div id="toggleText007">
		Überprüfen Sie alle getätigten Angaben und schließen Sie die
				Bearbeitung der Bestellung ab.
		</div>
		
		<div><h2> <a id="displayText" href="javascript:toggle('toggleText008');">Geschäftskunden - Aktivitäten</a></h2></div>

			<div id="toggleText008">
			Die Aktivitäten können mithilfe der Suchfunktion nach
				Schlüsselwörtern durchsucht werden.
		</div>
				
		<div><h2> <a id="displayText" href="javascript:toggle('toggleText009');">Geschäftskunden - Aktivität anlegen</a></h2></div>

			<div id="toggleText009">
			Beim Erstellen einer Aktivität mit einem Privatkunden sind die
				Angabe des Datums, des Mitarbeiters, des Mediums und des Grundes des
				Kundenkontakts relevant. Optional kann eine individuelle Notiz
				beigefügt werden.
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

		</div>

</tiles:putAttribute>
</tiles:insertDefinition>

			
		

