package com.niit.ecom.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ecom.DAO.CategoryDAO;
import com.niit.ecom.model.Category;

public class CategoryTest {

	static AnnotationConfigApplicationContext context;
	static Category category;
	static CategoryDAO categoryDAO;
	
	@BeforeClass
	public static void init()
	{
	 context = new AnnotationConfigApplicationContext();
	 context.scan("com.niit.ecom");
	 context.refresh();
	 
	 category =(Category) context.getBean("category");
	 categoryDAO =(CategoryDAO)context.getBean("categoryDAO");
	}
	
	@Test
	public void save_category_success()
	{
		category.setName("");
		category.setDescription("");
	}
}
