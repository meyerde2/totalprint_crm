package de.waksh.crm.model;

import java.sql.Date;

public class SonderausgabeEntity {

	
	String kampagnenBez;
	Date dateBeginn;
	Date dateUntil;
	int grundId;
	int zielgruppeId;
	int themenId;
	int anzahlExemplare;
	int anzahlVerkaufteExemplare;
	int anzahlInserate;
	double kosten;
	double umsatz;
	int resonanz;
	String notiz;
	
	public SonderausgabeEntity(){
		
	}
	public SonderausgabeEntity(String kampagnenBez, Date dateBeginn,
			Date dateUntil, int grundId, int zielgruppeId, int themenId,
			int anzahlExemplare, int anzahlVerkaufteExemplare,
			int anzahlInserate, double kosten, double umsatz, int resonanz,
			String notiz) {
		super();
		this.kampagnenBez = kampagnenBez;
		this.dateBeginn = dateBeginn;
		this.dateUntil = dateUntil;
		this.grundId = grundId;
		this.zielgruppeId = zielgruppeId;
		this.themenId = themenId;
		this.anzahlExemplare = anzahlExemplare;
		this.anzahlVerkaufteExemplare = anzahlVerkaufteExemplare;
		this.anzahlInserate = anzahlInserate;
		this.kosten = kosten;
		this.umsatz = umsatz;
		this.resonanz = resonanz;
		this.notiz = notiz;
	}
	
	@Override
	public String toString() {
		return "SonderausgabeEntity [kampagnenBez=" + kampagnenBez
				+ ", dateBeginn=" + dateBeginn + ", dateUntil=" + dateUntil
				+ ", grundId=" + grundId + ", zielgruppeId=" + zielgruppeId
				+ ", themenId=" + themenId + ", anzahlExemplare="
				+ anzahlExemplare + ", anzahlVerkaufteExemplare="
				+ anzahlVerkaufteExemplare + ", anzahlInserate="
				+ anzahlInserate + ", kosten=" + kosten + ", umsatz=" + umsatz
				+ ", resonanz=" + resonanz + ", notiz=" + notiz + "]";
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
	public int getZielgruppeId() {
		return zielgruppeId;
	}
	public void setZielgruppeId(int zielgruppeId) {
		this.zielgruppeId = zielgruppeId;
	}
	public int getThemenId() {
		return themenId;
	}
	public void setThemenId(int themenId) {
		this.themenId = themenId;
	}
	public int getAnzahlExemplare() {
		return anzahlExemplare;
	}
	public void setAnzahlExemplare(int anzahlExemplare) {
		this.anzahlExemplare = anzahlExemplare;
	}
	public int getAnzahlVerkaufteExemplare() {
		return anzahlVerkaufteExemplare;
	}
	public void setAnzahlVerkaufteExemplare(int anzahlVerkaufteExemplare) {
		this.anzahlVerkaufteExemplare = anzahlVerkaufteExemplare;
	}
	public int getAnzahlInserate() {
		return anzahlInserate;
	}
	public void setAnzahlInserate(int anzahlInserate) {
		this.anzahlInserate = anzahlInserate;
	}
	public double getKosten() {
		return kosten;
	}
	public void setKosten(double kosten) {
		this.kosten = kosten;
	}
	public double getUmsatz() {
		return umsatz;
	}
	public void setUmsatz(double umsatz) {
		this.umsatz = umsatz;
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
