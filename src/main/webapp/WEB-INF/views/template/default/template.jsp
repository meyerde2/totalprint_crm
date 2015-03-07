<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>





<html xmlns="http://www.w3.org/1999/xhtml">
<head>

	<script	src="http://lvps87-230-14-183.dedicated.hosteurope.de/public/js/basic.js"></script>
	<link rel="stylesheet" href="http://lvps87-230-14-183.dedicated.hosteurope.de/public/css/basic.css"></link>
	<link rel="stylesheet" href="http://lvps87-230-14-183.dedicated.hosteurope.de/public/css/basic2.css"></link>
	
	<link rel="stylesheet" type="text/css"	href="/crm/resources/jquery/jquery.datetimepicker.css"></link>
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css"></link>
	<script src="/crm/resources/jquery/jquery.datetimepicker.js"></script>
	<script src="/crm/resources/jquery/jquery.validate.js"></script>
	<script src="/crm/resources/jquery/messages_de.js"></script>
	<script src="/crm/resources/jquery/additional-methods.js"></script>
	<script src="/crm/resources/jquery/jquery.range.js"></script>
	<script src="/crm/resources/jquery/canvasjs.js"></script>
		
	<link href="/crm/resources/css/jquery.range.css" rel="stylesheet" type="text/css"/></link>	
	<link href="/crm/resources/css/star-rating.css" rel="stylesheet" type="text/css"/></link>
    <script src="/crm/resources/jquery/star-rating.js" type="text/javascript"></script>
	
	<link rel="icon" type="image/png" href="/crm/resources/images/favicon.png"></link>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" ></meta>
	
	
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
				<!--  
				/*
		<c:choose>
		  <c:when test="${sessionScope.loggedIn == true}">
				<div class="bodyPage" >
					<tiles:insertAttribute name="body" />
				</div>
		  </c:when>
		  <c:otherwise>
				<div class="bodyPage" >
					//<%@include file="/WEB-INF/views/notLoggedIn.jsp" %>
				</div>
		  </c:otherwise>
		</c:choose>
*/
	-->	
	


		
		<!-- Footer Page -->
		<div class="footerPage" >
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>