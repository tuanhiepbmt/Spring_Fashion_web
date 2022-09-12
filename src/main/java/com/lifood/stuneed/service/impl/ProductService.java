package com.lifood.stuneed.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.lifood.stuneed.converter.Convert;
import com.lifood.stuneed.dto.ProductDTO;
import com.lifood.stuneed.entity.ProductEntity;
import com.lifood.stuneed.repository.CategoryRepository;
import com.lifood.stuneed.repository.MaterialRepository;
import com.lifood.stuneed.repository.OriginRepository;
import com.lifood.stuneed.repository.ProductRepository;
import com.lifood.stuneed.repository.TypeRepository;
import com.lifood.stuneed.service.IProductService;

@Service
public class ProductService implements IProductService{
	
	@Autowired
	private ProductRepository productrepository;
	
	@Autowired
	private Convert converter;
	
	@Autowired
	private OriginRepository originRepository;
	
	@Autowired
	private MaterialRepository materialRepository;

	@Autowired
	private CategoryRepository categoryRepository;
	
	@Autowired
	private TypeRepository typeRepository;

	@Override
	public List<ProductDTO> findAll() {
		List<ProductEntity> pe= productrepository.findAll();
		List<ProductDTO> pd=new ArrayList<>();
		for (ProductEntity productEntity : pe) {
			pd.add(converter.modelMapper().map(productEntity, ProductDTO.class));
		}
		return pd;
	}


	public static <T> List<T> toList(Optional<T> opt) {
	    return opt.isPresent()
	            ? Collections.singletonList(opt.get())
	            : Collections.emptyList();
	}
	
	@Override
	public ProductDTO findById(Long id) {
		List<ProductEntity> productListEntity= toList(productrepository.findById(id));
		ProductDTO product= converter.modelMapper().map(productListEntity.get(0), ProductDTO.class);
		return product;
	}
	
	@Override
	public ProductDTO save(ProductDTO product) {
		ProductEntity entity= null;
		if(product.getId()!=null)
		{
			ProductEntity oldProduct= productrepository.findById(product.getId()).get();
			entity=converter.toEntity(product, oldProduct);
		}else {
			entity= converter.modelMapper().map(product, ProductEntity.class);
		}
		
		entity.setCategory(categoryRepository.findById(product.getCategoryId()).get());
		entity.setType(typeRepository.findById(product.getTypeId()).get());
		entity.setOrigin(originRepository.findById(product.getOriginId()).get());
		entity.setMaterial(materialRepository.findById(product.getMaterialId()).get());
		productrepository.save(entity); 
		return converter.modelMapper().map(entity, ProductDTO.class);
	}


	@Override
	public List<ProductDTO> findAll(Pageable pageable) {
		List<ProductEntity> pageProductEntity= productrepository.findAll(pageable).getContent();
		List<ProductDTO> productDTOList = new ArrayList<>();
		for (ProductEntity productEntity : pageProductEntity) {
			productDTOList.add(converter.modelMapper().map(productEntity, ProductDTO.class));
		}
		return productDTOList;
	}


	@Override
	public int count() {
		return (int) productrepository.count();
	}


	@Override
	public List<ProductDTO> findByTypeId(Pageable page, Long type) {
		List<ProductEntity> pageProductEntity= productrepository.findByTypeId(page,type);
		List<ProductDTO> productDTOList = new ArrayList<>();
		for (ProductEntity productEntity : pageProductEntity) {
			productDTOList.add(converter.modelMapper().map(productEntity, ProductDTO.class));
		}
		return productDTOList;
	}


	@Override
	public List<ProductDTO> findByCategoryId(Pageable page, Long category) {
		List<ProductEntity> pageProductEntity= productrepository.findByCategoryId(page,category);
		List<ProductDTO> productDTOList = new ArrayList<>();
		for (ProductEntity productEntity : pageProductEntity) {
			productDTOList.add(converter.modelMapper().map(productEntity, ProductDTO.class));
		}
		return productDTOList;
	}


	@Override
	public List<ProductDTO> findByCategoryIdAndTypeId(Pageable page, Long categoryId, Long typeId) {
		List<ProductEntity> pageProductEntity= productrepository.findByCategoryIdAndTypeId(page,categoryId,typeId);
		List<ProductDTO> productDTOList = new ArrayList<>();
		for (ProductEntity productEntity : pageProductEntity) {
			productDTOList.add(converter.modelMapper().map(productEntity, ProductDTO.class));
		}
		return productDTOList;
	}


	@Override
	public int countByCategoryIdAndTypeId(Long categoryId, Long typeId) {
		return productrepository.countByCategoryIdAndTypeId(categoryId, typeId);
	}
}
