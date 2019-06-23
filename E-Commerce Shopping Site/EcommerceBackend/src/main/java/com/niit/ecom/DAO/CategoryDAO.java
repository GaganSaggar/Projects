package com.niit.ecom.DAO;

import java.util.List;

import com.niit.ecom.model.Category;

public interface CategoryDAO 
{
	public boolean saveCategory(Category category);
	public boolean updateCategory(Category category);
	public boolean deleteCategory(Category category);
	public Category getCategoryById(int id);
	public List<Category> getAllCategory();

}
