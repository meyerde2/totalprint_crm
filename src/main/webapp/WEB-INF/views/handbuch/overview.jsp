<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<%@include file="/WEB-INF/views/handbuch/miniMenu.jsp"%>
		<div class="cheapterContent">
			<h1>Suche</h1>

			<h2>Suche - Suchbeschreibung</h2>
			<p>Sie können nach einzelnen oder mehreren Kriterien suchen.
				Werden keine Suchkriterien angegeben, werden alle bestehenden Kunden
				aufgelistet.</p>
		</div>

	</tiles:putAttribute>
</tiles:insertDefinition>