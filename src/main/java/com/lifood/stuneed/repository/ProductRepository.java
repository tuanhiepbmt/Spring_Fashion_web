package com.lifood.stuneed.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lifood.stuneed.entity.ProductEntity;

public interface ProductRepository extends JpaRepository<ProductEntity, Long>{

}
