package com.bean;

public class RegisterBean {

	private String fullName;
	private String email;
	private String userName;
	private String password;
	private String occupation;
	private String address;
	private String mobileno;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getFullName() {
		return fullName;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	public String getOccupation() {
		// TODO Auto-generated method stub
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddress() {

		return address;
	}

}