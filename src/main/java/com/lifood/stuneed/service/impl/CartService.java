package com.lifood.stuneed.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lifood.stuneed.converter.Convert;
import com.lifood.stuneed.dto.ProductDTO;
import com.lifood.stuneed.entity.CartEntity;
import com.lifood.stuneed.entity.CartItemEntity;
import com.lifood.stuneed.entity.ProductEntity;
import com.lifood.stuneed.repository.CartItemRepository;
import com.lifood.stuneed.repository.CartRepository;
import com.lifood.stuneed.repository.ProductRepository;
import com.lifood.stuneed.service.ICartService;

@Service
public class CartService implements ICartService{
	@Autowired
	private CartRepository cartRepository;
	
	@Autowired
	private Convert converter;
	
	@Autowired
	private CartItemRepository cartItemRepository;
	
	@Autowired
	private ProductRepository productRepository;

	@Override
	public List<ProductDTO> findAllCartItem(Long userId) {
		CartEntity cartEntity= cartRepository.findByUserId(userId);
		List<CartItemEntity> productIdList=cartItemRepository.findByCartId(cartEntity.getId());
		List<ProductDTO> productsDTOList=new ArrayList<>();
		ProductDTO productDTO=new ProductDTO();
		for (CartItemEntity cartItem : productIdList) {
			productDTO=converter.modelMapper().map(productRepository.findById(cartItem.getProduct().getId()).get(), ProductDTO.class);
			productDTO.setQuantity(cartItem.getQuantity());
			productsDTOList.add(productDTO);
			
		}
		return productsDTOList;
	}
}
