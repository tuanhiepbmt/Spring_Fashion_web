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
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;
import org.springframework.web.filter.GenericFilterBean;

import com.lifood.stuneed.dto.CategoryDTO;
import com.lifood.stuneed.dto.ProductDTO;
import com.lifood.stuneed.dto.TypeDTO;
import com.lifood.stuneed.service.ICategoryService;
import com.lifood.stuneed.service.IProductService;
import com.lifood.stuneed.service.ITypeService;

@Component
public class Fitter extends GenericFilterBean{
	
	@Autowired
	public ICategoryService iCategoryService;
	
	@Autowired
	public ITypeService iTypeService;

	@Autowired
	public IProductService iProductService;

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
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
		chain.doFilter(request, response);
	}

}
