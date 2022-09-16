package com.lifood.stuneed.service;

import java.util.List;

import com.lifood.stuneed.dto.OrderDTO;

public interface IOrderService {
	public Long save(Long userId);
	public List<OrderDTO> findAll();
	public int countBySatusId(Long id);
}
