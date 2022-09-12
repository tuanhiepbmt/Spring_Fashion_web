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
import com.lifood.stuneed.repository.TypeRepository;
import com.lifood.stuneed.service.ITypeService;

@Service
public class TypeService implements ITypeService{
	
	@Autowired
	public TypeRepository typeRepository;
	
	@Autowired
	public CategoryRepository categoryRepository;
	
	@Autowired
	public Convert converter;
	
	@Override
	public List<TypeDTO> findAll() {
		List<TypeDTO> typeDTOList =new ArrayList<>();
		List<TypeEntity> type=typeRepository.findAll();
		for (TypeEntity typeEntity : type) {
			typeDTOList.add(converter.modelMapper().map(typeEntity, TypeDTO.class));
		}
		return typeDTOList;
	}

	@Override
	public TypeDTO save(TypeDTO type) {
		List<CategoryDTO> categoryDTOs=new ArrayList<>();
		for (CategoryDTO category : type.getCategorys()) {
			CategoryDTO categoryDTO=converter.modelMapper().map(categoryRepository.findById(category.getId()).get(), CategoryDTO.class);
			categoryDTOs.add(categoryDTO);
		}
		type.setCategorys(categoryDTOs); 
		TypeEntity typeEntity=typeRepository.save(converter.modelMapper().map(type, TypeEntity.class));
		return converter.modelMapper().map(typeEntity, TypeDTO.class);
	} 

	@Override
	public List<List<TypeDTO>> findTypeListCategory() {
		List<TypeDTO> listTypeDTO=new ArrayList<>();
		List<CategoryEntity> listCategoryEntity=categoryRepository.findAll();
		List<List<TypeDTO>> typeListCategor=new ArrayList<>();
		for (CategoryEntity categoryEntity : listCategoryEntity) {
			listTypeDTO=new ArrayList<>();
			for (TypeEntity entity : typeRepository.findTypeListCategoryId(categoryEntity.getId())) {
				listTypeDTO.add(converter.modelMapper().map(entity, TypeDTO.class));
			}
			typeListCategor.add(listTypeDTO); 
		}
		return typeListCategor;
	}


}
