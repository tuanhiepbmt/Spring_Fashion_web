package com.lifood.stuneed.service;

import java.util.List;
import java.util.Optional;

import com.lifood.stuneed.dto.ProductDTO;
import com.lifood.stuneed.entity.ProductEntity;

public interface IProductService {
	public List<ProductDTO> findAll();
	public Optional<ProductEntity> findById(Long id);
	public ProductDTO save(ProductDTO product);
}
