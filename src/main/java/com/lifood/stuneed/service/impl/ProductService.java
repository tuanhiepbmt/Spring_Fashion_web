package com.lifood.stuneed.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lifood.stuneed.converter.ProductConverter;
import com.lifood.stuneed.dto.ProductDTO;
import com.lifood.stuneed.entity.ProductEntity;
import com.lifood.stuneed.repository.ProductRepository;
import com.lifood.stuneed.service.IProductService;

@Service
public class ProductService implements IProductService{
	
	@Autowired
	private ProductRepository productrepository;
	
	@Autowired
	private ProductConverter productConverter;

	@Override
	public List<ProductDTO> findAll() {
		List<ProductEntity> pe= productrepository.findAll();
		List<ProductDTO> pd=new ArrayList<>();
		for (ProductEntity productEntity : pe) {
			pd.add(productConverter.modelMapper().map(productEntity, ProductDTO.class));
		}
		return pd;
	}

	@Override
	public Optional<ProductEntity> findById(Long id) {
		return productrepository.findById(id);
	}
	
	
}
