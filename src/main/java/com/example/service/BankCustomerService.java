package com.example.service;

import java.util.Random;

import javax.transaction.Transactional;

import org.hibernate.annotations.DynamicUpdate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.model.BankCustomer;
import com.example.model.User;
import com.example.repository.BankCustomerRepo;
import com.example.repository.UserRepository;

@Service
@DynamicUpdate
@Transactional
public class BankCustomerService {

@Autowired
	private  BankCustomerRepo bankCustomerRepo;
@Autowired 
private UserRepository userRepository;


	//Constructor
	public BankCustomerService(BankCustomerRepo bankcustomerrepo) {
		this.bankCustomerRepo = bankcustomerrepo;
	}
	
	public BankCustomer findBypannumber(String pan_number) {
		
		BankCustomer bankCustomer=bankCustomerRepo.findBypannumber(pan_number);
		return bankCustomer;
	}
	
	public User addCustomer(BankCustomer bankcustomer)
	{
		Random rnd = new Random();
		int  num = rnd.nextInt(999999);
		int account_no=Integer.parseInt(String.format("%06d", num)) ;
		bankcustomer.setAccount_no(account_no);
		
		Random rand = new Random();
		int  number = rand.nextInt(999999);
		int cust_id=Integer.parseInt(String.format("%06d", number)) ;
		bankcustomer.setCust_id(cust_id);
		BankCustomer b= bankCustomerRepo.save(bankcustomer);
		
        char[] password=generateRanPassword(8);
		
		//String.valueOf(myChar)
		System.out.println(password);
		User user = new User(bankcustomer.getCust_id(), bankcustomer.getFirst_name(), (password.toString()).substring(3), "user");
		userRepository.save(user);
		return user;		

		
	}
	
	public int getBalance(int acctID) {
		return bankCustomerRepo.findBalanceByAcctID(acctID);
	}
	public void depositAmount(int acctID, int amount) {
		bankCustomerRepo.saveBalanceByAcctID(acctID, amount);
	}

	public void withdrawAmount(int acctID, int amount) {
		bankCustomerRepo.withdrawAmountByAcctID(acctID, amount);
	}

	public void transferAmount(int acctID, int destAcctID, int amount) {
		bankCustomerRepo.withdrawAmountByAcctID(acctID, amount);
		bankCustomerRepo.saveBalanceByAcctID(destAcctID, amount);
	}
/*	public String findemailbyusername(String pan_number) {
		BankCustomer bankCustomer=bankCustomerRepo.findBypannumber(pan_number);
		return bankcustomer.getEmail();
		
		
	}*/
	private static char[] generateRanPassword(int length) {
	      String capitalCaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	      String lowerCaseLetters = "abcdefghijklmnopqrstuvwxyz";
	     // String specialCharacters = "!@#$";
	      String numbers = "1234567890";
	      String combinedChars = capitalCaseLetters + lowerCaseLetters  + numbers;
	      Random random = new Random();
	      char[] password = new char[length];
	      password[0] = lowerCaseLetters.charAt(random.nextInt(lowerCaseLetters.length()));
	      password[1] = capitalCaseLetters.charAt(random.nextInt(capitalCaseLetters.length()));
	     // password[2] = specialCharacters.charAt(random.nextInt(specialCharacters.length()));
	      password[2] = numbers.charAt(random.nextInt(numbers.length()));
	   
	      for(int i = 3; i< length ; i++) {
	         password[i] = combinedChars.charAt(random.nextInt(combinedChars.length()));
	      }
	      return password;
	}
}
