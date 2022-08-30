package com.lifood.stuneed.entity;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;

@Entity
@Table(name="origin")
public class OriginEntity extends BaseEntity{
	
	@Column
	private String name;
	
	@ManyToMany(mappedBy = "origins")
	private List<ProductEntity> products=new ArrayList<>();
}
