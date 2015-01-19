<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="menu">
	<spring:url value="/" var="homeUrl" htmlEscape="true" />

	<spring:url value="/suche" var="suche" htmlEscape="true" />

	<spring:url value="/privatkunden" var="privatkunden" htmlEscape="true" />
	<spring:url value="/privatkunden/stammdaten" var="pStammdaten"
		htmlEscape="true" />
	<spring:url value="/privatkunden/aboAbschliessen" var="aboAbschliessen"
		htmlEscape="true" />
	<spring:url value="/privatkunden/aboKuendigen" var="aboKuendigen"
		htmlEscape="true" />
	<spring:url value="/privatkunden/activity" var="pActivity"
		htmlEscape="true" />
	<spring:url value="/privatkunden/activityAnlegen"
		var="pActivityAnlegen" htmlEscape="true" />

	<spring:url value="/businesskunden" var="businesskunden"
		htmlEscape="true" />
	<spring:url value="/businesskunden/stammdaten" var="bStammdaten"
		htmlEscape="true" />
	<spring:url value="/businesskunden/bestellungBearbeiten"
		var="bestellungBearbeiten" htmlEscape="true" />
	<spring:url value="/businesskunden/activity" var="bActivity"
		htmlEscape="true" />
	<spring:url value="/businesskunden/activityAnlegen"
		var="bActivityAnlegen" htmlEscape="true" />

	<spring:url value="/werbekampagnen" var="werbekampagnen"
		htmlEscape="true" />

	<spring:url value="/service/customer/" var="getCustomerService"
		htmlEscape="true" />
	<spring:url value="/test" var="test" htmlEscape="true" />


	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="${homeUrl}">CRM</a>
			</div>
			<div>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="${homeUrl}">Home<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${getCustomerService}">JsonServiceCustomer</a></li>
							<li class="divider"></li>
							<li><a href="${test}">JDBC Test</a></li>
						</ul></li>
					<li ><a href="${suche}">Suche</a></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="${privatkunden}">Privatkunden<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${pStammdaten}">Stammdaten</a></li>
							<li class="divider"></li>
							<li><a href="${aboAbschliessen}">Abonnement abschlie�en</a></li>
							<li><a href="${aboKuendigen}">Abonnement k�ndigen</a></li>
							<li class="divider"></li>
							<li><a href="${pActivity}">Aktivit�ten</a></li>
							<li><a href="${pActivityAnlegen}">Aktivit�ten anlegen</a></li>
						</ul></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="${businesskunden}">Gesch�ftskunden<span
							class="caret"></span></a>
						<ul class="dropdown-menu">

							<li><a href="${bStammdaten}">Stammdaten</a></li>
							<li class="divider"></li>
							<li><a href="${bestellungBearbeiten}">Bestellung
									bearbeiten</a></li>
							<li class="divider"></li>
							<li><a href="${bActivity}">Aktivit�ten</a></li>
							<li><a href="${bActivityAnlegen}">Aktivit�ten anlegen</a></li>
						</ul></li>


					<li><a href="${werbekampagnen}">Werbekampagnen</a></li>
				</ul>
			</div>
		</div>
	</nav>


</div>
</div>