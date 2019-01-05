package com.niec.citizen.DAO;

import java.util.List;

import com.niec.citizen.model.User;

public interface UserDAO {

	public boolean saveUser(User user);
	public boolean updateUser(User user);
	public boolean deleteUser(User user);
	public User getUserById(int id);
	public List<User> getAllUser();

}
