<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		
		<%@include file="/WEB-INF/views/handbuch/miniMenu.jsp" %>
		
		<h1>Thema 1</h1>
		<div class="cheapter" style="width: 150px; background-color: #71B234; margin-left: 100px;">
			<p>Test Test Test</p>

		</div>
			
	</tiles:putAttribute>
</tiles:insertDefinition>