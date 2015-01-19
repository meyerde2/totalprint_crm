<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<title>Geschäftskunden - Bestellung bearbeiten</title>

		<div class="body">
			<h1>Geschäftskunden - Bestellung bearbeiten</h1>

			<form method="POST" action="/crm/privatkunden/submitAddAbo">
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
						<td><label>Zahlungsart</label></td>
						<td><input type="radio" class="radio-inline"name="zahlungsart" id="zahlungsart"
							value="rechnung">Rechnung <input type="radio"
							class="radio-inline"name="zahlungsart" id="zahlungsart" value="lastschrift">Lastschrift
						</td>
					</tr>

					<tr class="payment">
						<td><label>IBAN</label></td>
						<td><input type="text" class="form-control"name="iban" id="iban"></td>
					</tr>
					<tr class="payment">
						<td><label>BIC</label></td>
						<td><input type="text" class="form-control"name="bic" id="bic"></td>
					</tr>
					<tr class="payment">
						<td><label>Kontoinhaber</label></td>
						<td><input type="text" class="form-control"name="kontoinhaber" id="kontoinhaber"></td>
					</tr>
					<tr class="payment">
						<td><label>Bank</label></td>
						<td><input type="text" class="form-control"name="bank" id="bank"></td>
					</tr>
					<tr>
						<td><label>Abweichende Lieferadresse</label></td>
						<td>
							<input type="checkbox" class="checkbox-inline"name="abwLieferadresse" id="abwLieferadresse" value="ja"> 
						</td>
					</tr>
			
					<tr class="abwLieferadresse">
						<td><label>Strasse</label></td>
						<td><input type="text" class="form-control"name="strasse" id="strasse"></td>
					</tr>
					<tr class="abwLieferadresse">
						<td><label>PLZ</label></td>
						<td><input type="text" class="form-control"name="plz" id="plz"></td>
					</tr>
					<tr class="abwLieferadresse">
						<td><label>Ort</label></td>
						<td><input type="text" class="form-control"name="ort" id="ort"></td>
					</tr>

					<tr>
						<td></td>
						<td colspan="2"><input type="submit" class="form-control"value="Bestellung bearbeiten" /></td>
					</tr>
				</table>
			</form>

		</div>

	</tiles:putAttribute>
</tiles:insertDefinition>