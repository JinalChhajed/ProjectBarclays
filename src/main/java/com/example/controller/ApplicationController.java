package com.example.controller;


import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.example.model.BankCustomer;
import com.example.model.Transaction;
import com.example.model.User;
import com.example.service.BankCustomerService;
import com.example.service.EmailService;
import com.example.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


@RestController
@SessionAttributes("username")
public class ApplicationController {
	
	@Autowired
	UserService userService;

	@Autowired
	BankCustomerService bankcustomerservice ;
	@Autowired
	TransactionController transactionController;
	
@Autowired
EmailService bankemailservice;
	 
	//login mode
		@PostMapping("/")
		public String login(HttpServletRequest request) {
			request.setAttribute("mode", "MODE_LOGIN");
			return "login";
		}

		

		//authenticate the user
		@SuppressWarnings("static-access")
		@GetMapping("/login-user")
		public String loginUser(@ModelAttribute User user, HttpServletRequest request,HttpSession session) {
		
		
			String password = user.getPassword();
			String role1=user.getRole();
			//check if user is authenticated or not
			if (userService.findByUsernameAndPasswordAndRole(user.getUsername(), password,role1) != null ) {
				request.setAttribute("username", user.getUsername());
			
			
				return "Welcome," + user.getUsername() ;
			}
			else {
				
			
				return "Invalid Credentials !";

			}
		}
		
		@SuppressWarnings("static-access")
		@RequestMapping("/findcustomer")
		public String findcustomer(@RequestParam String pannumber) {
		
			System.out.println(pannumber);
			if (bankcustomerservice.findBypannumber(pannumber)!=null) {
				
				return " User Already found !";
			}
			else {
				 
				return "Please Create New Account";

			}
		}	
	
		@SuppressWarnings("static-access")
		@RequestMapping("/addcustomer")
		public User addCustomer(@ModelAttribute BankCustomer bankcustomer, HttpServletRequest request,HttpSession session) {
			
User user=bankcustomerservice.addCustomer(bankcustomer);

			 System.out.println("Sending Email...");
		        
		        String msg=" ";
		        msg=msg+"\n" + "Dear Customer, Welcome to Barclays Banking .Your Customer id is  "+ user.getId() +" and your Password is  " + user.getPassword() + 
		        		"\n" + "Your's Faithfully ," +"\n" + "Barclays India " ;
		        
			
		     bankemailservice.sendEmail(msg);
			
			return user;
			
			
		}	
		

    
		// withdrawAmount
				/*@PutMapping("/account/{acctID}/withdraw/{amount}")
				public void withdrawAmount(@PathVariable int acctID, @PathVariable int amount) {
					int initBal = getBalance(acctID);
					bankCustomerService.withdrawAmount(acctID, amount);
				    Transaction transaction = new Transaction(acctID, "Withdrawn", "Success", initBal, initBal - amount);
					transactionController.addLog(transaction);
				}*/
				
					@GetMapping("/account/{acctID}/balance")
					public int getBalance(@PathVariable int acctID) 
					{
						return bankcustomerservice.getBalance(acctID);
					}
				int reference=1;
				Transaction transaction;
				int trans_id=1;
			//@PutMapping("/account/{acctID}/deposit/{amount}")
				@RequestMapping(value ="/deposit", method = RequestMethod.PUT)


				public void depositAmount(@RequestParam("account_no") int account_no, @RequestParam("amount") int amount, @RequestParam("type") String type) {
					int initBal = getBalance(account_no);
					
					DateTimeFormatter id_for = DateTimeFormatter.ofPattern("HHmmss");
					LocalDateTime id_fr = LocalDateTime.now();  
					String strDatetrans = id_for.format(id_fr);
					int id = Integer.parseInt(strDatetrans);
					//System.out.println(id*12);
					trans_id=id*12;
					reference= (trans_id*23);


					bankcustomerservice.depositAmount(account_no, amount);
					

					DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
					LocalDateTime now = LocalDateTime.now();  
					String strDate = dtf.format(now); 
					transaction = new Transaction( account_no,trans_id, reference,strDate,  "Credit",type,  amount, initBal+amount,  account_no);
					
					
					transactionController.addLog(transaction);
					
					 System.out.println("Sending Email...");
				        
				        String msg="Notification: ";
				        msg=msg+"\n" + "Dear Customer, Your Account number has been credited by Rs."+ amount +" on " + strDate + "\n"+ "Your's Faithfully ," +"\n" + "Barclays India " ;
				        
					
				     bankemailservice.sendEmail(msg);
				} 

