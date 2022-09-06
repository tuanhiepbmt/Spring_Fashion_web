package com.lifood.stuneed.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "category")
public class CategoryEntity extends BaseEntity{
	
	@Column
	private String name;

	@OneToMany(mappedBy = "category")
	private List<ProductEntity> product = new ArrayList<>();
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<ProductEntity> getProducts() {
		return product;
	}

	public void setProducts(List<ProductEntity> products) {
		this.product = products;
	}

	public List<ProductEntity> getProduct() {
		return product;
	}

	public void setProduct(List<ProductEntity> product) {
		this.product = product;
	}
	
}
