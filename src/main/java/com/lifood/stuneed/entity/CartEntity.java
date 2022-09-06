package com.lifood.stuneed.entity;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

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
