<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<%@include file="/WEB-INF/views/handbuch/miniMenu.jsp"%>
		<div class="cheapterContent">
			<h1>Werbekampagen</h1>

			<!doctype html>
			<html>
<head>
<meta charset="utf-8">
<title>Test</title>
<script language="javascript">
	function toggle(elementId) {
		var ele = document.getElementById(elementId);
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
	}
</script>
</head>
<body>

	<div class="tree">

		<div>
			<h2>
				<a id="displayText" href="javascript:toggle('toggleText010');">Werbekampagnen
					- Kampagnenübersicht</a>
			</h2>
		</div>

		<div id="toggleText010">
			<p>In der Kampagnenübersicht sind alle laufenden und
				abgeschlossenen Kampagnen aufgelistet. Die Kampagnen sind editierbar
				und auswertbar.</p>
			<img alt="" src="/crm/resources/images/handbuch/003.png">

			<p>Über den Bearbeitungsbutton gelangt man in die Maske, um die
				Informationen über die Werbekampagne zu bearbeiten.</p>
			<img alt="" src="/crm/resources/images/handbuch/004.png">

			<p>Über den Auswertungsbutton ist einmalig eine Auswertung der
				Werbekampagne möglich.</p>
		</div>

		<div>
			<h2>
				<a id="displayText" href="javascript:toggle('toggleText011');">Werbekampagnen
					- Werbekampagne auswerten</a>
			</h2>
		</div>

		<div id="toggleText011">
			<p>Die Auswertung der Werbekampagne ist zum einen auf Basis der
				im BI-System hinterlegten Daten und zum anderen auf grafische Weise
				möglich. Dazu sind zwei Reiter zum Auswählen bereitgestellt.</p>
			<img alt="" src="/crm/resources/images/handbuch/005.png">

		</div>

		<div>
			<h2>
				<a id="displayText" href="javascript:toggle('toggleText012');">Werbekampagnen
					- Werbekampagne erstellen</a>
			</h2>
		</div>

		<div id="toggleText012">
			<p>Beim Erstellen einer Werbekampagne ist zunächst eine
				Bezeichnung zu vergeben. Für den Start- und Endzeitpunkt wird ein
				Kalender eingeblendet, um jeweils ein Datum auszuwählen.</p>
			<img alt="" src="/crm/resources/images/handbuch/006.png">


			<p>Bei der Kampagnenart, dem Grund für die Kampagne, der
				Zielgruppe und der Veröffentlichungsart ist eine Option aus dem
				Dropdownmenü auszuwählen. Das zur Verfügung stehende Budget ist
				mithilfe eines Schiebereglers einzustellen.</p>
			<img alt="" src="/crm/resources/images/handbuch/007.png">

			<p>Sowohl die Plankosten als auch die Anzahl der Exemplare sind
				in Freitextfeldern einzutragen. Schließlich sind Notizen, die die
				Kampagne betreffen, in einem Freitextfeld anzugeben. Durch Klicken
				auf den Button [Werbekampagne erstellen] wird die Werbekampagne
				erstellt. Bei ungültigen oder fehlenden Pflichtangaben werden die
				betroffenen Felder rot markiert und es ist erst möglich, die
				Kampagne anzulegen, wenn alle Felder korrekte Daten enthalten.</p>

			.
		</div>


	</div>
</body>
			</html>
		</div>

	</tiles:putAttribute>
</tiles:insertDefinition>

