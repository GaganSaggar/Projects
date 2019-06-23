package com.niit.ecom.DAO;

import java.util.List;

import com.niit.ecom.model.Product;

public interface ProductDAO 
{
	public boolean saveProduct(Product product);
	public boolean updateProduct(Product product);
	public boolean deleteProduct(Product product);
	public Product getProductById(int id);
	public List<Product> getAllProducts();
}
