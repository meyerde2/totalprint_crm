package de.waksh.crm.service;

import javax.sql.DataSource;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import de.waksh.crm.dao.JsonDAO;
import de.waksh.crm.model.AboEntity;

public class JsonService implements JsonDAO{

	private DataSource dataSource;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public JSONObject generateJsonAbo(AboEntity abo) {
		

		JSONObject json = new JSONObject();
	    
		try {
			
			// put some value pairs into the JSON object as into a Map.
			
			//Person
			json.put("class", "personalverwaltung.Person");
			json.put("id", "obid");
			json.put("abo", "obid");
			json.put("adresse", "obid");
			json.put("bIC", "obid");
			json.put("bank", "obid");
			
			// put a "map" 
			JSONObject mapDebitor = new JSONObject();
			mapDebitor.put("class", "sasa");
			mapDebitor.put("id", "sasa");
			mapDebitor.put("lieferplz", "sasa");
			mapDebitor.put("lieferstrasseundnr", "sasa");
			mapDebitor.put("lieferort", "sasa");
			mapDebitor.put("mengeA", "sasa");
			mapDebitor.put("mengeB", "sasa");
			mapDebitor.put("Tageszeitung", "sasa");
			mapDebitor.put("kuendigungZum", "sasa");
			
			//json.put("debitor", jArrDebitor);
			// put an "array"
			JSONArray arr = new JSONArray();
			arr.put(mapDebitor);
			json.put("debitor", arr);
			
			
			json.put("iBAN", "ARRAY");
			json.put("kontoinhaber", "ARRAY");
			json.put("ort", "ARRAY");
			json.put("plz", "ARRAY");
			json.put("islastschrift", "ARRAY");
			
			// finally output the json string		
			System.out.println(json.toString());
			
			
		} catch (JSONException e) {
			e.printStackTrace();
		}

		
		return json;
		
	}

	
}
