
package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.model.Transaction;
import com.example.repository.TransactionRepo;

@Service
	public class TransactionService  {
		@Autowired
		TransactionRepo transactionRepository;

		public void addLog(Transaction transaction) {
			transactionRepository.save(transaction);
		}

		public Transaction showLog(int acctID) {
			return transactionRepository.findById(acctID).orElse(null);
		}

		public void deleteLog(int acctID) {
			transactionRepository.deleteById(acctID);
		}

}