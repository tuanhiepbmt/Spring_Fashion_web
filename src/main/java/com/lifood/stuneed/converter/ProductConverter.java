package com.lifood.stuneed.converter;

import org.modelmapper.ModelMapper;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

import com.lifood.stuneed.dto.ProductDTO;
import com.lifood.stuneed.entity.ProductEntity;

@Component
public class ProductConverter {
	@Bean
	public ModelMapper modelMapper(){
	    return new ModelMapper();
	}
	public ProductDTO toDTO(ProductEntity pe)
	{
		ProductDTO pd=new ProductDTO();
		pd.setId(pe.getId());
		pd.setCreated_date(pe.getCreatedDate());
		pd.setCreated_by(pe.getCreatedBy());
		pd.setModified_by(pe.getModifiedBy());
		pd.setModified_date(pe.getModifiedDate());
		pd.setDescription(pe.getDescription());
		return pd;
	}
}
