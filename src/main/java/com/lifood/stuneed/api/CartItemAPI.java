package com.lifood.stuneed.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lifood.stuneed.dto.CartItemDTO;
import com.lifood.stuneed.service.ICartItemService;

@RestController
@RequestMapping("/api")
public class CartItemAPI {
	
	@Autowired
	private ICartItemService iCartItemService;
	
	@PostMapping("/cart")
	private CartItemDTO save(@RequestBody CartItemDTO carItem)
	{
		return iCartItemService.save(carItem);
	}
	@DeleteMapping("/cart")
	private CartItemDTO delete(@RequestBody(required = false) CartItemDTO carItem)
	{
		if (carItem==null) {
			carItem=new CartItemDTO();
		}
		return iCartItemService.deleteByProductIdOrAllCartId(carItem);
	}
}
