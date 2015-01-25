<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



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
                    <!-- Beispiel Einträge für die Navigation-->
             
					<li class="${theString=='/crm/' ? 'active' : ''}"><a href="${homeUrl}">CRM</a></li>
					<li class="<c:if test="${fn:contains(theString, 'suche')}">active</c:if>"><a href="${suche}">Suche</a></li>

					<li class="dropdown <c:if test="${fn:contains(theString, 'privatkunden')}">active</c:if>"> <a class="dropdown-toggle" data-toggle="dropdown" href="${privatkunden}">Privatkunden<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${pStammdaten}">Stammdaten</a></li>
							<li class="divider"></li>
							<li><a href="${aboAbschliessen}">Abonnement abschlie�en</a></li>
							<li><a href="${aboKuendigen}">Abonnement k�ndigen</a></li>
							<li class="divider"></li>
							<li><a href="${pActivity}">Aktivit�ten</a></li>
							<li><a href="${pActivityAnlegen}">Aktivit�ten anlegen</a></li>
						</ul>
					</li>

					<li class="dropdown <c:if test="${fn:contains(theString, 'businesskunden')}">active</c:if>"><a class="dropdown-toggle" data-toggle="dropdown" href="${businesskunden}">Gesch�ftskunden<span class="caret"></span></a>
						<ul class="dropdown-menu">

							<li><a href="${bStammdaten}">Stammdaten</a></li>
							<li class="divider"></li>
							<li><a href="${bestellungBearbeiten}">Bestellung
									bearbeiten</a></li>
							<li class="divider"></li>
							<li><a href="${bActivity}">Aktivit�ten</a></li>
							<li><a href="${bActivityAnlegen}">Aktivit�ten anlegen</a></li>
						</ul>
					</li>
					
					<li class="dropdown <c:if test="${fn:contains(theString, 'werbekampagne')}">active</c:if>"><a class="dropdown-toggle" data-toggle="dropdown" href="${werbekampagnen}">Werbekampagnen<span class="caret"></span></a>
						<ul class="dropdown-menu">
	
							<li><a href="${wUebersicht}">Kampagnen�bersicht</a></li>
							<li><a href="${wErstellen}">Kampagne erstellen</a></li>
	
						</ul>
					</li>
					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="${homeUrl}">Test<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${getCustomerService}">JsonServiceCustomer</a></li>
							<li class="divider"></li>
							<li><a href="${test}">JDBC Test</a></li>
						</ul>
					</li>	
    	        </ul>
    	        
                <!-- Beispiel Einträge für die Navigation-->
    	        <ul class="nav navbar-nav navbar-right">
    	        	<li><a href="http://lvps87-230-14-183.dedicated.hosteurope.de/logout">Logout</a></li>
    	        </ul>
            </div>
       </nav>
       
    	<div class="system-nav">
            <!-- Navigation zum Wechsel der Systeme     Info: Einträge müssen aus der Datenbank geladen werden Beispiel PHP:
            $this->systems = Inhalt aus "SELECT * From system_info" -->

                <!--  foreach ($this->systems as $key => $value) {-->
                   <!--  echo '<li><a href="'. $value["link"] .'" title="'. $value["name"] .'">'. $value["shortcut"] .'</a></li>';
                }-->
            

    		<ul>
    			<li>
                    <a href="http://lvps87-230-14-183.dedicated.hosteurope.de/" title="Dashboard">Dashboard</a>
                </li>
                <li>
                    <a href="http://www.projektname.de/erp" title="Enterprise-Resource-Planning">ERP</a>
                </li>
                <li>
                    <a href="http://www.projektname.de/erp" title="Customer-Relationship-Management">CRM</a>
                </li>
                <li>
                    <a href="http://www.projektname.de/ecm" title="Enterprice Content Management">ECM</a>
                </li>
                <li>
                    <a href="" title="Test">Test</a>
                </li>
            </ul>

    	</div>

</div>