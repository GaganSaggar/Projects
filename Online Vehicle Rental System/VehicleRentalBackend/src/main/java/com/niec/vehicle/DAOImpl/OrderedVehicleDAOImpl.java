package com.niec.vehicle.DAOImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niec.vehicle.DAO.OrderedVehicleDAO;
import com.niec.vehicle.model.OrderedVehicle;
import com.niec.vehicle.model.Vehicle;

@Repository(value="orderedvehicleDAO")
@Transactional
public class OrderedVehicleDAOImpl implements OrderedVehicleDAO {
	
	@Autowired
	private SessionFactory sessionFactory;


	public boolean saveOrderedVehicle(OrderedVehicle orderedvehicle) {
		try
		{    
			sessionFactory.getCurrentSession().save(orderedvehicle);
			return true;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public boolean updateOrderedVehicle(OrderedVehicle orderedvehicle) {
		try
		{
			sessionFactory.getCurrentSession().update(orderedvehicle);
			return true;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public boolean deleteOrderedVehicle(OrderedVehicle orderedvehicle) {
		try
		{
			sessionFactory.getCurrentSession().delete(orderedvehicle);
			return true;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public OrderedVehicle getOrderedVehicleById(int id) {
		return sessionFactory.getCurrentSession().get(OrderedVehicle.class, id);
}

	public List<OrderedVehicle> getAllOrderedVehicle() {
		return sessionFactory.getCurrentSession().createQuery("from OrderedVehicle").list();
}

}
