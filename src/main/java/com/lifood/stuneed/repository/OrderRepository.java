package com.lifood.stuneed.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lifood.stuneed.entity.OrderEntity;

public interface OrderRepository extends JpaRepository<OrderEntity, Long>{
	public int countByStatusId(Long id);
}
