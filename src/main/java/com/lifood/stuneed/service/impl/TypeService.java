package com.lifood.stuneed.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lifood.stuneed.converter.Convert;
import com.lifood.stuneed.dto.TypeDTO;
import com.lifood.stuneed.entity.TypeEntity;
import com.lifood.stuneed.repository.TypeRepository;
import com.lifood.stuneed.service.ITypeService;

@Service
public class TypeService implements ITypeService{
	
	@Autowired
	public TypeRepository typeRepository;
	
	@Autowired
	public Convert converter;
	
	@Override
	public List<TypeDTO> findAll() {
		List<TypeDTO> typeDTOList =new ArrayList<>();
		for (TypeEntity typeEntity : typeRepository.findAll()) {
			typeDTOList.add(converter.modelMapper().map(typeEntity, TypeDTO.class));
		}
		return typeDTOList;
	}

}
