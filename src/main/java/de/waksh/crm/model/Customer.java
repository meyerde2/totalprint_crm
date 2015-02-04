package de.waksh.crm.model;

public class Customer {
	int custId;
	String name;
	String vorname;
	String strasse;
	String plz;
	String ort;
	String abwStrasse;
	String abwPlz;
	String abwOrt;
	String iban;
	String bic;
	String kontoinhaber;
	String email;
	boolean isPrivatkunde;
	boolean isAbonnent;
	int zahlungsart;
	int mengeA;
	int mengeB;
	int mengeT;
	
	public Customer(int custId, String name, String vorname, String strasse,
			String plz, String ort, String abwStrasse, String abwPlz,
			String abwOrt, String iban, String bic, String kontoinhaber,
			String email, boolean isPrivatkunde, boolean isAbonnent,
			int zahlungsart, int mengeA, int mengeB, int mengeT) {
		super();
		this.custId = custId;
		this.name = name;
		this.vorname = vorname;
		this.strasse = strasse;
		this.plz = plz;
		this.ort = ort;
		this.abwStrasse = abwStrasse;
		this.abwPlz = abwPlz;
		this.abwOrt = abwOrt;
		this.iban = iban;
		this.bic = bic;
		this.kontoinhaber = kontoinhaber;
		this.email = email;
		this.isPrivatkunde = isPrivatkunde;
		this.isAbonnent = isAbonnent;
		this.zahlungsart = zahlungsart;
		this.mengeA = mengeA;
		this.mengeB = mengeB;
		this.mengeT = mengeT;
	}


	@Override
	public String toString() {
		return "Customer [custId=" + custId + ", name=" + name + ", vorname="
				+ vorname + ", strasse=" + strasse + ", plz=" + plz + ", ort="
				+ ort + ", abwStrasse=" + abwStrasse + ", abwPlz=" + abwPlz
				+ ", abwOrt=" + abwOrt + ", iban=" + iban + ", bic=" + bic
				+ ", kontoinhaber=" + kontoinhaber + ", email=" + email
				+ ", isPrivatkunde=" + isPrivatkunde + ", isAbonnent="
				+ isAbonnent + ", zahlungsart=" + zahlungsart + ", mengeA="
				+ mengeA + ", mengeB=" + mengeB + ", mengeT=" + mengeT + "]";
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

	public boolean isPrivatkunde() {
		return isPrivatkunde;
	}

	public void setPrivatkunde(boolean isPrivatkunde) {
		this.isPrivatkunde = isPrivatkunde;
	}

	public boolean isAbonnent() {
		return isAbonnent;
	}

	public void setAbonnent(boolean isAbonnent) {
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

	public Customer(String name, int age) {
		super();
		this.name = name;
	}

	public int getCustId() {
		return custId;
	}

	public void setCustId(int custId) {
		this.custId = custId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
