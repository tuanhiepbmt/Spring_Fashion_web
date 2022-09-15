package com.lifood.stuneed.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lifood.stuneed.converter.Convert;
import com.lifood.stuneed.dto.CartItemDTO;
import com.lifood.stuneed.dto.OrderItemDTO;
import com.lifood.stuneed.entity.OrderItemEntity;
import com.lifood.stuneed.repository.OrderItemRepository;
import com.lifood.stuneed.repository.OrderRepository;
import com.lifood.stuneed.repository.ProductRepository;
import com.lifood.stuneed.service.IOrderItemService;

@Service
public class OrderItemService implements IOrderItemService{

	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private OrderRepository orderRepository;
	
	@Autowired
	private OrderItemRepository orderItemRepository;
	
	@Autowired
	private Convert converter;

	@Override
	public List<OrderItemDTO> save(List<CartItemDTO> cartItemDTOs, Long orderId) {
		List<OrderItemDTO> orderItemDTOReturn=new ArrayList<>();
		for (CartItemDTO cartItemDTO : cartItemDTOs) {
			OrderItemEntity orderItemEntity=new OrderItemEntity(
					cartItemDTO.getQuantity(),
				orderRepository.findById(orderId).get(),
				productRepository.findById(cartItemDTO.getProductId()).get());
			orderItemDTOReturn.add(converter.modelMapper().map(orderItemRepository.save(orderItemEntity), OrderItemDTO.class));
		}
		return orderItemDTOReturn;
	}

	@Override
	public List<OrderItemDTO> findAll() {
		List<OrderItemDTO> itemDTOs=new ArrayList<>();
		for (OrderItemEntity orderItemEntity : orderItemRepository.findAll()) {
			itemDTOs.add(converter.modelMapper().map(orderItemEntity, OrderItemDTO.class));
		}
		return itemDTOs;
	}
}
