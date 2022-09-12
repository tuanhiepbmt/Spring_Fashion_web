package com.lifood.stuneed.dto;

import com.lifood.stuneed.entity.OrderEntity;
import com.lifood.stuneed.entity.ProductEntity;

public class OrderItemDTO extends BaseDTO{
	private int quantity;
	
	private OrderEntity order;
	
	private ProductDTO product;
	
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public OrderEntity getOrder() {
		return order;
	}
	public void setOrder(OrderEntity order) {
		this.order = order;
	}
	public ProductDTO getProduct() {
		return product;
	}
	public void setProduct(ProductDTO product) {
		this.product = product;
	}
}
