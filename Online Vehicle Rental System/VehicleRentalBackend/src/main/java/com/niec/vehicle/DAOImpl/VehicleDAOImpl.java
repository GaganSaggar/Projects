package com.niec.vehicle.DAOImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niec.vehicle.DAO.VehicleDAO;
import com.niec.vehicle.model.Vehicle;

@Repository(value="vehicleDAO")
@Transactional
public class VehicleDAOImpl implements VehicleDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public boolean saveVehicle(Vehicle vehicle) {
		try
		{    
			sessionFactory.getCurrentSession().save(vehicle);
			return true;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public boolean updateVehicle(Vehicle vehicle) {
		try
		{
			sessionFactory.getCurrentSession().update(vehicle);
			return true;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public boolean deleteVehicle(Vehicle vehicle) {
		try
		{
			sessionFactory.getCurrentSession().delete(vehicle);
			return true;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public Vehicle getVehicleById(int id) {
		return sessionFactory.getCurrentSession().get(Vehicle.class, id);
}

	public List<Vehicle> getAllVehicle() {
		return sessionFactory.getCurrentSession().createQuery("from Vehicle").list();
}

}
