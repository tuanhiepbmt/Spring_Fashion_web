package com.lifood.stuneed.dto;

import java.util.ArrayList;
import java.util.List;

public class TypeDTO extends BaseDTO{
	private String name;
	
	private List<CategoryDTO> categorys = new ArrayList<>();

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<CategoryDTO> getCategorys() {
		return categorys;
	}

	public void setCategorys(List<CategoryDTO> categorys) {
		this.categorys = categorys;
	}
}
