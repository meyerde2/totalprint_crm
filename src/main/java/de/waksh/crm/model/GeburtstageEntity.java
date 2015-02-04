package de.waksh.crm.model;

import java.sql.Date;

public class GeburtstageEntity {

	
	String kampagnenBez;
	Date dateBeginn;
	Date dateUntil;
	int grundId;
	double kosten;
	int geschenkartId;
	int resonanz;
	String notiz;
	
	public GeburtstageEntity(){
		
	}

	public GeburtstageEntity(String kampagnenBez, Date dateBeginn,
			Date dateUntil, int grundId, double kosten, int geschenkartId, int resonanz,
			String notiz) {
		super();
		this.kampagnenBez = kampagnenBez;
		this.dateBeginn = dateBeginn;
		this.dateUntil = dateUntil;
		this.grundId = grundId;
		this.kosten = kosten;
		this.geschenkartId = geschenkartId;
		this.resonanz = resonanz;
		this.notiz = notiz;
	}

	
	
	
	@Override
	public String toString() {
		return "GeburtstageEntity [kampagnenBez=" + kampagnenBez
				+ ", dateBeginn=" + dateBeginn + ", dateUntil=" + dateUntil
				+ ", grundId=" + grundId + ", kosten=" + kosten
				+ ", geschenkartId=" + geschenkartId + ", resonanz=" + resonanz
				+ ", notiz=" + notiz + "]";
	}

	public int getGeschenkartId() {
		return geschenkartId;
	}

	public void setGeschenkartId(int geschenkartId) {
		this.geschenkartId = geschenkartId;
	}

	public String getKampagnenBez() {
		return kampagnenBez;
	}

	public void setKampagnenBez(String kampagnenBez) {
		this.kampagnenBez = kampagnenBez;
	}

	public Date getDateBeginn() {
		return dateBeginn;
	}

	public void setDateBeginn(Date dateBeginn) {
		this.dateBeginn = dateBeginn;
	}

	public Date getDateUntil() {
		return dateUntil;
	}

	public void setDateUntil(Date dateUntil) {
		this.dateUntil = dateUntil;
	}

	public int getGrundId() {
		return grundId;
	}

	public void setGrundId(int grundId) {
		this.grundId = grundId;
	}

	public double getKosten() {
		return kosten;
	}

	public void setKosten(double kosten) {
		this.kosten = kosten;
	}

	public int getResonanz() {
		return resonanz;
	}

	public void setResonanz(int resonanz) {
		this.resonanz = resonanz;
	}

	public String getNotiz() {
		return notiz;
	}

	public void setNotiz(String notiz) {
		this.notiz = notiz;
	}

	
	
}
