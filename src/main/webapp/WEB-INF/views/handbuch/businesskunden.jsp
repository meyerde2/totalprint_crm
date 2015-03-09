<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<%@include file="/WEB-INF/views/handbuch/miniMenu.jsp"%>

		<div class="cheapterContent">
			<h1>Gesch�ftskunden</h1>





	<div class="tree">
	
	<div><h2> <a id="displayText" href="javascript:toggle('toggleText003');">Gesch�ftskunden - Bestellung bearbeiten - Step 1</a></h2></div>

			<div id="toggleText003">
			Pr�fen Sie, ob der richtige Gesch�ftskunde ausgew�hlt ist. Sie
				k�nnen die Stammdaten des Kunden einsehen, indem sie oben rechts auf
				seinen Namen klicken.
		</div>
		
		<div><h2> <a id="displayText" href="javascript:toggle('toggleText004');">Gesch�ftskunden - Bestellung bearbeiten - Step 2</a></h2></div>

			<div id="toggleText004">
			W�hlen Sie bei der Rechnungsart die Rechnung oder das
				Lastschriftverfahren. Beim Lastschriftverfahren werden Sie
				aufgefordert, eine Bankverbindung anzugeben.
		</div>
		
		<div><h2> <a id="displayText" href="javascript:toggle('toggleText005');">Gesch�ftskunden - Bestellung bearbeiten - Step 3</a></h2></div>

			<div id="toggleText005">
			Geben Sie optional eine abweichende Lieferadresse ein.
		</div>
		
		<div><h2> <a id="displayText" href="javascript:toggle('toggleText006');">Gesch�ftskunden - Bestellung bearbeiten - Step 4</a></h2></div>

			<div id="toggleText006">
			Geben Sie an, welches Produkt in welcher Menge bestellt werden
				soll.
		</div>
		
			<div><h2> <a id="displayText" href="javascript:toggle('toggleText007');">Gesch�ftskunden - Bestellung bearbeiten - Step 5</a></h2></div>

			<div id="toggleText007">
		�berpr�fen Sie alle get�tigten Angaben und schlie�en Sie die
				Bearbeitung der Bestellung ab.
		</div>
		
		<div><h2> <a id="displayText" href="javascript:toggle('toggleText008');">Gesch�ftskunden - Aktivit�ten</a></h2></div>

			<div id="toggleText008">
			Die Aktivit�ten k�nnen mithilfe der Suchfunktion nach
				Schl�sselw�rtern durchsucht werden.
		</div>
				
		<div><h2> <a id="displayText" href="javascript:toggle('toggleText009');">Gesch�ftskunden - Aktivit�t anlegen</a></h2></div>

			<div id="toggleText009">
			Beim Erstellen einer Aktivit�t mit einem Privatkunden sind die
				Angabe des Datums, des Mitarbeiters, des Mediums und des Grundes des
				Kundenkontakts relevant. Optional kann eine individuelle Notiz
				beigef�gt werden.
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

			
		

