package com.niit.ecom.test;

import static org.junit.Assert.*;

import java.util.List;

import org.h2.engine.SysProperties;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ecom.DAO.ProductDAO;
import com.niit.ecom.model.Product;

public class ProductTest {

	static AnnotationConfigApplicationContext context;
	static Product product;
	static ProductDAO productDAO;
	
	@BeforeClass
	public static void init()
	{
	 context = new AnnotationConfigApplicationContext();
	 context.scan("com.niit.ecom");
	 context.refresh();
	 
	 product =(Product) context.getBean("product");
	 productDAO =(ProductDAO)context.getBean("productDAO");
	}
  
	/*@Test
	public void save_product_success()
	{
		product.setDescription("Watch");
		product.setName("Fastrack");
		product.setPrice(9000);
		product.setQuantity(50);
		
		assertEquals(true, productDAO.saveProduct(product));
	}*/

	/*@Test
	public void save_product_failure()
	{
		product.setDescription("Watch");
		product.setName("Sonata");
		product.setPrice(11000);
		product.setQuantity(45);
		
		assertEquals(false, productDAO.saveProduct(product));
	}*/
	
	/*@Test
	public void update_product_success()
	{
		product = productDAO.getProductById(1);
		product.setPrice(8000);
		product.setQuantity(35);
		
		assertEquals(true, productDAO.updateProduct(product));

	}*/
	
	/*@Test
	public void update_product_failure()
	{
		product = productDAO.getProductById(1);
		product.setPrice(40000);
		product.setQuantity(40);
		product.setDescription("Laptop");
		product.setName("Dell");
		
		assertEquals(false, productDAO.updateProduct(product));

	}*/
	
	/*@Test
	public void delete_product_success()
	{
		product = productDAO.getProductById(41);

		assertEquals(true, productDAO.deleteProduct(product));

	}*/
	
	/*@Test
	public void delete_product_failure()
	{
		product = productDAO.getProductById(1);

		assertEquals(false, productDAO.deleteProduct(product));

	}*/
	
	/*@Test
	public void get_one_product_success()
	{
		product = productDAO.getProductById(40);

		assertEquals("Fastrack", product.getName());
		System.out.println(product.getDescription() + " " + product.getId() + " " + product.getName() + " " + product.getPrice() + " " + product.getQuantity());
	}*/
	
	//@Ignore
	/*@Test
	public void get_one_product_failure()
	{
		product = productDAO.getProductById(40);

		assertEquals("Fastrack", product.getName());
		System.out.println(product.getDescription() + " " + product.getId() + " " + product.getName() + " " + product.getPrice() + " " + product.getQuantity());

	}*/
	//@Ignore
	@Test
	public void get_all_product_success()
	{
		List<Product> list = productDAO.getAllProducts();
		System.out.println(list);
		//assertEquals("Fastrack", product.getName());

	}
	
	
	
}
