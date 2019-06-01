package com.niec.vehicle.DAO;

import java.util.List;

import com.niec.vehicle.model.OrderedVehicle;

public interface OrderedVehicleDAO {

	public boolean saveOrderedVehicle(OrderedVehicle orderedvehicle);
	public boolean updateOrderedVehicle(OrderedVehicle orderedvehicle);
	public boolean deleteOrderedVehicle(OrderedVehicle orderedvehicle);
	public OrderedVehicle getOrderedVehicleById(int id);
	public List<OrderedVehicle> getAllOrderedVehicle();

}
