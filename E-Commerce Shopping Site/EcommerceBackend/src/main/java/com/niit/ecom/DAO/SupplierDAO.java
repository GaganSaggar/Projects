package com.niit.ecom.DAO;

import java.util.List;

import com.niit.ecom.model.Supplier;

public interface SupplierDAO
{
	public boolean saveSupplier(Supplier supplier);
	public boolean updateSupplier(Supplier supplier);
	public boolean deleteSupplier(Supplier supplier);
	public Supplier getSupplierById(int supid);
	public List<Supplier> getAllSupplier();

}
