package com.lifood.stuneed.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="wishList")
public class WishListEntity extends BaseEntity{
	
	@ManyToOne
	private ProductEntity product;
	
	@Column
	private int count;
	
	@ManyToOne
	private UserEntity user;
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
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
