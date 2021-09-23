


package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.example.model.Transaction;
import com.example.service.TransactionService;

@RestController
	public class TransactionController {
		@Autowired
		private TransactionService transactionService;

		// addLog
		public void addLog(Transaction transaction) {
			transactionService.addLog(transaction);
		}

		// showLog
		@GetMapping("/account/{acctID}/logs")
		public Transaction showLog(@PathVariable int acctID) {
			return transactionService.showLog(acctID);
		}

		public void deleteLog(int acctID) {
			transactionService.deleteLog(acctID);
		}

}
