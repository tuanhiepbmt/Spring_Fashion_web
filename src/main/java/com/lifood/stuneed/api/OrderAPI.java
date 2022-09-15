package com.lifood.stuneed.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lifood.stuneed.dto.CartItemDTO;
import com.lifood.stuneed.dto.OrderDTO;
import com.lifood.stuneed.dto.OrderItemDTO;
import com.lifood.stuneed.dto.UserDTO;
import com.lifood.stuneed.service.ICartItemService;
import com.lifood.stuneed.service.ICartService;
import com.lifood.stuneed.service.IOrderItemService;
import com.lifood.stuneed.service.IOrderService;
import com.lifood.stuneed.service.IUserService;

@RestController
@RequestMapping("/api")
public class OrderAPI {
	
	@Autowired
	private IOrderService iOrderService;
	
	@Autowired
	private IUserService iUserService;
	
	@Autowired
	private ICartService iCartService;
	
	@Autowired
	private ICartItemService iCartItemService;
	
	@Autowired
	private IOrderItemService iOrderItemService;
	
	@PostMapping("/order")
	public List<OrderItemDTO> save()
	{
		Long orderId=null;
		Long cartId=null;
		Authentication authentication=SecurityContextHolder.getContext().getAuthentication();
		if(authentication!=null&&!(authentication instanceof AnonymousAuthenticationToken))
		{
			UserDTO user= iUserService.findByEmail(authentication.getName()).get(0);
			cartId= iCartService.findByUserId(user.getId()).getId();
			orderId=iOrderService.save(user.getId());
		}
		List<CartItemDTO> cartItemDTOs= iCartItemService.findByCartId(cartId);
		return iOrderItemService.save(cartItemDTOs, orderId);
	}
}
