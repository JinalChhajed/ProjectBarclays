package com.example.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.model.BankCustomer;
import com.example.model.User;

@Repository



	public interface BankCustomerRepo extends CrudRepository<BankCustomer, Integer>, JpaRepository<BankCustomer, Integer> {
		@Query("select balance from BankCustomer where account_no = ?1")
		public int findBalanceByAcctID(int accountno);
		
		
		@Transactional
		@Modifying(clearAutomatically = true)
		@Query("update BankCustomer set balance = balance+?2 where account_no=?1")
		public void saveBalanceByAcctID(int accountno, int balance);


		@Transactional
		@Modifying(clearAutomatically = true)
	@Query("update BankCustomer set balance = balance-?2 where account_no=?1")
		public void withdrawAmountByAcctID(int accountno, int balance);

		public BankCustomer findBypannumber(String pan_number);

	}

