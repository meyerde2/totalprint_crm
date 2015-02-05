package de.waksh.crm.dao;

import java.util.ArrayList;

import de.waksh.crm.model.SonderausgabeEntity;

public interface KampagnenDAO {

	public ArrayList<SonderausgabeEntity> getAllSonderausgaben();
	public void insertSonderausgabe(SonderausgabeEntity sonderausgabe);
	public void insertBeilage(SonderausgabeEntity beilage);
	
}
