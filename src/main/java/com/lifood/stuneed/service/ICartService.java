package com.lifood.stuneed.service;

import java.util.List;

import com.lifood.stuneed.dto.ProductDTO;

public interface ICartService {
	public List<ProductDTO> findAllCartItem(Long userId);
}
