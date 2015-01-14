<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page session="false" %>
<html>
<head>
    <title>Test page</title>
</head>
<body>
<h1>
    ${message} 
</h1>

<p>${message2} </p>


<table>
<c:forEach items="${cList}" var="customer">
    <tr>

        <td>Customer Name: <c:out value="${customer.name}"/></td>  
        <td>Customer Age: <c:out value="${customer.age}"/></td>  
    </tr>
</c:forEach>

</table>
</body>
</html>