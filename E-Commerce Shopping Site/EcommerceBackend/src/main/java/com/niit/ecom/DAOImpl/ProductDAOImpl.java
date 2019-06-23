package com.niit.ecom.DAOImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ecom.DAO.ProductDAO;
import com.niit.ecom.model.Product;

@Repository(value="productDAO")
@Transactional
public class ProductDAOImpl implements ProductDAO
{
	@Autowired
	private SessionFactory sessionFactory;
	public boolean saveProduct(Product product)
	{
		try
		{
			sessionFactory.getCurrentSession().save(product);
			return true;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public boolean updateProduct(Product product)
	{
		try
		{
			sessionFactory.getCurrentSession().update(product);
			return true;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public boolean deleteProduct(Product product)
	{
		try
		{
			sessionFactory.getCurrentSession().delete(product);
			return true;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public List<Product> getAllProducts()
	{
		return sessionFactory.getCurrentSession().createQuery("from Product").list();
	}

	public Product getProductById(int id) 
	{
		return sessionFactory.getCurrentSession().get(Product.class, id);
	}

}
