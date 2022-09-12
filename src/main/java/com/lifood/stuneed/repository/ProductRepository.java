package com.lifood.stuneed.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.lifood.stuneed.entity.ProductEntity;

public interface ProductRepository extends JpaRepository<ProductEntity, Long>{
	public List<ProductEntity> findByTypeId(Pageable page, Long typeId);
	public List<ProductEntity> findByCategoryId(Pageable page, Long categoryId);
	public List<ProductEntity> findByCategoryIdAndTypeId(Pageable page, Long categoryId, Long typeId);
	public int countByCategoryIdAndTypeId(Long categoryId, Long typeId);
}
