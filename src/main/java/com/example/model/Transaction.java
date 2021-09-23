
package com.example.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="transaction")
public class Transaction {
	
@Id
@GeneratedValue
public int trans_id ;
public int account_no;
public int trans_ref ;
public String trans_date ;
public String subtype;
public String type;
public int amount;
public int current_balance;

public int transferaccountno ;



public Transaction( int accountno,int trans_id, int trans_ref, String trans_date, String subtype, String type, int amount,
		int current_balance, int transferaccountno) {
	super();
this.account_no=accountno;
	this.trans_id = trans_id;
	this.trans_ref = trans_ref;
	this.trans_date = trans_date;
	this.subtype = subtype;
	this.type = type;
	this.amount = amount;
	this.current_balance = current_balance;
	this.transferaccountno = transferaccountno;
}




public Transaction() {
	super();
	// TODO Auto-generated constructor stub
}




public int getTransferaccountno() {
	return transferaccountno;
}

public void setTransferaccount_no(int transferaccountno) {
	this.transferaccountno = transferaccountno;
}





public int getAccountno() {
	return account_no;
}




public void setAccountno(int accountno) {
	this.account_no = accountno;
}




public int getTrans_id() {
	return trans_id;
}
public void setTrans_id(int trans_id) {
	this.trans_id = trans_id;
}
public int getTrans_ref() {
	return trans_ref;
}
public void setTrans_ref(int trans_ref) {
	this.trans_ref = trans_ref;
}
public 	String getTrans_date() {
	return trans_date;
}
public void setTrans_date(String trans_date) {
	this.trans_date = trans_date;
}
public String getSubtype() {
	return subtype;
}
public void setSubtype(String subtype) {
	this.subtype = subtype;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public int getAmount() {
	return amount;
}
public void setAmount(int amount) {
	this.amount = amount;
}
public int getCurrent_balance() {
	return current_balance;
}
public void setCurrent_balance(int current_balance) {
	this.current_balance = current_balance;
}
	
	

}