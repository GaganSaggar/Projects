package com.niit.ecom.DAO;

import java.util.List;

import com.niit.ecom.model.User;

public interface UserDAO 
{
	public boolean saveUser(User user);
	public boolean updateUser(User user);
	public boolean deleteUser(User user);
	public User getUserById(int id);
	public List<User> getAllUser();

}
