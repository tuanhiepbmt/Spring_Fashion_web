package com.lifood.stuneed.service;

import java.util.List;

import com.lifood.stuneed.dto.CartItemDTO;
import com.lifood.stuneed.entity.CartItemEntity;

public interface ICartItemService {
	public CartItemDTO save(CartItemDTO cart);
	public CartItemDTO deleteByProductIdOrAllCartId(CartItemDTO cart);
	public int countByCartId(Long id);
	public List<CartItemDTO> findByCartId(Long id);
}
