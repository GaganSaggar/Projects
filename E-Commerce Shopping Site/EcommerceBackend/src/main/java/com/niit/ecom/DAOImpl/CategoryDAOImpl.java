package com.niit.ecom.DAOImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ecom.DAO.CategoryDAO;
import com.niit.ecom.model.Category;

@Repository(value="categoryDAO")
@Transactional
public class CategoryDAOImpl implements CategoryDAO
{
	@Autowired
	private SessionFactory sessionFactory;
	public boolean saveCategory(Category category) 
	{
		try
		{
			sessionFactory.getCurrentSession().save(category);
			return true;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public boolean updateCategory(Category category)
	{
		try
		{
			sessionFactory.getCurrentSession().update(category);
			return true;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public boolean deleteCategory(Category category)
	{
		try
		{
			sessionFactory.getCurrentSession().delete(category);
			return true;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public Category getCategoryById(int id) 
	{
		return sessionFactory.getCurrentSession().get(Category.class, id);

	}

	public List<Category> getAllCategory() {
		return sessionFactory.getCurrentSession().createQuery("from Category").list();

	}

}
