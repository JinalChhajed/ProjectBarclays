package com.example.model;

import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="customer")
public class BankCustomer {

	
	@Id
	@Column(name = "cust_id")
	int cust_id;
	int phone_no;
	int account_no;
	long adhaar_no;
	@Column(name="pan_number")
	String pannumber;
	String first_name;
	String last_name;
	String gender;
	String address;
	String email;
	String dob;
	String branch;
	String account_type;
	int balance ;
	public BankCustomer(String pannumber, int cust_id, int phone_no, int account_no, long adhaar_no, String first_name,
			String last_name, String gender, String address, String email, String dob, String branch,
			String account_type,int balance) {
		super();
		this.pannumber = pannumber;
		this.cust_id = cust_id;
		this.phone_no = phone_no;
		this.account_no = account_no;
		this.adhaar_no = adhaar_no;
		this.first_name = first_name;
		this.last_name = last_name;
		this.gender = gender;
		this.address = address;
		this.email = email;
		this.dob = dob;
		this.branch = branch;
		this.account_type = account_type;
		this.balance=balance;
	}
	
	


	public int getBalance() {
		return balance;
	}


	public void setBalance(int balance) {
		this.balance = balance;
	}


	public BankCustomer() {
		super();
		// TODO Auto-generated constructor stub
	}


	public String getPan_number() {
		return pannumber;
	}
	public void setPan_number(String pan_number) {
		this.pannumber = pan_number;
	}
	public int getCust_id() {
	
		return cust_id;
	}
	public void setCust_id(int cust_id) {
		
		this.cust_id = cust_id;
	}
	public int getPhone_no() {
		return phone_no;
	}
	public void setPhone_no(int phone_no) {
		this.phone_no = phone_no;
	}
	public int getAccount_no() {
		
	 
		return account_no;
	}
	public void setAccount_no(int account_no) {
	
		this.account_no = account_no;
	}
	public long getAdhaar_no() {
		   
		return adhaar_no;
	}
	public void setAdhaar_no(long adhaar_no) {
		this.adhaar_no = adhaar_no;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getAccount_type() {
		return account_type;
	}
	public void setAccount_type(String account_type) {
		this.account_type = account_type;
	}
	@Override
	public String toString() {
		return "BankCustomer [pan_number=" + pannumber + ", cust_id=" + cust_id + ", phone_no=" + phone_no
				+ ", account_no=" + account_no + ", adhaar_no=" + adhaar_no + ", first_name=" + first_name
				+ ", last_name=" + last_name + ", gender=" + gender + ", address=" + address + ", email=" + email
				+ ", dob=" + dob + ", branch=" + branch + ", account_type=" + account_type + "]";
	}
	
	
	

	
}
