package com.lifood.stuneed.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "category")
public class CategoryEntity extends BaseEntity{
	
	@Column
	private String name;

	@OneToMany(mappedBy = "category")
	private List<ProductEntity> product = new ArrayList<>();
	
//	@ManyToMany(cascade = {
//	        CascadeType.PERSIST,
//	        CascadeType.MERGE
//	    })
//	@JoinTable(name = "product",
//    joinColumns = @JoinColumn(name = "category_id"),
//    inverseJoinColumns = @JoinColumn(name = "type_id"))
//    private List<TypeEntity> types = new ArrayList<>();
//	
//	public List<TypeEntity> getTypes() {
//		return types;
//	}
//
//	public void setTypes(List<TypeEntity> types) {
//		this.types = types;
//	}

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
