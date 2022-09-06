package com.lifood.stuneed.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="origin")
public class OriginEntity extends BaseEntity{
	
	@Column
	private String name;
	
	@ManyToMany(mappedBy = "origins")
	private List<ProductEntity> products=new ArrayList<>();

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<ProductEntity> getProducts() {
		return products;
	}

	public void setProducts(List<ProductEntity> products) {
		this.products = products;
	}
}
