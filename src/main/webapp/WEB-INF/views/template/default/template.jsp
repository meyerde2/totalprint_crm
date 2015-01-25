<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

	<script	src="http://lvps87-230-14-183.dedicated.hosteurope.de/public/js/basic.js"></script>
	<link rel="stylesheet" href="http://lvps87-230-14-183.dedicated.hosteurope.de/public/css/basic.css"></link>
	
	<link rel="stylesheet" type="text/css"	href="/crm/resources/jquery/jquery.datetimepicker.css"></link>
	<script src="/crm/resources/jquery/jquery.datetimepicker.js"></script>
	
	<style type="text/css">
		@import url('/crm/resources/css/crmStyle.css');
	</style>

</head>

<body>

	<!-- Header -->
		<tiles:insertAttribute name="header" />
		<!-- Menu Page -->
		<div class="menuPage" >
			<tiles:insertAttribute name="menu" />
		</div>
	<div class="container">

		<!-- Body Page -->
		<div class="bodyPage" >
			<tiles:insertAttribute name="body" />
		</div>
		<!-- Footer Page -->
		<div class="footerPage" >
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>