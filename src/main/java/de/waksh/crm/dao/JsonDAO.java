package de.waksh.crm.dao;

import java.io.IOException;

import org.json.JSONObject;

import de.waksh.crm.model.AboEntity;

public interface  JsonDAO {

	public boolean putJsonToErp(String url, JSONObject obj);
	public JSONObject generateJsonAbo(AboEntity abo);
}
