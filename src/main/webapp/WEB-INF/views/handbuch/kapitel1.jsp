<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<%@include file="/WEB-INF/views/handbuch/miniMenu.jsp"%>
		<div class="cheapterContent">
			<h1>Gemeinsam dumm</h1>

			<iframe width="640" height="360"
				src="https://www.youtube-nocookie.com/embed/okVDMpU317w"
				frameborder="0" allowfullscreen></iframe>

		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>