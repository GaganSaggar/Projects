package com.niit.ecom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class HomeController {
	
	@RequestMapping(value="/")
	public String homePage()
	{
		return "index1";
	}
	
	@RequestMapping(value="/header")
	public String header()
	{
		return "header";
	}
	
	@RequestMapping(value="/registrations")
	public String registration()
	{
		return "registration";
	}
	
	/*@RequestMapping(value="/logins")
	public String login()
	{
		return "login";
	}*/
	
	@RequestMapping(value="/index1s")
	public String index1()
	{
		return "index1";
	}
	
	
	

}
