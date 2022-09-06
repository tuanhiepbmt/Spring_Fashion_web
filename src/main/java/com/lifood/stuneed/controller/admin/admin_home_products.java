package com.lifood.stuneed.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.lifood.stuneed.dto.OriginDTO;
import com.lifood.stuneed.service.ICategoryService;
import com.lifood.stuneed.service.IMaterialService;
import com.lifood.stuneed.service.IOriginService;
import com.lifood.stuneed.service.ITypeService;


@RestController
@RequestMapping("/admin")
public class admin_home_products {
	
	@Autowired
	private ICategoryService iCategoryService;
	
	@Autowired
	private IOriginService iOriginService;
	
	@Autowired
	private IMaterialService iMaterialService;
	
	@Autowired
	private ITypeService iTypeService;
	
	@PreAuthorize("hasAuthority('ADMIN')")
	@GetMapping(value = {"/home","/"})
	public ModelAndView home()
	{
		return new ModelAndView("views/admin/home");
	} 
	
	@PreAuthorize("hasAuthority('ADMIN')")
	@GetMapping(value = {"/product"})
	public ModelAndView product(ModelMap model)
	{
		model.addAttribute("categorys", iCategoryService.findAll());
		model.addAttribute("origins", iOriginService.findAll());
		model.addAttribute("materials", iMaterialService.findAll());
		model.addAttribute("types", iTypeService.findAll());
		return new ModelAndView("views/admin/edit_product",model);
	} 

	
}
