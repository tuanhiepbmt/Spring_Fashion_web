package com.lifood.stuneed.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="orders")
public class OrderEntity extends BaseEntity{
	
	@ManyToOne
	@JoinColumn(name = "userId")
	private UserEntity user;
	
	@ManyToOne
	@JoinColumn(name="statusId")
	private StatusOrderEntity status;
	
	@OneToMany(mappedBy = "order")
	private List<OrderItemEntity> orderItems;
	
	public List<OrderItemEntity> getOrderItems() {
		return orderItems;
	}
	public void setOrderItems(List<OrderItemEntity> orderItems) {
		this.orderItems = orderItems;
	}
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
