
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<title>Privatkunden</title>

		<div class="body">
			<h1>Privatkunden !</h1>

		<form method="POST" action="/crm/submitAddAbo" >
				<table>
					<tr>
						<td><label>Kundennummer</label></td>
						<td><input type="text" class="form-control"name="cID" id="cID"></td>
					</tr>
					<tr>
						<td><label>Name</label></td>
						<td><input type="text" class="form-control"name="name" id="name"></td>

					</tr>
					<tr>
						<td><label>Vorname</label></td>
						<td><input type="text" class="form-control"name="vorname" id="vorname"></td>
					</tr>
					<tr>
						<td><label>Abonnement?</label></td>
						<td>
							<input type="checkbox"class="checkbox-inline"name="abo" id="abo" value="ja"> 
						</td>
					</tr>
					<tr>
						<td><label>Wirksamkeitsdatum der Kündigung</label></td>
						<td><input type="text" class="form-control"name="dateUntil" id="dateUntil"></td>
					</tr>
					<tr>
						<td></td>
						<td colspan="2"><input type="submit" class="form-control"value="Abonnement abschließen" /></td>
					</tr>
				</table>
			</form>
		</div>



	</tiles:putAttribute>
</tiles:insertDefinition>