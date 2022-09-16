package com.lifood.stuneed.dto;

public class CartItemDTO extends BaseDTO{
	private int quantity;
	
	private CartDTO cart;
	
	private ProductDTO product;
	
	private Long productId;
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public CartDTO getCart() {
		return cart;
	}
	public void setCart(CartDTO cart) {
		this.cart = cart;
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
}
