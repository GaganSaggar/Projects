package com.niec.vehicle.DAO;

import java.util.List;

import com.niec.vehicle.model.Vehicle;

public interface VehicleDAO {

	public boolean saveVehicle(Vehicle vehicle);
	public boolean updateVehicle(Vehicle vehicle);
	public boolean deleteVehicle(Vehicle vehicle);
	public Vehicle getVehicleById(int id);
	public List<Vehicle> getAllVehicle();

}
