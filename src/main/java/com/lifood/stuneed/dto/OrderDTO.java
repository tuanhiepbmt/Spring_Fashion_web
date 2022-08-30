package com.lifood.stuneed.dto;

public class OrderDTO extends BaseDTO{

	private Long userId;
	private ProductDTO product;
	private int quantity;
	private StatusOrderDTO status;
	
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
	
}
