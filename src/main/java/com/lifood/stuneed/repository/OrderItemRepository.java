package com.lifood.stuneed.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lifood.stuneed.entity.OrderItemEntity;

public interface OrderItemRepository extends JpaRepository<OrderItemEntity, Long>{
	public List<OrderItemEntity> findByOrderId(Long id);
}
