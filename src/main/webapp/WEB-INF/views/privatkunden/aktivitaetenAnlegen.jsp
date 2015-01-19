<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<title>Privatkunden - Aktivität anlegen</title>

		<div class="body">
			<h1>Privatkunden - Aktivität anlegen</h1>

			<form method="POST" action="/crm/submitAddActivity">
				<table id="activity">
					<tr>
						<td><label>Datum</label></td>
						<td><input type="text" class="form-control"name="date" id="date"></td>
					</tr>
					<tr>
						<td><label>Mitarbeitername</label></td>
						<td>
							<select class="form-control" name="ma" size="1">
								<option>---bitte wählen---</option>
								<option>Schweini</option>
								<option>Poldi</option>
								<option>Özil</option>
								<option>Götze</option>
								<option>Boateng</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><label>Kontaktmedium</label></td>
						<td>
							<select class="form-control" name="medium" size="1">
								<option>---bitte wählen---</option>
								<option>Telefon</option>
								<option>E-Mail</option>
								<option>Post</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><label>Kontaktgrund</label></td>
						<td>
							<select class="form-control" name="grund" size="1">
								<option>---bitte wählen---</option>
								<option>Abonnementabschluss</option>
								<option>Kündigung</option>
								<option>Adressänderung</option>
								<option>Beschwerde</option>
								<option>Sonstiges</option>
							</select>
						</td>
					</tr>
					<tr id="sonstiges">
						<td><label>Sonstiges</label></td>
						<td><input type="text" class="form-control" name="sonstiges" id="sonstiges"></td>
					</tr>
					<tr>
						<td><label>Notiz</label></td>
						<td><textarea name="notiz" class="form-control" id="notiz"cols="50" rows="5"></textarea></td>
					</tr>
				</table>
			</form>
		</div>

	</tiles:putAttribute>
</tiles:insertDefinition>