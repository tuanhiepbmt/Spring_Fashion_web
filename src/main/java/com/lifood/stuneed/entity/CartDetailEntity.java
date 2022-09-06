package com.lifood.stuneed.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "cartDetail")
public class CartDetailEntity extends BaseEntity{
	
	@Column
	private int quantity;
	
	@ManyToOne
	private CartEntity cart;
	
	@ManyToOne
	private ProductEntity product;
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public CartEntity getCart() {
		return cart;
	}
	public void setCart(CartEntity cart) {
		this.cart = cart;
	}
	public ProductEntity getProduct() {
		return product;
	}
	public void setProduct(ProductEntity product) {
		this.product = product;
	}
}
