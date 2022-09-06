package com.lifood.stuneed.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
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

	@ManyToMany
	@JoinTable(name = "product_material",
		joinColumns = @JoinColumn(name = "productId"),
		inverseJoinColumns = @JoinColumn(name = "materialId")
	)
	private List<MaterialEntity> materials = new ArrayList<>();

	@Column
	private String[] tags;

	@ManyToMany
	@JoinTable(name = "product_origin",
		joinColumns = @JoinColumn(name = "productId"),
		inverseJoinColumns = @JoinColumn(name = "originId")
	)
	private List<OriginEntity> origins = new ArrayList<>();

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

	public List<MaterialEntity> getMaterials() {
		return materials;
	}

	public void setMaterials(List<MaterialEntity> materials) {
		this.materials = materials;
	}

	public String[] getTags() {
		return tags;
	}

	public void setTags(String[] tags) {
		this.tags = tags;
	}

	public List<OriginEntity> getOrigins() {
		return origins;
	}

	public void setOrigins(List<OriginEntity> origins) {
		this.origins = origins;
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

}
