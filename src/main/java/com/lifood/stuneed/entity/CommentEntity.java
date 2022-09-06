package com.lifood.stuneed.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="comment")
public class CommentEntity extends BaseEntity{
	
	@ManyToOne
	@JoinColumn(name = "userId")
	private UserEntity user;
	
	@ManyToOne
	@JoinColumn(name = "productId")
	private ProductEntity product;
	
	@Column
	private int star;
	
	@Column
	private String comment;
	
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
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
	
}
