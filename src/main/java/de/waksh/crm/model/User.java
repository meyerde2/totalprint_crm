package de.waksh.crm.model;

public class User {
	int id;
	String email;

	public User(int id, String email) {
		super();
		this.id = id;
		this.email = email;

	}

	@Override
	public String toString() {
		return "User [id=" + id + ", voremailname=" + email + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setVorname(String email) {
		this.email = email;
	}

}