<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>CRM</title>


<!--[if IE]>
	<link rel="stylesheet" href="resources/css/ie.css" type="text/css" media="screen, projection">
	<![endif]-->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"></link>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css"></link>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="/crm/resources/jquery/jquery.datetimepicker.css"></link>
<script src="/crm/resources/jquery/jquery.js"></script>
<script src="/crm/resources/jquery/jquery.datetimepicker.js"></script>

<style type="text/css">
<!--
@import url("/crm/resources/css/menu.css");

@import url("/crm/resources/css/style.css");
-->
</style>
</head>
<body>
	<div class="container">
		<!-- Header -->
		<tiles:insertAttribute name="header" />
		<!-- Menu Page -->
		<div class="menuPage" style="height: 50px;">
			<tiles:insertAttribute name="menu" />
		</div>
		<!-- Body Page -->
		<div class="bodyPage" style="width: 1024px; margin: auto;">
			<tiles:insertAttribute name="body" />
		</div>
		<!-- Footer Page -->
		<div class="footerPage" style="width: 1024px; margin: auto;">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>