package com.lifood.stuneed.entity;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="compare")
public class CompareDTO extends BaseEntity {
	
	@ManyToOne
	private ProductEntity product;
	@ManyToOne
	private UserEntity user;

	public ProductEntity getProduct() {
		return product;
	}
	public void setProduct(ProductEntity product) {
		this.product = product;
	}
	public UserEntity getUser() {
		return user;
	}
	public void setUser(UserEntity user) {
		this.user = user;
	}
}
