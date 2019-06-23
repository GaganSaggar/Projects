package com.niit.ecom.DAO;

import java.util.List;

import com.niit.ecom.model.Cart;

public interface CartDAO {

	public boolean saveCart(Cart cart);
	public boolean updateCart(Cart cart);
	public boolean deleteCart(Cart cart);
	public Cart getCartById(int id);
	public List<Cart> getAllCart();
}
