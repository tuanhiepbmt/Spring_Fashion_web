package com.lifood.stuneed.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.lifood.stuneed.dto.ProductDTO;
import com.lifood.stuneed.service.ICategoryService;
import com.lifood.stuneed.service.IMaterialService;
import com.lifood.stuneed.service.IOriginService;
import com.lifood.stuneed.service.IProductService;
import com.lifood.stuneed.service.ITypeService;

@RestController
@RequestMapping("/admin")
public class Home_Product {

	@Autowired
	private ICategoryService iCategoryService;

	@Autowired
	private IOriginService iOriginService;

	@Autowired
	private IMaterialService iMaterialService;

	@Autowired
	private ITypeService iTypeService;

	@Autowired
	private IProductService iProductService;

	@PreAuthorize("hasAuthority('ADMIN')")
	@GetMapping(value = { "/home", "/" })
	public ModelAndView home() {
		return new ModelAndView("views/admin/home");
	}

	@PreAuthorize("hasAuthority('ADMIN')")
	@GetMapping(value = { "/product" })
	public ModelAndView product(ProductDTO productDTO, ModelMap model) {
		String view = null;
		if (productDTO.getLink().equals("list")) {
			productDTO.setPageable(model);
			model.addAttribute("products", iProductService.findAll(productDTO.getPageable()));
			System.out.println(iProductService.findAll(productDTO.getPageable()).get(0).getMaterial().getName());
			model.addAttribute("totalPage", (int) Math.ceil((double) iProductService.count() / productDTO.getLimit()));
			model.addAttribute("page", productDTO.getPage());
			view = "views/admin/list";
		} else {
			if (productDTO.getId() != null) {
				model.addAttribute("product", iProductService.findById(productDTO.getId()));
			}
			model.addAttribute("categorys", iCategoryService.findAll());
			model.addAttribute("origins", iOriginService.findAll());
			model.addAttribute("materials", iMaterialService.findAll());
			model.addAttribute("types", iTypeService.findAll());
			view = "views/admin/edit_product";
		}
		return new ModelAndView(view, model);
	}
}
