<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		
		<%@include file="/WEB-INF/views/handbuch/miniMenu.jsp" %>
		
		<h1>Privatkunden</h1>
		<div class="cheapterContent">
			<p>Privat</p>

		</div>
			
	</tiles:putAttribute>
</tiles:insertDefinition>