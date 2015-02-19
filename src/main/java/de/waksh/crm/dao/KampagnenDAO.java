package de.waksh.crm.dao;

import java.util.ArrayList;

import de.waksh.crm.model.GeburtstageEntity;
import de.waksh.crm.model.SonderausgabeEntity;
import de.waksh.crm.model.WerbekampagnenEntity;

public interface KampagnenDAO {
	public ArrayList<WerbekampagnenEntity> getAllKampagnen();
	
	public ArrayList<SonderausgabeEntity> getAllSonderausgaben();
	public void insertSonderausgabe(SonderausgabeEntity sonderausgabe, int artId);
	public void insertGeburtstagsentity(GeburtstageEntity geburtstag);
	
}
