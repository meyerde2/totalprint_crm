package de.waksh.crm.model;

public class Suche {
	private long cId;
	private String name;
	private String vorname;
	private String firma;
	private boolean isPrivatkunde;
	
	
	public long getcId() {
		return cId;
	}
	public void setcId(long cId) {
		this.cId = cId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getVorname() {
		return vorname;
	}
	public void setVorname(String vorname) {
		this.vorname = vorname;
	}
	public String getFirma() {
		return firma;
	}
	public void setFirma(String firma) {
		this.firma = firma;
	}
	public boolean isPrivatkunde() {
		return isPrivatkunde;
	}
	public void setPrivatkunde(boolean isPrivatkunde) {
		this.isPrivatkunde = isPrivatkunde;
	}


}
