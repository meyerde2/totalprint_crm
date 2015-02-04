package de.waksh.crm.dao;

import java.util.ArrayList;

import de.waksh.crm.model.Activity;

public interface ActivityDAO {

	public ArrayList<Activity> getAllActivities();
	public void insertActivity(Activity activity);
	public String getMediumById(int id);
	public String getGrundById(int id);
	
}
