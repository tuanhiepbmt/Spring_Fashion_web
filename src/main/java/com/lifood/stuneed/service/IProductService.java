package com.lifood.stuneed.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.lifood.stuneed.dto.ProductDTO;

public interface IProductService {
	public List<ProductDTO> findAll();
	public ProductDTO findById(Long id);
	public ProductDTO save(ProductDTO product);
	public List<ProductDTO> findAll(Pageable page);
	public int count();
	public List<ProductDTO> findByTypeId(Pageable page,Long typeId);
	public List<ProductDTO> findByCategoryId(Pageable page,Long categoryId);
	public List<ProductDTO> findByCategoryIdAndTypeId(Pageable page,Long categoryId,Long typeId);
	public int countByCategoryIdAndTypeId(Long categoryId, Long typeId);
}
