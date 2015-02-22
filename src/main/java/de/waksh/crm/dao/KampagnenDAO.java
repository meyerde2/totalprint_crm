package de.waksh.crm.dao;

import java.util.ArrayList;

import de.waksh.crm.model.WerbekampagnenEntity;

public interface KampagnenDAO {
	public ArrayList<WerbekampagnenEntity> getAllKampagnen();
	
	public WerbekampagnenEntity getKampagneById(int id);
	public void updateKampagneById(WerbekampagnenEntity k);
	public void insertKampagne(WerbekampagnenEntity k);
	
}
