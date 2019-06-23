package com.niit.ecom.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ecom.DAO.UserDAO;
import com.niit.ecom.model.User;

public class UserTest {

	static AnnotationConfigApplicationContext context;
	static User user;
	static UserDAO userDAO;
	
	@BeforeClass
	public static void init()
	{
	 context = new AnnotationConfigApplicationContext();
	 context.scan("com.niit.ecom");
	 context.refresh();
	 
	 user =(User) context.getBean("user");
	 userDAO =(UserDAO)context.getBean("userDAO");
	}
	//@Ignore
	@Test
	public void save_user_success()
	{
		user.setEmailId("pqr@gmail.com");
		user.setAddress("New york");
		user.setMobile(1234554321L);
		user.setPassword("pqr@123");
		user.setUsername("pqr");
		user.setEnabled(true);
		
		assertEquals(true, userDAO.saveUser(user));

	}
	
	/*@Test
	public void save_user_failure()
	{
		user.setEmailId("mno@gmail.com");
		user.setAddress("Banglore");
		user.setMobile(1357987651L);
		user.setPassword("mno@123");
		user.setUsername("mno");
		user.setActive(false);
		
		assertEquals(false, userDAO.saveUser(user));

	}*/
	
	/*@Test
	public void update_user_success()
	{
		user = userDAO.getUserByEmailId("abc@gmail.com");
		user.setActive(false);
		
		assertEquals(true, userDAO.updateUser(user));

	}*/
	
	/*@Test
	public void update_user_failure()
	{
		user = userDAO.getUserByEmailId("abc@gmail.com");
		user.setMobile(1234567890L);
		assertEquals(false, userDAO.updateUser(user));

	}*/
	
	/*@Test
	public void delete_user_success()
	{
		user = userDAO.getUserByEmailId("abc@gmail.com");
		
		assertEquals(true, userDAO.deleteUser(user));

	}*/
	
	/*@Test
	public void delete_user_failure()
	{
		user = userDAO.getUserByEmailId("mno@gmail.com");
		
		assertEquals(false, userDAO.deleteUser(user));

	}*/
	
	/*@Test
	public void get_one_user_success()
	{
		user = userDAO.getUserByEmailId("pqr@gmail.com");
		
		assertEquals("pqr", user.getUsername());
		System.out.println(user.getAddress() + " " + user.getEmailId() + " " + user.getMobile() + " " + user.getUsername());
	}*/
	
	/*@Test
	public void get_one_user_failure()
	{
		user = userDAO.getUserByEmailId("pqr@gmail.com");
		
		assertEquals("mno", user.getUsername());
		System.out.println(user.getAddress() + " " + user.getEmailId() + " " + user.getMobile() + " " + user.getUsername());
	}*/
	
	/*@Test
	public void get_all_user_success()
	{
		List<User> list = userDAO.getAllUser();		
		assertEquals("pqr", user.getUsername());
		System.out.println(user.getAddress() + " " + user.getEmailId() + " " + user.getMobile() + " " + user.getUsername());
		System.out.println(list);
	}*/
}






