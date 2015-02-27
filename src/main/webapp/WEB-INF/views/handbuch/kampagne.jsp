<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<%@include file="/WEB-INF/views/handbuch/miniMenu.jsp"%>
		<div class="cheapterContent">
			<h1>Werbekampagen</h1>

			<h2>Werbekampagnen - Kampagnen�bersicht</h2>
			<p>In der Kampagnen�bersicht sind alle laufenden und
				abgeschlossenen Kampagnen aufgelistet. Die Kampagnen sind editierbar
				und auswertbar.</p>
			<img alt="" src="/crm/resources/images/handbuch/003.png">

			<p>�ber den Bearbeitungsbutton gelangt man in die Maske, um die
				Informationen �ber die Werbekampagne zu bearbeiten.</p>
			<img alt="" src="/crm/resources/images/handbuch/004.png">

			<p>�ber den Auswertungsbutton ist einmalig eine Auswertung der
				Werbekampagne m�glich.</p>

			<h2>Werbekampagnen - Werbekampagne auswerten</h2>
			<p>Die Auswertung der Werbekampagne ist zum einen auf Basis der
				im BI-System hinterlegten Daten und zum anderen auf grafische Weise
				m�glich. Dazu sind zwei Reiter zum Ausw�hlen bereitgestellt.</p>
			<img alt="" src="/crm/resources/images/handbuch/005.png">

			<h2>Werbekampagnen - Werbekampagne erstellen</h2>
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

		</div>

	</tiles:putAttribute>
</tiles:insertDefinition>