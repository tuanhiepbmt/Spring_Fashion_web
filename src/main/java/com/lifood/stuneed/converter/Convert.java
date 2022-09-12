package com.lifood.stuneed.converter;

import org.modelmapper.ModelMapper;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

import com.lifood.stuneed.dto.ProductDTO;
import com.lifood.stuneed.entity.ProductEntity;

@Component
public class Convert{
	@Bean
	public ModelMapper modelMapper(){
	    return new ModelMapper();
	}
	public ProductEntity toEntity(ProductDTO entity,ProductEntity oldEntity)
	{
		oldEntity.setDescription(entity.getDescription());
		oldEntity.setImage(entity.getImage());
		oldEntity.setName(entity.getName());
		oldEntity.setPrice(entity.getPrice());
		oldEntity.setPurchases(entity.getPurchases());
		oldEntity.setShortDescription(entity.getShortDescription());
		oldEntity.setSize(entity.getSize());
		oldEntity.setStock(entity.getStock());
		oldEntity.setTags(entity.getTags());
		return oldEntity;
	}
} 
