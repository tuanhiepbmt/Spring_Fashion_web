package com.lifood.stuneed.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lifood.stuneed.entity.CartEntity;

public interface CartRepository extends JpaRepository<CartEntity, Long> {
	public CartEntity findByUserId(Long id); 
}
