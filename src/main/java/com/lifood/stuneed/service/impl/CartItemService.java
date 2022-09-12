package com.lifood.stuneed.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lifood.stuneed.converter.Convert;
import com.lifood.stuneed.dto.CartItemDTO;
import com.lifood.stuneed.entity.CartItemEntity;
import com.lifood.stuneed.repository.CartItemRepository;
import com.lifood.stuneed.repository.CartRepository;
import com.lifood.stuneed.repository.ProductRepository;
import com.lifood.stuneed.service.ICartItemService;

@Service
public class CartItemService implements ICartItemService{
	
	@Autowired
	private CartItemRepository cartItemRepository;
	
	@Autowired
	private Convert converter;
	
	@Autowired
	private CartRepository cartRepository;
	
	@Autowired
	private ProductRepository productRepository;

	@Override
	public CartItemDTO save(CartItemDTO cart) {
		CartItemEntity cartItemEntity=converter.modelMapper().map(cart, CartItemEntity.class);
		cartItemEntity.setCart(cartRepository.findById(cart.getCartId()).get());
		cartItemEntity.setProduct(productRepository.findById(cart.getProductId()).get());
		return converter.modelMapper().map(cartItemRepository.save(cartItemEntity), CartItemDTO.class);
	}

}
