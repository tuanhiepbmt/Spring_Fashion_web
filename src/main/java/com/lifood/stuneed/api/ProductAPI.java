package com.lifood.stuneed.api;

import java.io.File;
import java.nio.file.Path;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
		String path=servletContext.getRealPath("/template/");
		File theDir = new File(path+"/images_upload/product_images");
		if (!theDir.exists()){
		    theDir.mkdirs();
		}
		String[] image=new String[10];
		try {
			int i=0;
			for (MultipartFile file : model.getImageFile()) {
				image[i]=file.getOriginalFilename();
				String filePath= path + "/images_upload/product_images/" + file.getOriginalFilename();
				model.setImage(image);
				file.transferTo(Path.of(filePath));
				i++;
			} 
				model.setImageFile(null);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return iProductService.save(model);
	}
	
}
