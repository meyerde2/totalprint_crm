<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		
		<%@include file="/WEB-INF/views/handbuch/miniMenu.jsp" %>
		<div class="cheapterContent">
		<h1>Überblick</h1>
		
			<p>Lorem ipsum dolor sit amet,
			 consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna 
			 aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. 
			 Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
			  Lorem ipsum dolor sit amet, consetetur sadipscing elitr, 
			  sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,
			   sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. 
			Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>

		</div>
			
	</tiles:putAttribute>
</tiles:insertDefinition>