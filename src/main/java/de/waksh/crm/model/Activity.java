package de.waksh.crm.model;

import java.sql.Date;



public class Activity {
	int aktivitaetenId;
	int kundenId;
	Date date;
	int mitarbeiterId;
	int medienId;
	int grundId;
	String notiz;
	public Activity() {
		
	}
	public Activity(int aktivitaetenId, int kundenId, Date date,
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
	