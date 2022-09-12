package com.lifood.stuneed.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.lifood.stuneed.entity.CartItemEntity;

public class ProductDTO extends BaseDTO{
	
	private String name;
	private Long categoryId;
	private Long materialId;
	private Long originId;
	private CategoryDTO category;
	private MaterialDTO material;
	private OriginDTO origin;
	private String[] size;
	private Long typeId;
	private TypeDTO type;
	private String[] tags;
	private MultipartFile[] imageFile;
	private String[] image;
	private int purchases;
	private int stock;
	private Long price;
	private String shortDescription;
	private String description;
	
	public String sizeToString() {
		String sizeToString="";
		for (int i = 0; i < this.size.length; i++) {
			sizeToString+=size[i];
			if(i!=this.size.length-1)
			{
				sizeToString+=", ";
			}
		}
		return sizeToString;
	}
	public CategoryDTO getCategory() {
		return category;
	}
	public void setCategory(CategoryDTO category) {
		this.category = category;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Long getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}
	public String[] getSize() {
		return size;
	}
	public void setSize(String[] size) {
		this.size = size;
	}
	public String[] getTags() {
		return tags;
	}
	public void setTags(String[] tags) {
		this.tags = tags;
	}
	public String[] getImage() {
		return image;
	}
	public void setImage(String[] image) {
		this.image = image;
	}
	public int getPurchases() {
		return purchases;
	}
	public void setPurchases(int purchases) {
		this.purchases = purchases;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public Long getPrice() {
		return price;
	}
	public void setPrice(Long price) {
		this.price = price;
	}
	public String getShortDescription() {
		return shortDescription;
	}
	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public MultipartFile[] getImageFile() {
		return imageFile;
	}
	public void setImageFile(MultipartFile[] imageFile) {
		this.imageFile = imageFile;
	}
	public Long getMaterialId() {
		return materialId;
	}
	public void setMaterialId(Long materialId) {
		this.materialId = materialId;
	}
	public Long getOriginId() {
		return originId;
	}
	public void setOriginId(Long originId) {
		this.originId = originId;
	}
	public Long getTypeId() {
		return typeId;
	}
	public void setTypeId(Long typeId) {
		this.typeId = typeId;
	}
	public TypeDTO getType() {
		return type;
	}
	public void setType(TypeDTO type) {
		this.type = type;
	}
	public MaterialDTO getMaterial() {
		return material;
	}
	public void setMaterial(MaterialDTO material) {
		this.material = material;
	}
	public OriginDTO getOrigin() {
		return origin;
	}
	public void setOrigin(OriginDTO origin) {
		this.origin = origin;
	}
	
}
