package com.niit.ecom.controller;

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

import com.niit.ecom.DAO.ProductDAO;
import com.niit.ecom.model.Product;

@Controller
public class ProductController {
	
	@Autowired
	private ProductDAO productDAO;
	private Path path;
	
	@RequestMapping(value="/products")
	public String getAllProducts(Model model)
	{
		List<Product> list = productDAO.getAllProducts();
		System.out.println(list);
		model.addAttribute("products", list);
		return "product";
	}

	@RequestMapping(value="/deleteproduct",method=RequestMethod.GET)
	public String deleteProduct(@RequestParam Integer id)
	{
		Product product = productDAO.getProductById(id);
		productDAO.deleteProduct(product); 
		return "redirect:/products";
	}
	
	@RequestMapping(value="/updatesProduct",method=RequestMethod.GET)
	public String updateProduct(@RequestParam Integer id,Model model)
	{
		Product product = productDAO.getProductById(id);
		model.addAttribute("product", product);

		return "productupdate";
	}
	
	@RequestMapping(value="/updateProduct",method=RequestMethod.POST)
	public String updateProductResult(@ModelAttribute("product") Product product)
	{
		productDAO.updateProduct(product);
		return "redirect:/products";
	}
	
	@RequestMapping(value="/addProduct")
	public String addProduct()
	{
		
			return "productadd";
		
	}
	
	@RequestMapping(value="/addProducts",method=RequestMethod.POST)
	public String addProductResult(@ModelAttribute("product") Product product, HttpServletRequest request)
	{
		productDAO.saveProduct(product);
	     MultipartFile image = product.getImage();
	     String rootDirectory = request.getSession().getServletContext().getRealPath("/");
	     path = Paths.get(rootDirectory + "/resources/images/" + product.getId() + ".png");
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
		return "redirect:/products";
	}
}
