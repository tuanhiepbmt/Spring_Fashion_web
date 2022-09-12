package com.lifood.stuneed.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lifood.stuneed.entity.CartItemEntity;
import com.lifood.stuneed.entity.ProductEntity;

public interface CartItemRepository extends JpaRepository<CartItemEntity, Long>{
	public List<CartItemEntity> findByCartId(Long id);
}
