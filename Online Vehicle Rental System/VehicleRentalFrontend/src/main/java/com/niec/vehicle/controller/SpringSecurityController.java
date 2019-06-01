package com.niec.vehicle.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niec.vehicle.DAO.OrderedVehicleDAO;
import com.niec.vehicle.DAO.VehicleDAO;
import com.niec.vehicle.model.OrderedVehicle;
import com.niec.vehicle.model.Vehicle;
 
@Controller
public class SpringSecurityController {
 
	@Autowired
	private VehicleDAO vehicleDAO;
	
	@Autowired
	private OrderedVehicleDAO orderedvehicleDAO;
	
     
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String homePage(ModelMap model) {
        model.addAttribute("user", getPrincipal());
        return "index";
    }
    
    @RequestMapping(value = "/home", method = RequestMethod.GET)//This method is for directing to the particular user page
    public String userPage(ModelMap model) {
        model.addAttribute("user", getPrincipal());
        return "welcome";
    }
 
    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String adminPage(ModelMap model) {
        model.addAttribute("user", getPrincipal());
        return "admin";
    }
     
    @RequestMapping(value = "/db", method = RequestMethod.GET)
    public String dbaPage(ModelMap model) {
        model.addAttribute("user", getPrincipal());
        return "dba";
    }
 
    @RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
    public String accessDeniedPage(ModelMap model) {
        model.addAttribute("user", getPrincipal());
        return "accessDenied";
    }
    
    @RequestMapping(value="/electricitys", method = RequestMethod.GET)
	public String electrictyPay(ModelMap model)
	{
        model.addAttribute("user", getPrincipal());

			return "electricity";
		
	}
    
    @RequestMapping(value="/banks", method = RequestMethod.GET)
	public String bankPay(ModelMap model)
	{
        model.addAttribute("user", getPrincipal());

			return "bank";
		
	}
    
    @RequestMapping(value="/bookvehicle",method=RequestMethod.GET)
	public String bookVehicle(@RequestParam Integer id,Model model,ModelMap modelmap)
	{
		Vehicle vehicle = vehicleDAO.getVehicleById(id);
		model.addAttribute("vehicle", vehicle);
        modelmap.addAttribute("user", getPrincipal());

		return "bookingvehicle";
	}
    
    @RequestMapping(value="/bookedVehicle",method=RequestMethod.POST)
	public String bookedVehicleResult(@ModelAttribute("vehicle") Vehicle vehicle)
	{
		OrderedVehicle orderedvehicle = new OrderedVehicle();
		orderedvehicle.setAddress(vehicle.getAddress());
		orderedvehicle.setCapacity(vehicle.getCapacity());
		orderedvehicle.setCostperday(vehicle.getCostperday());
		orderedvehicle.setMobile(vehicle.getMobile());
		orderedvehicle.setVehiclename(vehicle.getVehiclename());
		orderedvehicle.setVehicleno(vehicle.getVehicleno());
		orderedvehicle.setVehicletype(vehicle.getVehicletype());
		orderedvehicle.setUsername(getPrincipal());
		orderedvehicleDAO.saveOrderedVehicle(orderedvehicle);
		vehicleDAO.deleteVehicle(vehicle);
		return "redirect:/vehicles";
	}
 
    @RequestMapping(value = "/logins", method = RequestMethod.GET)
    public String loginPage() {
        return "login";
    }
 
    @RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){    
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/login?logout";
    }
 
    private String getPrincipal(){
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
 
        if (principal instanceof UserDetails) {
            userName = ((UserDetails)principal).getUsername();
        } else {
            userName = principal.toString();
        }
        return userName;
    }
 
}
