package com.lifood.stuneed.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lifood.stuneed.converter.Convert;
import com.lifood.stuneed.dto.ProductDTO;
import com.lifood.stuneed.entity.ProductEntity;
import com.lifood.stuneed.repository.CategoryRepository;
import com.lifood.stuneed.repository.MaterialRepository;
import com.lifood.stuneed.repository.OriginRepository;
import com.lifood.stuneed.repository.ProductRepository;
import com.lifood.stuneed.repository.TypeRepository;
import com.lifood.stuneed.service.IProductService;

@Service
public class ProductService implements IProductService{
	
	@Autowired
	private ProductRepository productrepository;
	
	@Autowired
	private Convert converter;
	
	@Autowired
	private OriginRepository originRepository;
	
	@Autowired
	private MaterialRepository materialRepository;

	@Autowired
	private CategoryRepository categoryRepository;
	
	@Autowired
	private TypeRepository typeRepository;

	@Override
	public List<ProductDTO> findAll() {
		List<ProductEntity> pe= productrepository.findAll();
		List<ProductDTO> pd=new ArrayList<>();
		for (ProductEntity productEntity : pe) {
			pd.add(converter.modelMapper().map(productEntity, ProductDTO.class));
		}
		return pd;
	}


	public static <T> List<T> toList(Optional<T> opt) {
	    return opt.isPresent()
	            ? Collections.singletonList(opt.get())
	            : Collections.emptyList();
	}
	
	@Override
	public Optional<ProductEntity> findById(Long id) {
		return productrepository.findById(id);
	}
	
	@Override
	public ProductDTO save(ProductDTO product) {
		ProductEntity entity=converter.modelMapper().map(product, ProductEntity.class);
		entity.setCategory(categoryRepository.findById(product.getCategoryId()).get());
		entity.setOrigins(toList(originRepository.findById(product.getOriginId())));
		entity.setMaterials(toList(materialRepository.findById(product.getMaterialId())));
		entity.setType(typeRepository.findById(product.getTypeId()).get());
		productrepository.save(entity);
		return converter.modelMapper().map(entity, ProductDTO.class);
	}
}
