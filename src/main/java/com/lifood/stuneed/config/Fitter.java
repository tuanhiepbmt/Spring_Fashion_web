package com.lifood.stuneed.config;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;
import org.springframework.web.filter.GenericFilterBean;

import com.lifood.stuneed.dto.CategoryDTO;
import com.lifood.stuneed.dto.ProductDTO;
import com.lifood.stuneed.dto.TypeDTO;
import com.lifood.stuneed.dto.UserDTO;
import com.lifood.stuneed.service.ICartItemService;
import com.lifood.stuneed.service.ICartService;
import com.lifood.stuneed.service.ICategoryService;
import com.lifood.stuneed.service.IOrderService;
import com.lifood.stuneed.service.IProductService;
import com.lifood.stuneed.service.ITypeService;
import com.lifood.stuneed.service.IUserService;

@Component
public class Fitter extends GenericFilterBean{
	
	@Autowired
	public ICategoryService iCategoryService;
	
	@Autowired
	public ITypeService iTypeService;

	@Autowired
	public IProductService iProductService;
	
	@Autowired
	public IUserService iUserService;
	
	@Autowired
	public ICartItemService iCartItemService;
	
	@Autowired
	public ICartService iCartService;
	
	@Autowired
	public IOrderService iOrderService;

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication!=null&&!(authentication instanceof AnonymousAuthenticationToken)) {
			UserDTO user=iUserService.findByEmail(authentication.getName()).get(0);
			Long cartId=iCartService.findByUserId(user.getId()).getId();
		    req.setAttribute("user", user);
		    req.setAttribute("countCart", iCartItemService.countByCartId(cartId));
		}else {
		}
		String uri=req.getRequestURI();
		String method=req.getMethod();
		if(!uri.startsWith("/template")&&!uri.startsWith("/admin")&&method.equals("GET"))
		{
			List<CategoryDTO> category= iCategoryService.findAll();
			List<TypeDTO> type= iTypeService.findAll();
			List<List<TypeDTO>> listTypeInCategory=iTypeService.findTypeListCategory();
			
			req.setAttribute("categorys", category);
			req.setAttribute("types", type);
			req.setAttribute("listTypeInCategory", listTypeInCategory);
		}
		if(uri.startsWith("/admin")&&method.equals("GET"))
			req.setAttribute("countStatusId1L", iOrderService.countBySatusId(1L));
		chain.doFilter(request, response);
	}

}
