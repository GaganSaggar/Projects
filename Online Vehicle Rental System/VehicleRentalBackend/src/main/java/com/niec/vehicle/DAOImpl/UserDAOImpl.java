package com.niec.vehicle.DAOImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niec.vehicle.DAO.UserDAO;
import com.niec.vehicle.model.User;

@Repository(value="userDAO")
@Transactional
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public boolean saveUser(User user) {
		try
		{    
			sessionFactory.getCurrentSession().save(user);
			return true;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean updateUser(User user) {
		try
		{
			sessionFactory.getCurrentSession().update(user);
			return true;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public boolean deleteUser(User user) {
		try
		{
			sessionFactory.getCurrentSession().delete(user);
			return true;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
		}
	}
	
	public User getUserById(int id) {
		return sessionFactory.getCurrentSession().get(User.class, id);

	}

	public List<User> getAllUser() {
		return sessionFactory.getCurrentSession().createQuery("from User").list();

	}

}
