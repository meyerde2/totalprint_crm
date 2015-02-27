<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<%@include file="/WEB-INF/views/handbuch/miniMenu.jsp"%>
		<div class="cheapterContent">
			<h1>Werbekampagen</h1>

			<h2>Werbekampagnen - Werbekampagne erstellen</h2>
			<p>Wählen Sie aus, welche Art von Werbekampagne Sie anlegen
				möchten.</p>
		</div>

	</tiles:putAttribute>
</tiles:insertDefinition>