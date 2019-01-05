package com.niec.citizen.DAOImpl;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niec.citizen.DAO.ElectricityDAO;
import com.niec.citizen.model.Electricity;

@Repository(value="electricityDAO")
@Transactional
public class ElectricityDAOImpl implements ElectricityDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public boolean saveElectricity(Electricity electricity) {
		try
		{    
			sessionFactory.getCurrentSession().save(electricity);
			return true;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
		}
	}
}
