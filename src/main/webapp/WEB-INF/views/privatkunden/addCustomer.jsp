
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<tiles:insertDefinition name="defaultTemplate">
		<tiles:putAttribute name="body">

	<h2>Customer hinzufügen</h2>
	<form method="POST" action="/crm/submitAddCustomer">
		<table>
			<tr>
				<td><label>Name</label></td>
				<td><input type="text" name="name" id="name"></td>
			</tr>
			<tr>
				<td><label>Age</label></td>
				<td><input type="text" name="age" id="age"></td>

			</tr>
					<tr>
				<td><label>ID</label></td>
				<td><input type="text" name="id" id="id"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form>

		</tiles:putAttribute>
	</tiles:insertDefinition>