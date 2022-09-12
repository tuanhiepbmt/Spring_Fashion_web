package com.lifood.stuneed.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lifood.stuneed.converter.Convert;
import com.lifood.stuneed.dto.CategoryDTO;
import com.lifood.stuneed.dto.TypeDTO;
import com.lifood.stuneed.entity.CategoryEntity;
import com.lifood.stuneed.entity.TypeEntity;
import com.lifood.stuneed.repository.CategoryRepository;
import com.lifood.stuneed.service.ICategoryService;

@Service
public class CategoryService implements ICategoryService{

	@Autowired
	public CategoryRepository categoryRepository;
	
	@Autowired
	public Convert converter;

	@Override
	public List<CategoryDTO> findAll() {
		List<CategoryDTO> categoryDTOList =new ArrayList<>();
		for (CategoryEntity categoryEntity : categoryRepository.findAll()) {
			categoryDTOList.add(converter.modelMapper().map(categoryEntity, CategoryDTO.class));
		}
		return categoryDTOList;
	}

//	@Override
//	public List<TypeDTO> findByCategoryId(Long id) {
//		List<TypeEntity> ListTypeEntity=categoryRepository.findByCategoryId(1L);
//		List<TypeDTO> listTypeDTO=new ArrayList<>();
//		for (TypeEntity typeEntity : ListTypeEntity) {
//			listTypeDTO.add(converter.modelMapper().map(typeEntity, TypeDTO.class));
//		}
//		return listTypeDTO;
//	}

}
