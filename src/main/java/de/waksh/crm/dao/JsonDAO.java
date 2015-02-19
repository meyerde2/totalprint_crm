package de.waksh.crm.dao;

import org.json.JSONObject;

import de.waksh.crm.model.AboEntity;

public interface  JsonDAO {

	public JSONObject generateJsonAbo(AboEntity abo);
}
