package com.lifood.stuneed.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lifood.stuneed.converter.Convert;
import com.lifood.stuneed.dto.OrderDTO;
import com.lifood.stuneed.dto.OrderItemDTO;
import com.lifood.stuneed.entity.OrderEntity;
import com.lifood.stuneed.entity.OrderItemEntity;
import com.lifood.stuneed.repository.OrderItemRepository;
import com.lifood.stuneed.repository.OrderRepository;
import com.lifood.stuneed.repository.StatusOrderRepository;
import com.lifood.stuneed.repository.UserRepository;
import com.lifood.stuneed.service.IOrderService;

@Service
public class OderService implements IOrderService{
	@Autowired
	private OrderRepository orderRepository;
	
	@Autowired
	private OrderItemRepository orderItemRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private StatusOrderRepository statusOrderRepository;

	@Autowired
	private Convert converter;
	
	@Override
	public Long save(Long userId) {
		OrderEntity orderEntity=new OrderEntity();
		orderEntity.setUser(userRepository.findById(userId).get());
		orderEntity.setStatus(statusOrderRepository.findById(1L).get());
		orderEntity=orderRepository.save(orderEntity);
		return orderEntity.getId();
	}
	public static <T> List<T> toList(Optional<T> opt) {
	    return opt.isPresent()
	            ? Collections.singletonList(opt.get())
	            : Collections.emptyList();
	}
	@Override
	public List<OrderDTO> findAll() {
//		List<OrderDTO> itemDTOs=new ArrayList<>();
//		List<OrderEntity> entities= orderRepository.findAll();
//		for (OrderEntity orderEntity : entities) {
//			OrderDTO dto=converter.modelMapper().map(orderEntity, OrderDTO.class);
//			List<OrderItemEntity> entities1= orderItemRepository.findByOrderId(orderEntity.getId());
//			List<OrderItemDTO> dtos=new ArrayList<>();
//			for (OrderItemEntity entity : entities1) {
//				dtos.add(converter.modelMapper().map(entity, OrderItemDTO.class));
//			}
////			dto.setOrderItem(dtos);
//			itemDTOs.add(dto);
//		}
//		return itemDTOs;
		List<OrderDTO> DTOs=new ArrayList<>();
		for (OrderEntity orderEntity : orderRepository.findAll()) {
			DTOs.add(converter.modelMapper().map(orderEntity, OrderDTO.class));
		}
		return DTOs;
	}
	@Override
	public int countBySatusId(Long id) {
		return orderRepository.countByStatusId(id);
	}
}
