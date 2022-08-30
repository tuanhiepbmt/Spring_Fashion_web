package com.lifood.stuneed.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="cart")
public class CartEntity extends BaseEntity{
	
	@OneToOne
	@JoinColumn(name = "userId")
	private UserEntity user; 
	
	public UserEntity getUser() {
		return user;
	}
	public void setUser(UserEntity user) {
		this.user = user;
	}
	
}
