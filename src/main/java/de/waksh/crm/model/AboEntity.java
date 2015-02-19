package de.waksh.crm.model;

public class AboEntity {

	int customerId;
	Boolean isLastschrift;
	String iban;
	String bic;
	String bank;
	String kontoinhaber;
	Boolean isAbweichendeLieferanschrift;
	String lieferStrasse;
	String lieferPlz;
	String lieferOrt;
	int mengeZeitschriftA;
	int mengeZeitschriftB;
	int mengeTageszeitung;
	
	public AboEntity(int customerId, Boolean isLastschrift,
			String iban, String bic, String bank, String kontoinhaber,
			Boolean isAbweichendeLieferanschrift, String lieferStrasse,
			String lieferPlz, String lieferOrt, int mengeZeitschriftA,
			int mengeZeitschriftB, int mengeTageszeitung) {
		super();
		this.customerId = customerId;
		this.isLastschrift = isLastschrift;
		this.iban = iban;
		this.bic = bic;
		this.bank = bank;
		this.kontoinhaber = kontoinhaber;
		this.isAbweichendeLieferanschrift = isAbweichendeLieferanschrift;
		this.lieferStrasse = lieferStrasse;
		this.lieferPlz = lieferPlz;
		this.lieferOrt = lieferOrt;
		this.mengeZeitschriftA = mengeZeitschriftA;
		this.mengeZeitschriftB = mengeZeitschriftB;
		this.mengeTageszeitung = mengeTageszeitung;
	}
	
	

	@Override
	public String toString() {
		return "AboEntity [customerId=" + customerId
				+ ", isLastschrift=" + isLastschrift + ", iban=" + iban
				+ ", bic=" + bic + ", bank=" + bank + ", kontoinhaber="
				+ kontoinhaber + ", isAbweichendeLieferanschrift="
				+ isAbweichendeLieferanschrift + ", lieferStrasse="
				+ lieferStrasse + ", lieferPlz=" + lieferPlz + ", lieferOrt="
				+ lieferOrt + ", mengeZeitschriftA=" + mengeZeitschriftA
				+ ", mengeZeitschriftB=" + mengeZeitschriftB
				+ ", mengeTageszeitung=" + mengeTageszeitung + "]";
	}


	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public Boolean getIsLastschrift() {
		return isLastschrift;
	}

	public void setIsLastschrift(Boolean isLastschrift) {
		this.isLastschrift = isLastschrift;
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

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getKontoinhaber() {
		return kontoinhaber;
	}

	public void setKontoinhaber(String kontoinhaber) {
		this.kontoinhaber = kontoinhaber;
	}

	public Boolean getIsAbweichendeLieferanschrift() {
		return isAbweichendeLieferanschrift;
	}

	public void setIsAbweichendeLieferanschrift(Boolean isAbweichendeLieferanschrift) {
		this.isAbweichendeLieferanschrift = isAbweichendeLieferanschrift;
	}

	public String getLieferStrasse() {
		return lieferStrasse;
	}

	public void setLieferStrasse(String lieferStrasse) {
		this.lieferStrasse = lieferStrasse;
	}

	public String getLieferPlz() {
		return lieferPlz;
	}

	public void setLieferPlz(String lieferPlz) {
		this.lieferPlz = lieferPlz;
	}

	public String getLieferOrt() {
		return lieferOrt;
	}

	public void setLieferOrt(String lieferOrt) {
		this.lieferOrt = lieferOrt;
	}

	public int getMengeZeitschriftA() {
		return mengeZeitschriftA;
	}

	public void setMengeZeitschriftA(int mengeZeitschriftA) {
		this.mengeZeitschriftA = mengeZeitschriftA;
	}

	public int getMengeZeitschriftB() {
		return mengeZeitschriftB;
	}

	public void setMengeZeitschriftB(int mengeZeitschriftB) {
		this.mengeZeitschriftB = mengeZeitschriftB;
	}

	public int getMengeTageszeitung() {
		return mengeTageszeitung;
	}

	public void setMengeTageszeitung(int mengeTageszeitung) {
		this.mengeTageszeitung = mengeTageszeitung;
	}
	
	
	
}
