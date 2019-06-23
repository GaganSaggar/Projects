package com.niit.ecom.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ecom.DAO.SupplierDAO;
import com.niit.ecom.model.Supplier;

public class SupplierTest {

	static AnnotationConfigApplicationContext context;
	static Supplier supplier;
	static SupplierDAO supplierDAO;
	
	@BeforeClass
	public static void init()
	{
	 context = new AnnotationConfigApplicationContext();
	 context.scan("com.niit.ecom");
	 context.refresh();
	 
	 supplier =(Supplier) context.getBean("supplier");
	 supplierDAO =(SupplierDAO)context.getBean("supplierDAO");
	}
	
	/*@Test
	public void save_supplier_success()
	{
		supplier.setSupName("pqr");
		supplier.setSupnumber(8967512345L);
		
		assertEquals(true, supplierDAO.saveSupplier(supplier));

	}*/
	
	/*@Test
	public void save_supplier_failure()
	{
		supplier.setSupName("efg");
		supplier.setSupnumber(9753124685L);
		
		assertEquals(false, supplierDAO.saveSupplier(supplier));

	}*/
	
	/*@Test
	public void update_supplier_success()
	{
		supplier = supplierDAO.getSupplierById(38);
		supplier.setSupName("qaz");
		
		assertEquals(true, supplierDAO.updateSupplier(supplier));

	}*/
	
	/*@Test
	public void update_supplier_failure()
	{
		supplier = supplierDAO.getSupplierById(38);
		supplier.setSupName("wxy");
		
		assertEquals(true, supplierDAO.updateSupplier(supplier));

	}*/
	
	/*@Test
	public void delete_supplier_success()
	{
		supplier = supplierDAO.getSupplierById(38);
		
		assertEquals(true, supplierDAO.deleteSupplier(supplier));

	}*/
	
	/*@Test
	public void update_supplier_failure()
	{
		supplier = supplierDAO.getSupplierById(37);
		
		assertEquals(false, supplierDAO.deleteSupplier(supplier));

	}*/
	
	/*@Test
	public void get_one_supplier_success()
	{
		supplier = supplierDAO.getSupplierById(36);
		
		assertEquals("pqr", supplier.getSupName());
		System.out.println(supplier.getSupId() + supplier.getSupName() + supplier.getSupnumber());

	}*/
	
	/*@Test
	public void get_one_supplier_failure()
	{
		supplier = supplierDAO.getSupplierById(36);
		
		assertEquals("abc", supplier.getSupName());
		System.out.println(supplier.getSupId() + supplier.getSupName() + supplier.getSupnumber());

	}*/
	
	@Test
	public void get_all_supplier_success()
	{
		List<Supplier> supplier =  supplierDAO.getAllSupplier();
		
		//assertEquals("pqr", supplier.getSupName());
		//System.out.println(supplier.getSupId() + supplier.getSupName() + supplier.getSupnumber());
		System.out.println(supplier);
	}
}










