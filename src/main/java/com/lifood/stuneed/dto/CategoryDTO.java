package com.lifood.stuneed.dto;

import java.util.ArrayList;
import java.util.List;

public class CategoryDTO extends BaseDTO{
	
	private String name;
	
	private List<TypeDTO> types = new ArrayList<>();
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<TypeDTO> getTypes() {
		return types;
	}
	public void setTypes(List<TypeDTO> types) {
		this.types = types;
	}
}
