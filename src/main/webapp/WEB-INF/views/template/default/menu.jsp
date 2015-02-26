<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<c:set var="theString" value="${requestScope['javax.servlet.forward.request_uri']}"/>


<div class="menu">
	<spring:url value="/" var="homeUrl" htmlEscape="true" />

	<spring:url value="/suche" var="suche" htmlEscape="true" />

	<spring:url value="/privatkunden" var="privatkunden" htmlEscape="true" />
		<spring:url value="/privatkunden/stammdaten" var="pStammdaten" htmlEscape="true" />
		<spring:url value="/privatkunden/aboAbschliessen" var="aboAbschliessen" htmlEscape="true" />
		<spring:url value="/privatkunden/aboKuendigen" var="aboKuendigen" htmlEscape="true" />
		<spring:url value="/privatkunden/activity" var="pActivity" htmlEscape="true" />
		<spring:url value="/privatkunden/activityAnlegen" var="pActivityAnlegen" htmlEscape="true" />

	<spring:url value="/businesskunden" var="businesskunden" htmlEscape="true" />
		<spring:url value="/businesskunden/stammdaten" var="bStammdaten" htmlEscape="true" />
		<spring:url value="/businesskunden/bestellungBearbeiten" var="bestellungBearbeiten" htmlEscape="true" />
		<spring:url value="/businesskunden/activity" var="bActivity" htmlEscape="true" />
		<spring:url value="/businesskunden/activityAnlegen" var="bActivityAnlegen" htmlEscape="true" />

	<spring:url value="/werbekampagnen" var="werbekampagnen" htmlEscape="true" />
			<spring:url value="/werbekampagnen/kampagnenUebersicht" var="wUebersicht" htmlEscape="true" />
			<spring:url value="/werbekampagnen/kampagnenErstellen" var="wErstellen" htmlEscape="true" />


	<spring:url value="/service/customer/" var="getCustomerService" htmlEscape="true" />
	<spring:url value="/test" var="test" htmlEscape="true" />

	<nav class="navbar navbar-default">
	
            <div class="navbar-header">
    	        <button type="button" class="system-change navbar-toggle collapsed">
    	            <span class="sr-only">Toggle navigation</span>
    	            <span class="icon-bar"></span>
    	            <span class="icon-bar"></span>
    	            <span class="icon-bar"></span>
    	        </button>
    	    </div>
    	    
            <div id="navbar" class="navbar-collapse collapse">
            	
            	<ul class="nav navbar-nav">
                    <!-- Beispiel EintrÃ¤ge fÃ¼r die Navigation-->
             		
             		
					<!--  <li class="${theString=='/crm/' ? 'active' : ''}"><a href="${homeUrl}"><span class="glyphicon glyphicon-home"></span>  CRM</a></li> -->
					<li class="<c:if test="${fn:contains(theString, 'suche')}">active</c:if>"><a href="${suche}"> <span class="glyphicon glyphicon-search"></span>  Suche</a></li>

					<li class="dropdown  ${sessionScope.currentCustomer.kundenart != 'Privatkunde' ? 'non-active' : 'activeKundenart'} <c:if test="${fn:contains(theString, 'privatkunden')}">active</c:if> "> <a class="dropdown-toggle" data-toggle="dropdown" href="${privatkunden}"><span class="glyphicon glyphicon-th-list"></span>  Privatkunden<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${pStammdaten}"><span class="glyphicon glyphicon-th-large"></span>  Stammdaten</a></li>
							<li class="divider"></li>
							<li ><a class="${sessionScope.currentCustomer.isAbonnent == true ? 'non-active' : ''}" href="${aboAbschliessen}"><span class="glyphicon glyphicon-plus"></span>  Abonnement abschließen</a></li>
							<li ><a class="${sessionScope.currentCustomer.isAbonnent == false ? 'non-active' : ''}" href="${aboKuendigen}"><span class="glyphicon glyphicon-remove"></span>  Abonnement kündigen</a></li>
							<li class="divider"></li>
							<li><a href="${pActivity}"><span class="glyphicon glyphicon-th-large"></span>  Aktivitäten</a></li>
							<li><a href="${pActivityAnlegen}"><span class="glyphicon glyphicon-plus"></span>  Aktivitäten anlegen</a></li>
						</ul>
					</li>

					<li class="dropdown ${sessionScope.currentCustomer.kundenart != 'Geschäftskunde' ? 'non-active' : 'activeKundenart'} <c:if test="${fn:contains(theString, 'businesskunden')}">active</c:if>"><a class="dropdown-toggle" data-toggle="dropdown" href="${businesskunden}"><span class="glyphicon glyphicon-th-list"></span>  Geschäftskunden<span class="caret"></span></a>
						<ul class="dropdown-menu">

							<li><a href="${bStammdaten}"><span class="glyphicon glyphicon-th-large"></span> Stammdaten</a></li>
							<li class="divider"></li>
							<li><a href="${bestellungBearbeiten}"><span class="glyphicon glyphicon-pencil"></span>  Bestellung
									aufgeben/bearbeiten</a></li>
							<li class="divider"></li>
							<li><a href="${bActivity}"><span class="glyphicon glyphicon-th-large"></span>  Aktivitäten</a></li>
							<li><a href="${bActivityAnlegen}"><span class="glyphicon glyphicon-plus"></span>  Aktivitäten anlegen</a></li>
						</ul>
					</li>
					
					<li class="dropdown <c:if test="${fn:contains(theString, 'werbekampagne')}">active</c:if>"><a class="dropdown-toggle" data-toggle="dropdown" href="${werbekampagnen}"><span class="glyphicon glyphicon-th-list"></span>   Werbekampagnen<span class="caret"></span></a>
						<ul class="dropdown-menu">
	
							<li><a href="${wUebersicht}"><span class="glyphicon glyphicon-th-large"></span>  Kampagnenübersicht</a></li>
							<li><a href="${wErstellen}"><span class="glyphicon glyphicon-plus"></span>   Kampagne erstellen</a></li>
	
						</ul>
					</li>
					<!-- 
					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="${homeUrl}">Test<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${getCustomerService}">JsonServiceCustomer</a></li>
							<li class="divider"></li>
							<li><a href="${test}">JDBC Test</a></li>
						</ul>
					</li>
					 -->	
    	        </ul>
    	        
                <!-- Beispiel EintrÃ¤ge fÃ¼r die Navigation-->
    	        <ul class="nav navbar-nav navbar-right">
    	        	<li><a href="http://lvps87-230-14-183.dedicated.hosteurope.de/logout"><span class="glyphicon glyphicon-log-out"></span>  Logout</a></li>

    	        </ul>
            </div>
       </nav>
       
    	<div class="system-nav">
            
			<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
			     url="jdbc:mysql://lvps87-230-14-183.dedicated.hosteurope.de/projekt"
			     user="bas-erp"  password="erplogin"/>
			 
			<sql:query dataSource="${snapshot}" var="result">
			SELECT * from systems;
			</sql:query>

    		<ul>
    			<c:forEach var="row" items="${result.rows}">
	    			<li>
	                    <a href="${row.link}" title="${row.name}">${row.abbreviation}</a>
	                </li>
                </c:forEach>
            </ul>

    	</div>

</div>

<style type="text/css">

  .non-active {
     
      cursor: not-allowed !important;
      pointer-events: none !important;
      background-color: #A9BCF5;
   }
   .non-active:hover {
     
      cursor: not-allowed;
      pointer-events: none;
   }
 </style>