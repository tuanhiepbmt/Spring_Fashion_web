package com.lifood.stuneed.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="orderItem")
public class OrderItemEntity extends BaseEntity{
	
	@Column
	private int quantity;
	
	@ManyToOne
	@JoinColumn(name="orderId")
	private OrderEntity order;
	
	@ManyToOne
	@JoinColumn(name="productId")
	private ProductEntity product;
	
	public OrderItemEntity() {
		super();
	}
	public OrderItemEntity(int quantity, OrderEntity order, ProductEntity product) {
		super();
		this.quantity = quantity;
		this.order = order;
		this.product = product;
	}
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
	public ProductEntity getProduct() {
		return product;
	}
	public void setProduct(ProductEntity product) {
		this.product = product;
	}
}
