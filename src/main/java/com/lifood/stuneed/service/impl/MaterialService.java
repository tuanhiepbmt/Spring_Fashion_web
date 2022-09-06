package com.lifood.stuneed.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lifood.stuneed.converter.Convert;
import com.lifood.stuneed.dto.MaterialDTO;
import com.lifood.stuneed.entity.MaterialEntity;
import com.lifood.stuneed.repository.MaterialRepository;
import com.lifood.stuneed.service.IMaterialService;

@Service
public class MaterialService implements IMaterialService{
	
	@Autowired
	public MaterialRepository materialRepository;
	
	@Autowired
	public Convert converter;
	
	@Override
	public List<MaterialDTO> findAll() {
		List<MaterialDTO> materialDTOList =new ArrayList<>();
		for (MaterialEntity materialEntity : materialRepository.findAll()) {
			materialDTOList.add(converter.modelMapper().map(materialEntity, MaterialDTO.class));
		}
		return materialDTOList;
	}
}
