package com.niit.ecom.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ecom.DAO.CategoryDAO;
import com.niit.ecom.model.Category;

@Controller
public class CategoryController 
{
	@Autowired
	private CategoryDAO categoryDAO;
	
	
	@RequestMapping(value="/categorys")
	public String getAllCategory(Model model)
	{
		List<Category> list = categoryDAO.getAllCategory();
		System.out.println(list);
		model.addAttribute("categorys", list);
		return "category";
	}

	@RequestMapping(value="/deletecategory",method=RequestMethod.GET)
	public String deleteCategory(@RequestParam Integer id)
	{
		Category category = categoryDAO.getCategoryById(id);
		categoryDAO.deleteCategory(category); 
		return "redirect:/categorys";
	}
	
	@RequestMapping(value="/updatesCategory",method=RequestMethod.GET)
	public String updateCategory(@RequestParam Integer id,Model model)
	{
		Category category = categoryDAO.getCategoryById(id);
		model.addAttribute("category", category);

		return "categoryupdate";
	}
	
	@RequestMapping(value="/updateCategory",method=RequestMethod.POST)
	public String updateCategoryResult(@ModelAttribute("category") Category category)
	{
		categoryDAO.updateCategory(category);
		return "redirect:/categorys";
	}
	
	@RequestMapping(value="/addCategory")
	public String addCategory()
	{
		
			return "categoryadd";
		
	}
	@RequestMapping(value="/addCategorys",method=RequestMethod.POST)
	public String addUserResult(@ModelAttribute("category") Category category)
	{
		categoryDAO.saveCategory(category);
		return "redirect:/categorys";
	}
}
