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
					- Kampagnen�bersicht</a>
			</h2>
		</div>

		<div id="toggleText010">
			<p>In der Kampagnen�bersicht sind alle laufenden und
				abgeschlossenen Kampagnen aufgelistet. Die Kampagnen sind editierbar
				und auswertbar.</p>
			<img alt="" src="/crm/resources/images/handbuch/003.png">

			<p>�ber den Bearbeitungsbutton gelangt man in die Maske, um die
				Informationen �ber die Werbekampagne zu bearbeiten.</p>
			<img alt="" src="/crm/resources/images/handbuch/004.png">

			<p>�ber den Auswertungsbutton ist einmalig eine Auswertung der
				Werbekampagne m�glich.</p>
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
				m�glich. Dazu sind zwei Reiter zum Ausw�hlen bereitgestellt.</p>
			<img alt="" src="/crm/resources/images/handbuch/005.png">

		</div>

		<div>
			<h2>
				<a id="displayText" href="javascript:toggle('toggleText012');">Werbekampagnen
					- Werbekampagne erstellen</a>
			</h2>
		</div>

		<div id="toggleText012">
			<p>Beim Erstellen einer Werbekampagne ist zun�chst eine
				Bezeichnung zu vergeben. F�r den Start- und Endzeitpunkt wird ein
				Kalender eingeblendet, um jeweils ein Datum auszuw�hlen.</p>
			<img alt="" src="/crm/resources/images/handbuch/006.png">


			<p>Bei der Kampagnenart, dem Grund f�r die Kampagne, der
				Zielgruppe und der Ver�ffentlichungsart ist eine Option aus dem
				Dropdownmen� auszuw�hlen. Das zur Verf�gung stehende Budget ist
				mithilfe eines Schiebereglers einzustellen.</p>
			<img alt="" src="/crm/resources/images/handbuch/007.png">

			<p>Sowohl die Plankosten als auch die Anzahl der Exemplare sind
				in Freitextfeldern einzutragen. Schlie�lich sind Notizen, die die
				Kampagne betreffen, in einem Freitextfeld anzugeben. Durch Klicken
				auf den Button [Werbekampagne erstellen] wird die Werbekampagne
				erstellt. Bei ung�ltigen oder fehlenden Pflichtangaben werden die
				betroffenen Felder rot markiert und es ist erst m�glich, die
				Kampagne anzulegen, wenn alle Felder korrekte Daten enthalten.</p>

			.
		</div>


	</div>
</body>
			</html>
		</div>

	</tiles:putAttribute>
</tiles:insertDefinition>

