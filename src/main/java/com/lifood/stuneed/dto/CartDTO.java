package com.lifood.stuneed.dto;

import java.util.ArrayList;
import java.util.List;

import com.lifood.stuneed.entity.CartItemEntity;

public class CartDTO extends BaseDTO{
	
	private Long userId;
	private Long productId;
	private int quantity;
	private List<CartItemEntity> cartItems;
	
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Long getProductId() {
		return productId;
	}
	public void setProductId(Long productId) {
		this.productId = productId;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public List<CartItemEntity> getCartItems() {
		return cartItems;
	}
	public void setCartItems(List<CartItemEntity> cartItems) {
		this.cartItems = cartItems;
	}
	
}
