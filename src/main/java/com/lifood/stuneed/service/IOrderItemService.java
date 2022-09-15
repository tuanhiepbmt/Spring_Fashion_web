package com.lifood.stuneed.service;

import java.util.List;

import com.lifood.stuneed.dto.CartItemDTO;
import com.lifood.stuneed.dto.OrderItemDTO;

public interface IOrderItemService {
	public List<OrderItemDTO> save(List<CartItemDTO> cartItemDTOs, Long orderId);
	public List<OrderItemDTO> findAll();
}
