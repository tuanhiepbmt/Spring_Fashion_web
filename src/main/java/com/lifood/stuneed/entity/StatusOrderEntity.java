package com.lifood.stuneed.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="statusOrder")
public class StatusOrderEntity extends BaseEntity{
	
	@Column
	private String name;
	
	@Column
	private String content;
	
	
	@OneToMany(mappedBy = "status")
	private List<OrderEntity> orders= new ArrayList<>();
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public List<OrderEntity> getOrder() {
		return orders;
	}

	public void setOrder(List<OrderEntity> order) {
		this.orders = order;
	}
}
