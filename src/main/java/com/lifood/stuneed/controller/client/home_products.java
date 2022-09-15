package com.lifood.stuneed.controller.client;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.lifood.stuneed.dto.CategoryDTO;
import com.lifood.stuneed.dto.OrderDTO;
import com.lifood.stuneed.dto.OrderItemDTO;
import com.lifood.stuneed.dto.ProductDTO;
import com.lifood.stuneed.dto.TypeDTO;
import com.lifood.stuneed.dto.UserDTO;
import com.lifood.stuneed.service.ICartItemService;
import com.lifood.stuneed.service.ICartService;
import com.lifood.stuneed.service.ICategoryService;
import com.lifood.stuneed.service.IMaterialService;
import com.lifood.stuneed.service.IOrderItemService;
import com.lifood.stuneed.service.IOrderService;
import com.lifood.stuneed.service.IOriginService;
import com.lifood.stuneed.service.IProductService;
import com.lifood.stuneed.service.ITypeService;
import com.lifood.stuneed.service.IUserService;
@EnableAutoConfiguration
@RestController
public class home_products {
	
	@Autowired
	public IProductService iProductService;
	
	@Autowired
	public ICategoryService iCategoryService;
	
	@Autowired
	public ITypeService iTypeService;
	
	@Autowired
	private IOriginService iOriginService;

	@Autowired
	private IMaterialService iMaterialService;
	
	@Autowired
	private ICartService iCartService;
	
	@Autowired
	private IUserService iUserService;
	
	@Autowired
	private IOrderService iOrderService;
	
	@Autowired
	private IOrderItemService iOrderItemService;
	
	@GetMapping({"/home","/"})
	public ModelAndView display(ModelMap model) {
		Pageable pagePrice=PageRequest.of(0, iProductService.count(), Sort.Direction.DESC, "price");
		Pageable pageCreatedDate=PageRequest.of(0, iProductService.count(), Sort.Direction.DESC, "createdDate");
		List<CategoryDTO> category= iCategoryService.findAll();
		List<TypeDTO> type= iTypeService.findAll();
		model.addAttribute("popularInAllProducts", iProductService.findAll(pagePrice));
		List<List<ProductDTO>> productByCategory=new ArrayList<>();
		List<List<ProductDTO>> productByType=new ArrayList<>();
		for (CategoryDTO categoryDTO : category) {
			productByCategory.add(iProductService.findByCategoryId(pagePrice, categoryDTO.getId()));
		}
		for (TypeDTO typeDTO : type) {
			productByType.add(iProductService.findByTypeId(pagePrice, typeDTO.getId()));
		}
		model.addAttribute("productByCategory", productByCategory);
		model.addAttribute("productByType", productByType);
		for (TypeDTO typeDTO : type) {
			model.addAttribute(typeDTO.getName(), iProductService.findByTypeId(pagePrice, typeDTO.getId()));
		}
		model.addAttribute("lastestProducts", iProductService.findAll(pageCreatedDate));
	    return new ModelAndView("views/client/home", model);
	}
	 
	@GetMapping("/product")
	public ModelAndView product(ModelMap model,ProductDTO product)
	{
		String view ="";
		if(product.getId()!=null)
		{
			product.setLimit(6);
			product.setPageable(model);
			model.addAttribute("product", iProductService.findById(product.getId()));
			model.addAttribute("otherProducts", iProductService.findAll(product.getPageable()));
			view="views/client/product_detail";
		}
		else {
			product.setPageable(model);
			List<ProductDTO> productList=null;
			if(!product.getLink().equals("all"))
			{
				productList=iProductService.findByCategoryIdAndTypeId(product.getPageable(),product.getCategoryId(),product.getTypeId());
				model.addAttribute("totalPage", (int) Math.ceil((double) iProductService.countByCategoryIdAndTypeId(product.getCategoryId(),product.getTypeId()) / product.getLimit()));
				model.addAttribute("page", product.getPage());
			}
			else
			{
				productList=iProductService.findAll(product.getPageable());
				model.addAttribute("totalPage", (int) Math.ceil((double) iProductService.count() / product.getLimit()));
				model.addAttribute("page", product.getPage());
			}
			if(productList.size()!=0) productList.get(0).setLink(product.getLink());
			model.addAttribute("products", productList); 
			model.addAttribute("origins", iOriginService.findAll());
			model.addAttribute("materials", iMaterialService.findAll());
			view="views/client/list";
		}
			return new ModelAndView(view,model);
	}
	@GetMapping("/cart")
	public ModelAndView cart(ModelMap model)
	{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (!(authentication instanceof AnonymousAuthenticationToken)) 
		{
			UserDTO user=iUserService.findByEmail(authentication.getName()).get(0);
//		    model.addAttribute("user", iUserService.findByEmail(authentication.getName()).get(0));
			model.addAttribute("products", iCartService.findAllCartItem(user.getId()));
		}
		return new ModelAndView("views/client/cart",model);
	}
	@GetMapping("/testttt")
	public List<OrderDTO> test(ModelMap model,ProductDTO productDTO)
	{
//		productDTO.setPageable(model);
//		return iOrderItemService.findAll();
		return iOrderService.findAll();
		
//		return iCartItemService.save(carItem);
//		return new ArrayList<>();
	}
}
