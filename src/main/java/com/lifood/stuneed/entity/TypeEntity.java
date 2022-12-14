package com.lifood.stuneed.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "type")
public class TypeEntity extends BaseEntity{

	@Column
	private String name;

	@OneToMany(mappedBy = "type")
	private List<ProductEntity> product = new ArrayList<>();
	 
//	@ManyToMany(mappedBy = "types")
//	private List<CategoryEntity> categorys = new ArrayList<>();
//
//	public List<CategoryEntity> getCategorys() {
//		return categorys;
//	}
//
//	public void setCategorys(List<CategoryEntity> categorys) {
//		this.categorys = categorys;
//	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<ProductEntity> getProduct() {
		return product;
	}

	public void setProduct(List<ProductEntity> product) {
		this.product = product;
	}
}
