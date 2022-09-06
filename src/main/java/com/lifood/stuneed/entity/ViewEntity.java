package com.lifood.stuneed.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="view")
public class ViewEntity extends BaseEntity{
	
	@ManyToOne
	private ProductEntity product;
	
	@Column
	private int count;
	
	@ManyToOne
	private UserEntity user;
	
	@Column
	private Timestamp date;
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}

	public UserEntity getUser() {
		return user;
	}
	public void setUser(UserEntity user) {
		this.user = user;
	}
	public ProductEntity getProduct() {
		return product;
	}
	public void setProduct(ProductEntity product) {
		this.product = product;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
}
