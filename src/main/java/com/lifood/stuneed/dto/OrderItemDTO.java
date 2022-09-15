package com.lifood.stuneed.dto;

public class OrderItemDTO extends BaseDTO{
	private int quantity;
	
//	private OrderDTO order;
	
	private ProductDTO product;
	
	private Long productId;
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public ProductDTO getProduct() {
		return product;
	}
	public void setProduct(ProductDTO product) {
		this.product = product;
	}
	public Long getProductId() {
		return productId;
	}
	public void setProductId(Long productId) {
		this.productId = productId;
	}
//	public OrderDTO getOrder() {
//		return order;
//	}
//	public void setOrder(OrderDTO order) {
//		this.order = order;
//	}
}
