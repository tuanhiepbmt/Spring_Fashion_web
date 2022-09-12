package com.lifood.stuneed.service;

import java.util.List;

import com.lifood.stuneed.dto.CategoryDTO;
import com.lifood.stuneed.dto.TypeDTO;
import com.lifood.stuneed.entity.TypeEntity;

public interface ITypeService {
	public List<TypeDTO> findAll();
	public TypeDTO save(TypeDTO type);
	public List<List<TypeDTO>> findTypeListCategory();
}
