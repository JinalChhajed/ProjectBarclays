package com.example.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.model.User;
//Repository of User containing customized queries
public interface UserRepository extends CrudRepository<User, Integer> {
	public User findByUsernameAndPasswordAndRole(String username, String password,String role);
	public User findByUsername(String username);
	public User findById(int id);
	public User findByRole(String role1);
	@Query(value="select * from user u where u.name LIKE %?1% or u.username LIKE %?2% ", nativeQuery = true)
    List<User> SearchByUnameandUsername(String search,String search1);
}
