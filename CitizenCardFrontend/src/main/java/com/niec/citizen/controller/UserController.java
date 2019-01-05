package com.niec.citizen.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niec.citizen.DAO.UserDAO;
import com.niec.citizen.model.User;
@Controller
public class UserController 
{
	@Autowired
	private UserDAO userDAO;
	
	
	@RequestMapping(value="/users")
	public String getAllUsers(Model model)
	{
		List<User> list = userDAO.getAllUser();
		System.out.println(list);
		model.addAttribute("users", list);
		return "user";
	}
	
	@RequestMapping(value="/deleteuser",method=RequestMethod.GET)
	public String deleteUser(@RequestParam Integer id)
	{
		User user = userDAO.getUserById(id);
		userDAO.deleteUser(user); 
		return "redirect:/users";
	}

	@RequestMapping(value="/updatesUser",method=RequestMethod.GET)
	public String updateUser(@RequestParam Integer id,Model model)
	{
		User user = userDAO.getUserById(id);
		model.addAttribute("user", user);

		return "userupdate";
	}

	@RequestMapping(value="/updateUser",method=RequestMethod.POST)
	public String updateUserResult(@ModelAttribute("user") User user)
	{
		userDAO.updateUser(user);
		return "redirect:/users";
	}
	
	@RequestMapping(value="/addUser")
	public String addUser()
	{
		
			return "useradd";
		
	}
	
	@RequestMapping(value="/addUsers",method=RequestMethod.POST)
	public String addUserResult(@ModelAttribute("user") User user)
	{
		System.out.println("Before Saving");
		//user.setEmailId(user.getEmailId());
		userDAO.saveUser(user);
		System.out.println("After Saving");
		return "redirect:/users";
	}
	
	@RequestMapping(value="/registration",method=RequestMethod.POST)
	public String userRegister(@ModelAttribute("user") User user)
	{
		userDAO.saveUser(user);
		return "redirect:/logins";
	}
	
	
}
