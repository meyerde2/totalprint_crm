package de.waksh.crm.dao;

import java.util.ArrayList;

import de.waksh.crm.model.Activity;
import de.waksh.crm.model.ActivityEntity;

public interface ActivityDAO {

	public ArrayList<ActivityEntity> getAllActivities();
	public void insertActivity(Activity activity);
	public String getMediumById(int id);
	public String getGrundById(int id);
	public int insertNewGrund(String grund);
	
}
