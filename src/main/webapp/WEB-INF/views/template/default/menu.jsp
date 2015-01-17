<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="menu">
	<spring:url value="/suche" var="suche" htmlEscape="true" />
	<spring:url value="/privatkunden" var="privatkunden" htmlEscape="true" />
	<spring:url value="/businesskunden" var="businesskunden"
		htmlEscape="true" />
	<spring:url value="/werbekampagnen" var="werbekampagnen"
		htmlEscape="true" />
	<spring:url value="/service/customer/" var="getCustomerService"
		htmlEscape="true" />
	<spring:url value="/test" var="test" htmlEscape="true" />


	<div class="btn-toolbar">
		<!--Default buttons with dropdown menu-->
		<div class="btn-group">
			<spring:url value="/home" var="homeUrl" htmlEscape="true" />
			<button type="button" class="btn btn-default"
				onclick="location.href='${homeUrl}'">Startseite</button>
			<button type="button" data-toggle="dropdown"
				class="btn btn-default dropdown-toggle">
				<span class="caret"></span>
			</button>
			<ul class="dropdown-menu">

				<li><a href="${getCustomerService}">JsonServiceCustomer</a></li>
				<li class="divider"></li>
				<li><a href="${test}">JDBC Test</a></li>
			</ul>

		</div>


		<div class="btn-group">
			<spring:url value="/home" var="homeUrl" htmlEscape="true" />
			<button type="button" class="btn btn-default"
				onclick="location.href='${suche}'">Suche</button>
		</div>
		
		
		<div class="btn-group">
			<spring:url value="/home" var="homeUrl" htmlEscape="true" />
			<button type="button" class="btn btn-default"
				onclick="location.href='${privatkunden}'">Privatkunden</button>
			<button type="button" data-toggle="dropdown"
				class="btn btn-default dropdown-toggle">
				<span class="caret"></span>
			</button>
			<ul class="dropdown-menu">

				<li><a href="#">Another action</a></li>
				<li class="divider"></li>
				<li><a href="#">Separated link</a></li>
			</ul>
		</div>

		<div class="btn-group">
			<spring:url value="/home" var="homeUrl" htmlEscape="true" />
			<button type="button" class="btn btn-default"
				onclick="location.href='${businesskunden}'">Geschäftskunden</button>
			<button type="button" data-toggle="dropdown"
				class="btn btn-default dropdown-toggle">
				<span class="caret"></span>
			</button>
			<ul class="dropdown-menu">

				<li><a href="#">Another action</a></li>
				<li class="divider"></li>
				<li><a href="#">Separated link</a></li>
			</ul>
		</div>

		<div class="btn-group">
			<spring:url value="/home" var="homeUrl" htmlEscape="true" />
			<button type="button" class="btn btn-default"
				onclick="location.href='${werbekampagnen}'">Werbekampagnen</button>
			<button type="button" data-toggle="dropdown"
				class="btn btn-default dropdown-toggle">
				<span class="caret"></span>
			</button>
			<ul class="dropdown-menu">

				<li><a href="#">Another action</a></li>
				<li class="divider"></li>
				<li><a href="#">Separated link</a></li>
			</ul>
		</div>

	</div>
</div>