package de.waksh.crm.model;

public class Suche {
	private long cId;
	private String name;
	private String vorname;
	private String firma;
	private String kundenart;
	
	
	public Suche() {
		
	}
	public Suche(long cId, String name, String vorname, String firma,
			String  kundenart) {
		super();
		this.cId = cId;
		this.name = name;
		this.vorname = vorname;
		this.firma = firma;
		this.kundenart = kundenart;
	}
	@Override
	public String toString() {
		return "Suche [cId=" + cId + ", name=" + name + ", vorname=" + vorname
				+ ", firma=" + firma + ", kundenart=" + kundenart + "]";
	}
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
	public String getKundenart() {
		return kundenart;
	}
	public void setKundenart(String kundenart) {
		this.kundenart = kundenart;
	}


}
