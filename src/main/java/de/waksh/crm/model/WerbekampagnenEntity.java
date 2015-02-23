package de.waksh.crm.model;

import java.sql.Date;

public class WerbekampagnenEntity {

	int kampagnenId;
	String kampagnenBez;
	Date dateBeginn;
	Date dateUntil;
	int artId;
	String art;
	int grundId;
	String grund;
	int beilageBeiId;
	String beilageBei;
	int zielgruppeId;
	String zielgruppe;
	String zielgruppenNotiz;
	String thema;
	int anzahlExemplare;
	int anzahlVerkaufteExemplare;
	int anzahlInserate;
	String geschenk;
	double kosten;
	double umsatz;
	int resonanz;
	double plankosten;
	double budget;
	int werbemittelId;
	String notiz;
	int status;
	
	public WerbekampagnenEntity(){
		
	}

	public WerbekampagnenEntity(int kampagnenId, String kampagnenBez,
			Date dateBeginn, Date dateUntil, int artId, String art,
			int grundId, String grund, int beilageBeiId, String beilageBei,
			int zielgruppeId, String zielgruppe, String zielgruppenNotiz,
			String thema, int anzahlExemplare, int anzahlVerkaufteExemplare,
			int anzahlInserate, String geschenk, double kosten, double umsatz,
			int resonanz, double plankosten, double budget, int werbemittelId,
			String notiz, int status) {
		super();
		this.kampagnenId = kampagnenId;
		this.kampagnenBez = kampagnenBez;
		this.dateBeginn = dateBeginn;
		this.dateUntil = dateUntil;
		this.artId = artId;
		this.art = art;
		this.grundId = grundId;
		this.grund = grund;
		this.beilageBeiId = beilageBeiId;
		this.beilageBei = beilageBei;
		this.zielgruppeId = zielgruppeId;
		this.zielgruppe = zielgruppe;
		this.zielgruppenNotiz = zielgruppenNotiz;
		this.thema = thema;
		this.anzahlExemplare = anzahlExemplare;
		this.anzahlVerkaufteExemplare = anzahlVerkaufteExemplare;
		this.anzahlInserate = anzahlInserate;
		this.geschenk = geschenk;
		this.kosten = kosten;
		this.umsatz = umsatz;
		this.resonanz = resonanz;
		this.plankosten = plankosten;
		this.budget = budget;
		this.werbemittelId = werbemittelId;
		this.notiz = notiz;
		this.status = status;
	}




	@Override
	public String toString() {
		return "WerbekampagnenEntity [kampagnenId=" + kampagnenId
				+ ", kampagnenBez=" + kampagnenBez + ", dateBeginn="
				+ dateBeginn + ", dateUntil=" + dateUntil + ", artId=" + artId
				+ ", art=" + art + ", grundId=" + grundId + ", grund=" + grund
				+ ", beilageBeiId=" + beilageBeiId + ", beilageBei="
				+ beilageBei + ", zielgruppeId=" + zielgruppeId
				+ ", zielgruppe=" + zielgruppe + ", zielgruppenNotiz="
				+ zielgruppenNotiz + ", thema=" + thema + ", anzahlExemplare="
				+ anzahlExemplare + ", anzahlVerkaufteExemplare="
				+ anzahlVerkaufteExemplare + ", anzahlInserate="
				+ anzahlInserate + ", geschenk=" + geschenk + ", kosten="
				+ kosten + ", umsatz=" + umsatz + ", resonanz=" + resonanz
				+ ", plankosten=" + plankosten + ", budget=" + budget
				+ ", werbemittelId=" + werbemittelId + ", notiz=" + notiz + status + "]";
	}

	public int getKampagnenId() {
		return kampagnenId;
	}

	public void setKampagnenId(int kampagnenId) {
		this.kampagnenId = kampagnenId;
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

	public int getArtId() {
		return artId;
	}

	public void setArtId(int artId) {
		this.artId = artId;
	}

	public String getArt() {
		return art;
	}

	public void setArt(String art) {
		this.art = art;
	}

	public int getGrundId() {
		return grundId;
	}

	public void setGrundId(int grundId) {
		this.grundId = grundId;
	}

	public String getGrund() {
		return grund;
	}

	public void setGrund(String grund) {
		this.grund = grund;
	}

	public int getBeilageBeiId() {
		return beilageBeiId;
	}

	public void setBeilageBeiId(int beilageBeiId) {
		this.beilageBeiId = beilageBeiId;
	}

	public String getBeilageBei() {
		return beilageBei;
	}

	public void setBeilageBei(String beilageBei) {
		this.beilageBei = beilageBei;
	}

	public int getZielgruppeId() {
		return zielgruppeId;
	}

	public void setZielgruppeId(int zielgruppeId) {
		this.zielgruppeId = zielgruppeId;
	}

	public String getZielgruppe() {
		return zielgruppe;
	}

	public void setZielgruppe(String zielgruppe) {
		this.zielgruppe = zielgruppe;
	}

	public String getZielgruppenNotiz() {
		return zielgruppenNotiz;
	}


	public void setZielgruppenNotiz(String zielgruppenNotiz) {
		this.zielgruppenNotiz = zielgruppenNotiz;
	}


	public String getThema() {
		return thema;
	}

	public void setThema(String thema) {
		this.thema = thema;
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

	public String getGeschenk() {
		return geschenk;
	}

	public void setGeschenk(String geschenk) {
		this.geschenk = geschenk;
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

	public double getPlankosten() {
		return plankosten;
	}

	public void setPlankosten(double plankosten) {
		this.plankosten = plankosten;
	}

	public double getBudget() {
		return budget;
	}

	public void setBudget(double budget) {
		this.budget = budget;
	}

	public int getWerbemittelId() {
		return werbemittelId;
	}

	public void setWerbemittelId(int werbemittelId) {
		this.werbemittelId = werbemittelId;
	}

	public String getNotiz() {
		return notiz;
	}

	public void setNotiz(String notiz) {
		this.notiz = notiz;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
}