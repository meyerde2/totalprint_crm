<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<%@include file="/WEB-INF/views/handbuch/miniMenu.jsp"%>


		<div class="cheapterContent">
			<h1>Privatkunden</h1>

			<h2>Privatkunden - Stammdaten</h2>
			<p>�ber die Buttons im unteren Teil der Stammdaten�bersicht
				k�nnen Sie direkt ein Abonnement f�r den Kunden abschlie�en oder ein
				bestehendes Abonnement k�ndigen.</p>
			<img alt="" src="/crm/resources/images/handbuch/001.png">

			<h2>Privatkunden - Abonnement abschlie�en - Step 1</h2>
			<p>Pr�fen Sie, ob der richtige Privatkunde ausgew�hlt ist. Sie
				k�nnen die Stammdaten des Kunden einsehen, indem sie oben rechts auf
				seinen Namen klicken.</p>
			<img alt="" src="/crm/resources/images/handbuch/002.png" height="120px">

			<h2>Privatkunden - Abonnement abschlie�en - Step 2</h2>
			<p>W�hlen Sie bei der Rechnungsart die Rechnung oder das
				Lastschriftverfahren. Beim Lastschriftverfahren werden Sie
				aufgefordert, eine Bankverbindung anzugeben.</p>

			<h2>Privatkunden - Abonnement abschlie�en - Step 3</h2>
			<p>Geben Sie optional eine abweichende Lieferadresse ein.</p>

			<h2>Privatkunden - Abonnement k�ndigen</h2>
			<p>Geben Sie an, zu welchem Datum das Abonnement gek�ndigt werden
				soll. Die K�ndigungsfrist betr�gt 30 Tage. Best�tigen Sie
				anschlie�end die K�ndigung erneut. ACHTUNG! Eine K�ndigung kann
				nicht r�ckg�ngig gemacht werden. Es muss im Zweifel einer
				unbeabsichtigten K�ndigung ein neues Abonnement abgeschlossen
				werden!</p>

			<h2>Privatkunden - Aktivit�ten</h2>
			<p>Die Aktivit�ten k�nnen mithilfe der Suchfunktion nach
				Schl�sselw�rtern durchsucht werden.</p>

			<h2>Privatkunden - Aktivit�t anlegen</h2>
			<p>Beim Erstellen einer Aktivit�t mit einem Privatkunden sind die
				Angabe des Datums, des Mitarbeiters, des Mediums und des Grundes des
				Kundenkontakts relevant. Optional kann eine individuelle Notiz
				beigef�gt werden.</p>


		</div>

	</tiles:putAttribute>
</tiles:insertDefinition>