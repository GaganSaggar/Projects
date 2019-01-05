package com.niec.citizen.DAOImpl;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niec.citizen.DAO.BankDAO;
import com.niec.citizen.model.Bank;

@Repository(value="bankDAO")
@Transactional

public class BankDAOImpl implements BankDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public boolean saveBank(Bank bank) {
		try
		{    
			sessionFactory.getCurrentSession().save(bank);
			return true;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
		}
	}

}
