package com.lifood.stuneed.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.lifood.stuneed.dto.ProductDTO;
import com.lifood.stuneed.service.IProductService;

@RestController
public class ProductAPI {
	
	@Autowired
	private IProductService iProductService;
	
	@PostMapping(value="/news")
	public List<ProductDTO> news(@RequestBody ProductDTO model)
	{
		return iProductService.findAll();
	}
	
}
