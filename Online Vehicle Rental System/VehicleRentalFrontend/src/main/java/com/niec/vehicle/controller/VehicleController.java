package com.niec.vehicle.controller;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niec.vehicle.DAO.OrderedVehicleDAO;
import com.niec.vehicle.DAO.VehicleDAO;
import com.niec.vehicle.model.OrderedVehicle;
import com.niec.vehicle.model.Vehicle;
@Controller
public class VehicleController 
{

	@Autowired
	private VehicleDAO vehicleDAO;
	private Path path;
	@Autowired
	private OrderedVehicleDAO orderedvehicleDAO;
	
	
	@RequestMapping(value="/vehicles")
	public String getAllVehicles(Model model)
	{
		List<Vehicle> list = vehicleDAO.getAllVehicle();
		System.out.println(list);
		model.addAttribute("vehicles", list);
		return "vehicle";
	}
	
	@RequestMapping(value="/deletevehicle",method=RequestMethod.GET)
	public String deleteVehicle(@RequestParam Integer id)
	{
		Vehicle vehicle = vehicleDAO.getVehicleById(id);
		vehicleDAO.deleteVehicle(vehicle); 
		return "redirect:/vehicles";
	}

	@RequestMapping(value="/updatesVehicle",method=RequestMethod.GET)
	public String updateVehicle(@RequestParam Integer id,Model model)
	{
		Vehicle vehicle = vehicleDAO.getVehicleById(id);
		model.addAttribute("vehicle", vehicle);

		return "vehicleupdate";
	}

	@RequestMapping(value="/updateVehicle",method=RequestMethod.POST)
	public String updateVehicleResult(@ModelAttribute("vehicle") Vehicle vehicle)
	{
		vehicleDAO.updateVehicle(vehicle);
		return "redirect:/vehicles";
	}
	
	@RequestMapping(value="/addVehicle")
	public String addVehicle()
	{
		
			return "vehicleadd";
		
	}
	
	@RequestMapping(value="/addVehicles",method=RequestMethod.POST)
	public String addVehicleResult(@ModelAttribute("vehicle") Vehicle vehicle, HttpServletRequest request)
	{
		System.out.println("Before Saving");
		vehicleDAO.saveVehicle(vehicle);
		MultipartFile image = vehicle.getImage();
	     String rootDirectory = request.getSession().getServletContext().getRealPath("/");
	     path = Paths.get(rootDirectory + "/resources/images/" + vehicle.getId() + ".png");
	     System.out.println("Path"+path);
	     if(image!=null && !image.isEmpty())
	     {
	     try {
	    	 image.transferTo(new File(path.toString()));
	     }
	     catch(Exception ex)
	     {
	    	ex.printStackTrace(); 
	     }
	     }
		System.out.println("After Saving");
		return "redirect:/vehicles";
	}
	
	@RequestMapping(value="/vehicleuser")
	public String vehicleuserPage(Model model)
	{
		List<Vehicle> list = vehicleDAO.getAllVehicle();
		System.out.println(list);
		model.addAttribute("vehicles", list);
		return "vehicleuser";
	}
	
	@RequestMapping(value="/orderedVehicle")
	public String getAllOrderedVehicles(Model model)
	{
		List<OrderedVehicle> list = orderedvehicleDAO.getAllOrderedVehicle();
		System.out.println(list);
		model.addAttribute("orderedvehicles", list);
		return "orderedvehicle";
	}
	
	@RequestMapping(value="/updatesorderedVehicle",method=RequestMethod.GET)
	public String updateOrderedVehicle(@RequestParam Integer id,Model model)
	{
		OrderedVehicle orderedvehicle = orderedvehicleDAO.getOrderedVehicleById(id);
		model.addAttribute("orderedvehicle", orderedvehicle);

		return "orderedvehicleupdate";
	}

	@RequestMapping(value="/updateOrderedVehicle",method=RequestMethod.POST)
	public String updateOrderedVehicleResult(@ModelAttribute("orderedvehicle") OrderedVehicle orderedvehicle)
	{
		orderedvehicleDAO.updateOrderedVehicle(orderedvehicle);
		return "redirect:/orderedVehicle";
	}
	
	@RequestMapping(value="/deleteorderedvehicle",method=RequestMethod.GET)
	public String deleteOrderedVehicle(@RequestParam Integer id)
	{
		OrderedVehicle orderedvehicle = orderedvehicleDAO.getOrderedVehicleById(id);
		Vehicle vehicle = new Vehicle();
		vehicle.setAddress(orderedvehicle.getAddress());
		vehicle.setCapacity(orderedvehicle.getCapacity());
		vehicle.setCostperday(orderedvehicle.getCostperday());
		vehicle.setMobile(orderedvehicle.getMobile());
		vehicle.setVehiclename(orderedvehicle.getVehiclename());
		vehicle.setVehicleno(orderedvehicle.getVehicleno());
		vehicle.setVehicletype(orderedvehicle.getVehicletype());
		orderedvehicleDAO.deleteOrderedVehicle(orderedvehicle);
		vehicleDAO.saveVehicle(vehicle);
		return "redirect:/vehicles";
	}

}
