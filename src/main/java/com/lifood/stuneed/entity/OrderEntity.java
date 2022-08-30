package com.lifood.stuneed.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="order_product")
public class OrderEntity extends BaseEntity{
	
	@ManyToOne
	@JoinColumn(name = "userId")
	private UserEntity user;
	
	@ManyToOne
	@JoinColumn(name="statusId")
	private StatusOrderEntity status;
	
	
	public StatusOrderEntity getStatus() {
		return status;
	}
	public void setStatus(StatusOrderEntity status) {
		this.status = status;
	}
	public UserEntity getUser() {
		return user;
	}
	public void setUser(UserEntity user) {
		this.user = user;
	}
}
