package de.waksh.crm.model;

import java.sql.Date;



public class ActivityEntity {
	int aktivitaetenId;
	int kundenId;
	String kundenBez;
	Date date;
	int mitarbeiterId;
	String mitarbeiterBez;
	int medienId;
	String mediumBez;
	int grundId;
	String grundBez;
	String notiz;
	public ActivityEntity() {
		
	}
	public ActivityEntity(int aktivitaetenId, int kundenId, String kundenBez,
			Date date, int mitarbeiterId, String mitarbeiterBez, int medienId,
			String mediumBez, int grundId, String grundBez, String notiz) {
		super();
		this.aktivitaetenId = aktivitaetenId;
		this.kundenId = kundenId;
		this.kundenBez = kundenBez;
		this.date = date;
		this.mitarbeiterId = mitarbeiterId;
		this.mitarbeiterBez = mitarbeiterBez;
		this.medienId = medienId;
		this.mediumBez = mediumBez;
		this.grundId = grundId;
		this.grundBez = grundBez;
		this.notiz = notiz;
	}
	public String getKundenBez() {
		return kundenBez;
	}
	public void setKundenBez(String kundenBez) {
		this.kundenBez = kundenBez;
	}
	public String getMitarbeiterBez() {
		return mitarbeiterBez;
	}
	public void setMitarbeiterBez(String mitarbeiterBez) {
		this.mitarbeiterBez = mitarbeiterBez;
	}
	public String getMediumBez() {
		return mediumBez;
	}
	public void setMediumBez(String mediumBez) {
		this.mediumBez = mediumBez;
	}
	public String getGrundBez() {
		return grundBez;
	}
	public void setGrundBez(String grundBez) {
		this.grundBez = grundBez;
	}
	public ActivityEntity(int aktivitaetenId, int kundenId, Date date,
			int mitarbeiterId, int medienId, int grundId, String notiz) {
		super();
		this.aktivitaetenId = aktivitaetenId;
		this.kundenId = kundenId;
		this.date = date;
		this.mitarbeiterId = mitarbeiterId;
		this.medienId = medienId;
		this.grundId = grundId;
		this.notiz = notiz;
	}
	
	@Override
	public String toString() {
		return "Activity [aktivitaetenId=" + aktivitaetenId + ", kundenId="
				+ kundenId + ", date=" + date + ", mitarbeiterId="
				+ mitarbeiterId + ", medienId=" + medienId + ", grundId="
				+ grundId + ", notiz=" + notiz + "]";
	}

	public int getAktivitaetenId() {
		return aktivitaetenId;
	}
	public void setAktivitaetenId(int aktivitaetenId) {
		this.aktivitaetenId = aktivitaetenId;
	}
	public int getKundenId() {
		return kundenId;
	}
	public void setKundenId(int kundenId) {
		this.kundenId = kundenId;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getMitarbeiterId() {
		return mitarbeiterId;
	}
	public void setMitarbeiterId(int mitarbeiterId) {
		this.mitarbeiterId = mitarbeiterId;
	}
	public int getMedienId() {
		return medienId;
	}
	public void setMedienId(int medienId) {
		this.medienId = medienId;
	}
	public int getGrundId() {
		return grundId;
	}
	public void setGrundId(int grundId) {
		this.grundId = grundId;
	}
	public String getNotiz() {
		return notiz;
	}
	public void setNotiz(String notiz) {
		this.notiz = notiz;
	}
	
}
	