					//@PutMapping("/account/{acctID}/withdraw/{amount}")
					@RequestMapping(value ="/withdraw", method = RequestMethod.PUT)
					public void withdrawAmount(@RequestParam("account_no") int account_no, @RequestParam("amount") int amount, @RequestParam("type") String type) 
					{
					int initBal = getBalance(account_no);			
					DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
					LocalDateTime now = LocalDateTime.now();  
					String strDate = dtf.format(now); 
				
					DateTimeFormatter id_for = DateTimeFormatter.ofPattern("HHmmss");
					LocalDateTime id_fr = LocalDateTime.now();  
					String strDatetrans = id_for.format(id_fr);
					int id = Integer.parseInt(strDatetrans);
					trans_id=id*12;
					reference= (trans_id*23);
					bankcustomerservice.withdrawAmount(account_no, amount);

					 
					transaction= new Transaction( account_no,trans_id, reference, strDate ,"Debit",type,  amount, initBal-amount,account_no);
					
					transactionController.addLog(transaction);
					
					 System.out.println("Sending Email...");
				        
				        String msg="Notification: ";
				        msg=msg+"\n" + "Dear Customer, Your Account number has been debited by Rs."+ amount +" on " + strDate + "\n"+ "Your's Faithfully ," +"\n" + "Barclays India " ;
				        
					
				     bankemailservice.sendEmail(msg);

		}
					
					@RequestMapping(value ="/transfer", method = RequestMethod.PUT)
		            public void transferAmount(@RequestParam("account_no") int account_no,@RequestParam("dest_account_no") int dest_account_no, @RequestParam("amount") int amount, @RequestParam("type") String type)
		            {
						DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
						LocalDateTime now = LocalDateTime.now();  
						String strDate = dtf.format(now);
						DateTimeFormatter id_for = DateTimeFormatter.ofPattern("HHmmss");
						LocalDateTime id_fr = LocalDateTime.now();  
						String strDatetrans = id_for.format(id_fr);
						int id = Integer.parseInt(strDatetrans);
						trans_id=id*12;
						reference= (trans_id*23);

						
						int initBalSender = getBalance(account_no);
						int initBalReceiver = getBalance(dest_account_no);
						bankcustomerservice.transferAmount(account_no, dest_account_no, amount);
					    Transaction transactionSender= new Transaction( account_no,trans_id, reference, strDate ,"Debit",type,  amount, initBalSender-amount,dest_account_no);
						transactionController.addLog(transactionSender);
						
						 System.out.println("Sending Email...");
					        
					        String msg="Notification: ";
					        msg=msg+"\n" + "Dear Customer, Your Account number has been debited by Rs."+ amount +" on  " + strDate + "\n"+ "Your's Faithfully ," +"\n" + "Barclays India " ;
					        
						
					     bankemailservice.sendEmail(msg);
						Transaction transactionReceiver= new Transaction( dest_account_no,trans_id, reference, strDate ,"Credit",type,  amount, initBalReceiver+amount,account_no);
						transactionController.addLog(transactionReceiver);
						
						 System.out.println("Sending Email...");
					        
					        String msg1="Notification: ";
					        msg1=msg1+"\n" + "Dear Customer, Your Account number has been credited by Rs."+ amount +" on " + strDate + "\n"+ "Your's Faithfully ," +"\n" + "Barclays India " ;
					        
						
					     bankemailservice.sendEmail(msg1);

						
		            }
					/*// transferAmount
					@PutMapping("/account/{acctID}/transfer/{destAcctID}/{amount}")
					public void transferAmount(@PathVariable int acctID, @PathVariable int destAcctID, @PathVariable int amount) {
						int initBalSender = getBalance(acctID);
						int initBalReceiver = getBalance(destAcctID);
						accountService.transferAmount(acctID, destAcctID, amount);
						Logger loggerSender = new Logger(acctID, "Transferred", "Success", initBalSender, initBalSender - amount);
						loggerController.addLog(loggerSender);
						Logger loggerReceiver = new Logger(destAcctID, "Received", "Success", initBalReceiver,
								initBalReceiver + amount);
						loggerController.addLog(loggerReceiver);*/
					}





	

