<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<%@ page session="false"%>

		<h1>${message}</h1>

		<p>${message2}</p>

		<table>
			<c:forEach items="${cList}" var="customer">
				<tr>

					<td>Customer Name: <c:out value="${customer.name}" /></td>
					<td>Customer Age: <c:out value="${customer.age}" /></td>
				</tr>
			</c:forEach>

		</table>

	</tiles:putAttribute>
</tiles:insertDefinition>