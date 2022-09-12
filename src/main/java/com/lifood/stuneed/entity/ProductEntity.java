package com.lifood.stuneed.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class ProductEntity extends BaseEntity {

	@Column
	private String name;

	@ManyToOne
	@JoinColumn(name = "category_id")
	private CategoryEntity category;

	@Column
	private String[] size;

	@ManyToOne
	@JoinColumn(name = "type_id")
	private TypeEntity type;

	@ManyToOne
	@JoinColumn(name = "material_id")
	private MaterialEntity material;

	@Column
	private String[] tags;

	@ManyToOne
	@JoinColumn(name = "origin_id")
	private OriginEntity origin;
	
	@OneToMany(mappedBy = "product")
	private List<CartItemEntity> cartItem = new ArrayList<>();
	
	public List<CartItemEntity> getCartItem() {
		return cartItem;
	}

	public void setCartItem(List<CartItemEntity> cartItem) {
		this.cartItem = cartItem;
	}

	@Column
	private String[] image;

	@Column
	private int purchases;

	@Column
	private int stock;

	@Column
	private Long price;

	@Column
	private String shortDescription;

	@Column
	private String description;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public CategoryEntity getCategory() {
		return category;
	}

	public void setCategory(CategoryEntity category) {
		this.category = category;
	}

	public String[] getSize() {
		return size;
	}

	public void setSize(String[] size) {
		this.size = size;
	}


	public TypeEntity getType() {
		return type;
	}

	public void setType(TypeEntity type) {
		this.type = type;
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

	public MaterialEntity getMaterial() {
		return material;
	}

	public void setMaterial(MaterialEntity material) {
		this.material = material;
	}

	public OriginEntity getOrigin() {
		return origin;
	}

	public void setOrigin(OriginEntity origin) {
		this.origin = origin;
	}



}
