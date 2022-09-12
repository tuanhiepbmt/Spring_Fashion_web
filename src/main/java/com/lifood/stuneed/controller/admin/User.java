package com.lifood.stuneed.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.lifood.stuneed.dto.UserDTO;
import com.lifood.stuneed.service.IUserService;

@RestController
@RequestMapping("/admin")
public class User {
	
	@Autowired
	private IUserService iUserService;
	
	@GetMapping("/user")
	public ModelAndView list(ModelMap model,UserDTO userDTO)
	{
		String view="";
		if (userDTO.getLink().equals("list")) {
			userDTO.setPageable(model);
			model.addAttribute("users", iUserService.findAll(userDTO.getPageable()));
			model.addAttribute("totalPage", (int) Math.ceil((double) iUserService.count() / userDTO.getLimit()));
			model.addAttribute("page", userDTO.getPage());
			view = "views/admin/list";
		} 
//		else {
//			if (userDTO.getId() != null) {
//				model.addAttribute("product", iProductService.findById(userDTO.getId()));
//			}
//			model.addAttribute("categorys", iCategoryService.findAll());
//			model.addAttribute("origins", iOriginService.findAll());
//			model.addAttribute("materials", iMaterialService.findAll());
//			model.addAttribute("types", iTypeService.findAll());
//			view = "views/admin/edit_product";
//		}
		return new ModelAndView(view, model);
	}
}
