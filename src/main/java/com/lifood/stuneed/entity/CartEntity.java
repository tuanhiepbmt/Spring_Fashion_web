package com.lifood.stuneed.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="cart")
public class CartEntity extends BaseEntity{
	
	@OneToOne
	@JoinColumn(name = "userId")
	private UserEntity user; 
	
	@OneToMany(mappedBy = "cart")
	private List<CartItemEntity> cartItems = new ArrayList<>();
	
	public List<CartItemEntity> getCartItems() {
		return cartItems;
	}
	public void setCartItems(List<CartItemEntity> cartItems) {
		this.cartItems = cartItems;
	}
	public UserEntity getUser() {
		return user;
	}
	public void setUser(UserEntity user) {
		this.user = user;
	}
	
}
