package com.lifood.stuneed.dto;

import java.util.List;

import com.lifood.stuneed.entity.OrderItemEntity;
import com.lifood.stuneed.entity.UserEntity;

public class OrderDTO extends BaseDTO{

	private Long userId;
	private UserDTO user;
	private ProductDTO product;
	private int quantity;
	private StatusOrderDTO status;
	private Long statusId;
	private List<OrderItemDTO> orderItems;
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public ProductDTO getProduct() {
		return product;
	}
	public void setProduct(ProductDTO product) {
		this.product = product;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public StatusOrderDTO getStatus() {
		return status;
	}
	public void setStatus(StatusOrderDTO status) {
		this.status = status;
	}
	public Long getStatusId() {
		return statusId;
	}
	public void setStatusId(Long statusId) {
		this.statusId = statusId;
	}
	public UserDTO getUser() {
		return user;
	}
	public void setUser(UserDTO user) {
		this.user = user;
	}
	public List<OrderItemDTO> getOrderItems() {
		return orderItems;
	}
	public void setOrderItems(List<OrderItemDTO> orderItems) {
		this.orderItems = orderItems;
	}
	
}
