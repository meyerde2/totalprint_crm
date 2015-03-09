<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<%@include file="/WEB-INF/views/handbuch/miniMenu.jsp"%>
		<div class="cheapterContent">
			<h1>Suche</h1>
			
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
	
	<div><h2> <a id="displayText" href="javascript:toggle('toggleText001');">Suche - Suchbeschreibung</a></h2></div>

			<div id="toggleText001">
			Sie können nach einzelnen oder mehreren Kriterien suchen.
			Werden keine Suchkriterien angegeben, werden alle bestehenden Kunden
			aufgelistet.</div>
		</div>
		
		<div><h2> <a id="displayText" href="javascript:toggle('toggleText002');">Suche - Suchhinweise</a></h2></div>

			<div id="toggleText002">
			Die Suche bietet verschiedene Suchkriterien, die in beliebigem
				Umfang nutzbar sind. Werden keine Suchkriterien angegeben, erscheint
				eine Übersicht aller Kunden. Durch klicken auf den Button [Suche]
				wird die Suchanfrage abgeschickt.</div>
		</div>
	</div>
</body>
</html>
</div>

</tiles:putAttribute>
</tiles:insertDefinition>

			
		


