package de.waksh.crm.model;

public class Customer {
	int id;
	String anrede;
	String name;
	String vorname;
	String strasse;
	String plz;
	String ort;
	String firma;
	String abwStrasse;
	String abwPlz;
	String abwOrt;
	String iban;
	String bic;
	String kontoinhaber;
	String email;
	String kundenart;
	boolean isAbonnent;
	int zahlungsart;
	int mengeA;
	int mengeB;
	int mengeT;

	public Customer(int id, String anrede, String name, String vorname,
			String strasse, String plz, String ort, String firma,
			String abwStrasse, String abwPlz, String abwOrt, String iban,
			String bic, String kontoinhaber, String email, String kundenart,
			boolean isAbonnent, int zahlungsart, int mengeA, int mengeB,
			int mengeT) {
		super();
		this.id = id;
		this.anrede = anrede;
		this.name = name;
		this.vorname = vorname;
		this.strasse = strasse;
		this.plz = plz;
		this.ort = ort;
		this.firma = firma;
		this.abwStrasse = abwStrasse;
		this.abwPlz = abwPlz;
		this.abwOrt = abwOrt;
		this.iban = iban;
		this.bic = bic;
		this.kontoinhaber = kontoinhaber;
		this.email = email;
		this.kundenart = kundenart;
		this.isAbonnent = isAbonnent;
		this.zahlungsart = zahlungsart;
		this.mengeA = mengeA;
		this.mengeB = mengeB;
		this.mengeT = mengeT;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", anrede=" + anrede + ", name=" + name
				+ ", vorname=" + vorname + ", strasse=" + strasse + ", plz="
				+ plz + ", ort=" + ort + ", firma=" + firma + ", abwStrasse="
				+ abwStrasse + ", abwPlz=" + abwPlz + ", abwOrt=" + abwOrt
				+ ", iban=" + iban + ", bic=" + bic + ", kontoinhaber="
				+ kontoinhaber + ", email=" + email + ", kundenart="
				+ kundenart + ", isAbonnent=" + isAbonnent + ", zahlungsart="
				+ zahlungsart + ", mengeA=" + mengeA + ", mengeB=" + mengeB
				+ ", mengeT=" + mengeT + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAnrede() {
		return anrede;
	}

	public void setAnrede(String anrede) {
		this.anrede = anrede;
	}

	public String getVorname() {
		return vorname;
	}

	public void setVorname(String vorname) {
		this.vorname = vorname;
	}

	public String getStrasse() {
		return strasse;
	}

	public void setStrasse(String strasse) {
		this.strasse = strasse;
	}

	public String getPlz() {
		return plz;
	}

	public void setPlz(String plz) {
		this.plz = plz;
	}

	public String getOrt() {
		return ort;
	}

	public void setOrt(String ort) {
		this.ort = ort;
	}

	public String getFirma() {
		return firma;
	}

	public void setFirma(String firma) {
		this.firma = firma;
	}

	public String getAbwStrasse() {
		return abwStrasse;
	}

	public void setAbwStrasse(String abwStrasse) {
		this.abwStrasse = abwStrasse;
	}

	public String getAbwPlz() {
		return abwPlz;
	}

	public void setAbwPlz(String abwPlz) {
		this.abwPlz = abwPlz;
	}

	public String getAbwOrt() {
		return abwOrt;
	}

	public void setAbwOrt(String abwOrt) {
		this.abwOrt = abwOrt;
	}

	public String getKundenart() {
		return kundenart;
	}

	public void setKundenart(String kundenart) {
		this.kundenart = kundenart;
	}

	public String getIban() {
		return iban;
	}

	public void setIban(String iban) {
		this.iban = iban;
	}

	public String getBic() {
		return bic;
	}

	public void setBic(String bic) {
		this.bic = bic;
	}

	public String getKontoinhaber() {
		return kontoinhaber;
	}

	public void setKontoinhaber(String kontoinhaber) {
		this.kontoinhaber = kontoinhaber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isAbonnent() {
		return isAbonnent;
	}

	public boolean getIsAbonnent() {
		return isAbonnent;
	}

	public void setAbonnent(boolean isAbonnent) {
		this.isAbonnent = isAbonnent;
	}

	public void setIsAbonnent(boolean isAbonnent) {
		this.isAbonnent = isAbonnent;
	}

	public int getZahlungsart() {
		return zahlungsart;
	}

	public void setZahlungsart(int zahlungsart) {
		this.zahlungsart = zahlungsart;
	}

	public int getMengeA() {
		return mengeA;
	}

	public void setMengeA(int mengeA) {
		this.mengeA = mengeA;
	}

	public int getMengeB() {
		return mengeB;
	}

	public void setMengeB(int mengeB) {
		this.mengeB = mengeB;
	}

	public int getMengeT() {
		return mengeT;
	}

	public void setMengeT(int mengeT) {
		this.mengeT = mengeT;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
