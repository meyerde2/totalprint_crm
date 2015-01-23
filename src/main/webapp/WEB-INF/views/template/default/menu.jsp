<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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
                	
					<li><a href="${homeUrl}">CRM</a></li>
					<li><a href="${suche}">Suche</a></li>

					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="${privatkunden}">Privatkunden<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${pStammdaten}">Stammdaten</a></li>
							<li class="divider"></li>
							<li><a href="${aboAbschliessen}">Abonnement abschließen</a></li>
							<li><a href="${aboKuendigen}">Abonnement kündigen</a></li>
							<li class="divider"></li>
							<li><a href="${pActivity}">Aktivitäten</a></li>
							<li><a href="${pActivityAnlegen}">Aktivitäten anlegen</a></li>
						</ul>
					</li>

					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="${businesskunden}">Geschäftskunden<span class="caret"></span></a>
						<ul class="dropdown-menu">

							<li><a href="${bStammdaten}">Stammdaten</a></li>
							<li class="divider"></li>
							<li><a href="${bestellungBearbeiten}">Bestellung
									bearbeiten</a></li>
							<li class="divider"></li>
							<li><a href="${bActivity}">Aktivitäten</a></li>
							<li><a href="${bActivityAnlegen}">Aktivitäten anlegen</a></li>
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
                <!-- Beispiel EintrÃ¤ge fÃ¼r die Navigation-->
    	        <ul class="nav navbar-nav navbar-right">
    	        	<li><a href="http://lvps87-230-14-183.dedicated.hosteurope.de/logout">Logout</a></li>
    	        </ul>
            </div>
       </nav>
    	<div class="system-nav">
            <!-- Navigation zum Wechsel der Systeme -->
            <!-- 
                Info: EintrÃ¤ge mÃ¼ssen aus der Datenbank geladen werden
                Beispiel PHP:
                $this->systems = Inhalt aus "SELECT * From system_info"

                foreach ($this->systems as $key => $value) {
                    echo '<li><a href="'. $value["link"] .'" title="'. $value["name"] .'">'. $value["shortcut"] .'</a></li>';
                }
            -->

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
