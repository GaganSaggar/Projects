package com.niec.citizen.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niec.citizen.DAO.ElectricityDAO;
import com.niec.citizen.model.Electricity;

@Controller
public class HomeController {
	
	@RequestMapping(value="/")
	public String homePage()
	{
		return "index";
	}
	
	@RequestMapping(value="/registrations")
	public String registrationPage()
	{
		return "registration";
	}
	
	@RequestMapping(value="/first")
	public String firstPage()
	{
		return "index";
	}
	
	@RequestMapping(value="/banks")
	public String bankPay()
	{
		
			return "bank";
		
	}
	
	@RequestMapping(value="/addElectricitys")
	public String electrictyPay()
	{
		
			return "redirect:/banks";
	
	}
	
	
}