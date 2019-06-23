package com.niit.ecom.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ecom.DAO.SupplierDAO;
import com.niit.ecom.model.Supplier;
@Controller
public class SupplierController 
{
	@Autowired
	private SupplierDAO supplierDAO;
	
	
	@RequestMapping(value="/suppliers")
	public String getAllSuppliers(Model model)
	{
		List<Supplier> list = supplierDAO.getAllSupplier();
		System.out.println(list);
		model.addAttribute("suppliers", list);
		return "supplier";
	}

	@RequestMapping(value="/deletesupplier",method=RequestMethod.GET)
	public String deleteSupplier(@RequestParam Integer id)
	{
		Supplier supplier = supplierDAO.getSupplierById(id);
		supplierDAO.deleteSupplier(supplier); 
		return "redirect:/suppliers";
	}
	
	@RequestMapping(value="/updatesSupplier",method=RequestMethod.GET)
	public String updateSupplier(@RequestParam Integer id,Model model)
	{
		Supplier supplier = supplierDAO.getSupplierById(id);
		model.addAttribute("supplier", supplier);

		return "supplierupdate";
	}
	
	@RequestMapping(value="/updateSupplier",method=RequestMethod.POST)
	public String updateSupplierResult(@ModelAttribute("supplier") Supplier supplier)
	{
		supplierDAO.updateSupplier(supplier);
		return "redirect:/suppliers";
	}
	
	@RequestMapping(value="/addSupplier")
	public String addSupplier()
	{
		
			return "supplieradd";
		
	}
	
	@RequestMapping(value="/addSuppliers",method=RequestMethod.POST)
	public String addSupplierResult(@ModelAttribute("supplier") Supplier supplier)
	{
		supplierDAO.saveSupplier(supplier);
		return "redirect:/suppliers";
	}
	
}
