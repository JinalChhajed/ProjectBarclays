
package com.example.repository;



import org.springframework.data.repository.CrudRepository;

import com.example.model.Transaction;


public interface TransactionRepo extends CrudRepository<Transaction, Integer> {

}