package com.lifood.stuneed.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lifood.stuneed.converter.Convert;
import com.lifood.stuneed.dto.OriginDTO;
import com.lifood.stuneed.entity.OriginEntity;
import com.lifood.stuneed.repository.OriginRepository;
import com.lifood.stuneed.service.IOriginService;

@Service
public class OriginService implements IOriginService{
	@Autowired
	public OriginRepository originRepository;
	
	@Autowired
	public Convert converter;
	
	@Override
	public List<OriginDTO> findAll() {
		List<OriginDTO> originDTOList =new ArrayList<>();
		for (OriginEntity originEntity : originRepository.findAll()) {
			originDTOList.add(converter.modelMapper().map(originEntity, OriginDTO.class));
		}
		return originDTOList;
	}
}
