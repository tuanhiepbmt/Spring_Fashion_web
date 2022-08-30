package com.lifood.stuneed.dto;

public class CompareDTO extends BaseDTO {
	
	private Long productId;
	private Long userId;
	
	public Long getProductId() {
		return productId;
	}
	public void setProductId(Long productId) {
		this.productId = productId;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	
}
