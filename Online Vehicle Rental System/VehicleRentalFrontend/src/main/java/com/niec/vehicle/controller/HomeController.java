package com.niec.vehicle.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	/*@RequestMapping(value="/orderedVehicle")
	public String OrderedVehiclePage()
	{
		return "orderedvehicle";
	}*/
}
