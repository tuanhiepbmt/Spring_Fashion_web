package com.lifood.stuneed.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.lifood.stuneed.converter.Convert;
import com.lifood.stuneed.dto.CartItemDTO;
import com.lifood.stuneed.entity.CartItemEntity;
import com.lifood.stuneed.entity.UserEntity;
import com.lifood.stuneed.repository.CartItemRepository;
import com.lifood.stuneed.repository.CartRepository;
import com.lifood.stuneed.repository.ProductRepository;
import com.lifood.stuneed.repository.UserRepository;
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

	@Autowired UserRepository userRepository;
	
	@Override
	public CartItemDTO save(CartItemDTO cart) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		Long cartId=null;
		CartItemDTO returnCartItemDTO=new CartItemDTO();
		if (authentication!=null&&!(authentication instanceof AnonymousAuthenticationToken)) {
			UserEntity user= userRepository.findByEmail(authentication.getName()).get(0);
			cartId=cartRepository.findByUserId(user.getId()).getId();;
		}else
		{
			cart.setMessage("Vui lòng đăng nhập");
			return cart;
		}
		List<CartItemEntity> cartItemEntityList =cartItemRepository.findByProductIdAndCartId(cart.getProductId(),cartId);
		if(cartItemEntityList.size()!=0)
		{
			cartItemEntityList.get(0).setQuantity(cart.getQuantity()+cartItemEntityList.get(0).getQuantity());
			returnCartItemDTO=converter.modelMapper().map(cartItemRepository.save(cartItemEntityList.get(0)), CartItemDTO.class);
			returnCartItemDTO.setMessage("Sản phẩm tồn tại");
			return returnCartItemDTO;
			
		}
		CartItemEntity cartItemEntity=converter.modelMapper().map(cart, CartItemEntity.class);
		cartItemEntity.setCart(cartRepository.findById(cartId).get());
		cartItemEntity.setProduct(productRepository.findById(cart.getProductId()).get());
		returnCartItemDTO=converter.modelMapper().map(cartItemRepository.save(cartItemEntity), CartItemDTO.class);
		returnCartItemDTO.setMessage("Thêm thành công");
		return returnCartItemDTO;
	}

	@Override
	public CartItemDTO deleteByProductIdOrAllCartId(CartItemDTO cart) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		Long cartId=null;
		if (authentication!=null&&!(authentication instanceof AnonymousAuthenticationToken)) {
			UserEntity user= userRepository.findByEmail(authentication.getName()).get(0);
			cartId=cartRepository.findByUserId(user.getId()).getId();
		}else
		{
			cart.setMessage("Vui lòng đăng nhập");
			return cart;
		}
		if(cart.getProductId()!=null)
		{
			List<CartItemEntity> list=cartItemRepository.findByProductIdAndCartId(cart.getProductId(), cartId);
			cartItemRepository.deleteById(list.get(0).getId());
		}
		else
		{
			List<CartItemEntity> cartItemEntityList=cartItemRepository.findByCartId(cartId);
			for (CartItemEntity cartItemEntity : cartItemEntityList) {
				cartItemRepository.deleteById(cartItemEntity.getId());
			}
		}
		cart.setMessage("Xóa thành công");
		return cart;
	}

	@Override
	public int countByCartId(Long id) {
		return cartItemRepository.countByCartId(id);
	}

	@Override
	public List<CartItemDTO> findByCartId(Long id) {
		List<CartItemEntity> cartItemEntities= cartItemRepository.findByCartId(id);
		List<CartItemDTO> cartItemDTOs= new ArrayList<>(); 
		for (CartItemEntity cartItemEntity : cartItemEntities) {
			cartItemDTOs.add(converter.modelMapper().map(cartItemEntity, CartItemDTO.class));
		}
		return cartItemDTOs;
	}
	

}
