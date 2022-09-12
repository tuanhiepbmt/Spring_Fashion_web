package com.lifood.stuneed.service;

import java.util.List;

import com.lifood.stuneed.dto.CategoryDTO;
import com.lifood.stuneed.dto.TypeDTO;

public interface ICategoryService {
	public List<CategoryDTO> findAll();
//	public List<TypeDTO> findByCategoryId(Long id);

}
