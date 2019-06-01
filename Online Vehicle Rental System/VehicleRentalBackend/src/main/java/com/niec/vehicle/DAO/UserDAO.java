package com.niec.vehicle.DAO;

import java.util.List;

import com.niec.vehicle.model.User;


public interface UserDAO {

	public boolean saveUser(User user);
	public boolean updateUser(User user);
	public boolean deleteUser(User user);
	public User getUserById(int id);
	public List<User> getAllUser();

}
