package com.example;

import static org.junit.Assert.*;
import static org.junit.jupiter.api.Assertions.assertThrows;

import java.util.Optional;

import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.model.BankCustomer;
import com.example.model.User;
import com.example.repository.BankCustomerRepo;
import com.example.repository.UserRepository;
import com.example.service.BankCustomerService;

@SpringBootTest
class AccountManagementSystemApplicationTests {
	
@Mock
UserRepository userrepo;
@Mock
BankCustomerRepo bankcustomerrepo;

	
/*	@Rule
	public ExpectedException thrown = ExpectedException.none();

	private static final double AMOUNT = 3;*/



	@Test
	public void testIdIsAutomaticallyAssignedAsPositiveNumber() {
		// setup
		User user = new User();
		user.setId(6);
		user.setPassword("1232124");
		user.setRole("user");
		user.setUsername("muskan");
	//	userrepo.save(user);
	//	Optional<User> user1=Optional.of(user);
		Mockito.when(userrepo.findById(6)).thenReturn(user);
		assertEquals(userrepo.findById(6).getId(), 6);
		System.out.println("Matched id !!");

	}

	@Test
	public void testIdwithpannumber() {
		// setup
		BankCustomer b=new BankCustomer();
		b.setAccount_no(1234151);
		b.setAccount_type("Savings");
		b.setAddress("pune");
		b.setAdhaar_no(89786987);
		b.setBranch("Kothrud");
		b.setCust_id(124261);
		b.setDob("2000-12-13");
		b.setEmail("jinal.chhajed@gmail.com");
		b.setFirst_name("jinal");
		b.setGender("f");
		b.setLast_name("Chhajed");
		b.setPan_number("BWHPS1234T");
		b.setPhone_no(6757383);
		
		
		
	//	userrepo.save(user);
	//	Optional<User> user1=Optional.of(user);
		Mockito.when(bankcustomerrepo.findBypannumber("BWHPS1234T")).thenReturn(b);
		assertEquals(bankcustomerrepo.findBypannumber("BWHPS1234T").getPan_number(),"BWHPS1234T");
		assertEquals(" Length Matched",bankcustomerrepo.findBypannumber("BWHPS1234T").getPan_number().length(),11);
		System.out.println("Matched pan number");
	}
	
	
	
/*	@Test
	public void testWithdrawWhenAmountIsNegativeShouldThrow() {
		BankCustomer bankcustomer = new BankCustomer();
		BankCustomerService bankservice=new BankCustomerService(bankcustomerrepo);
		IllegalArgumentException e = assertThrows(IllegalArgumentException.class,
			() -> bankservice.withdrawAmount(123456, 1));
		assertEquals("Negative amount: -1.0", e.getMessage());
		assertEquals(0, bankcustomer.getBalance(), 0);
	} */


	
	
	
}
