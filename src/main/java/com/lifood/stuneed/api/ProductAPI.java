package com.lifood.stuneed.api;

import java.io.File;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.lifood.stuneed.dto.ProductDTO;
import com.lifood.stuneed.service.IProductService;

@RestController
@RequestMapping("/api")
public class ProductAPI {
	
	@Autowired
	ServletContext servletContext;
	
	@Autowired
	private IProductService iProductService;
	
	@GetMapping(value="/product")
	public List<ProductDTO> listProduct(@RequestBody ProductDTO model)
	{
		return iProductService.findAll();
	}
	
	@PreAuthorize("hasAuthority('ADMIN')" )
	@PostMapping(value="/product")
	public ProductDTO addProduct(@ModelAttribute ProductDTO model)
	{
		saveImage(model);
		return iProductService.save(model);
	}
	

//	@PreAuthorize("hasAuthority('ADMIN')" )
	@PutMapping(value="/product")
	public ProductDTO editProduct(@ModelAttribute ProductDTO model)
	{
		saveImage(model);
		return iProductService.save(model);
	}
	
	private void saveImage(ProductDTO model) {
		String path=servletContext.getRealPath("/template/");
		File theDir = new File(path+"/images_upload/product_images");
		if (!theDir.exists()){
		    theDir.mkdirs();
		}
		List<String> imageList=new ArrayList<>();
		try {
			for (MultipartFile file : model.getImageFile()) {
				int random = (int) Math.floor(((Math.random() * 899999) + 100000));
				imageList.add(random+file.getOriginalFilename());
				String filePath= path + "/images_upload/product_images/"+random+file.getOriginalFilename();
				file.transferTo(Path.of(filePath));
			} 
			model.setImageFile(null);
		} catch (Exception e) {
			e.printStackTrace();
		}
		String[] imageArray = (String[]) imageList.toArray(new String[imageList.size()]);
		model.setImage(imageArray);
	}
}
