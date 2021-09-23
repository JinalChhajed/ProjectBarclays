package com.example.service;

import java.util.ArrayList;
import java.util.List;
import javax.transaction.Transactional;

import org.hibernate.annotations.DynamicUpdate;
import org.springframework.stereotype.Service;

import com.example.model.User;
import com.example.repository.UserRepository;

import java.math.BigInteger;
import java.security.MessageDigest; 
import java.security.NoSuchAlgorithmException; 

@DynamicUpdate
@Service
@Transactional
public class UserService {
	


	private final UserRepository userRepository;
	//Constructor
	public UserService(UserRepository userRepository) {
		this.userRepository=userRepository;
	}
//	//Save the User
//	public void saveMyUser(User user ) {
//		String encryptedpassword=user.getPassword();
//		user.setPassword(encryptedpassword);
//		userRepository.save(user);
//	}
//	//Showing  the List of  Users
//	public List<User> showAllUsers(){
//		List<User> users = new ArrayList<User>();
//		for(User user : userRepository.findAll()) {
//			users.add(user);
//		}
//
//		return users;
//	}
//	//delete the User
//	public void deleteMyUser(int id) {
//		userRepository.deleteById(id);;
//	}
//	//edit the User
//	public User editUser(int id) {
//		return userRepository.findById(id);
//	}
	//find user by username and password
	public User findByUsernameAndPasswordAndRole(String username, String password,String role) {
		return userRepository.findByUsernameAndPasswordAndRole(username, password,role);
	}
	//find user exists or not
	public String finduserexistsornot(String username) {
		User use=userRepository.findByUsername(username);
		String j="false";
		if(use!=null) {
			j="true";
			return j;
		}
		return j;
	}
	
//	public String userbyrole(String role1) {
//		User role=userRepository.findByRole(role1);
//		String j="false";
//		if(role!=null) {
//			j="true";
//			return j;
//		}
//		return j;
//	}
//	//find user exists or not
//	public User finduser(String username) {
//		User user=userRepository.findByUsername(username);
//		return user;
//	}
//	//search the User
//	public List<User> searchuser(String search) {
//		return userRepository.SearchByUnameandUsername(search, search);
//	}
//
//	//total no of departments
//	public long totalnoofusers() {
//		return userRepository.count();
//	}
//    



}

