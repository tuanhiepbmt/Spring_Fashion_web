package com.lifood.stuneed.dto;

import java.sql.Timestamp;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.ui.ModelMap;

public abstract class BaseDTO {
	private Long id;
	private Timestamp createdDate;
	private Timestamp modifiedDate;
	private String createdBy;
	private String modifiedBy;
	private String link="all";
	private int limit=1;
	private int page=1;
	private String sortName;
	private String sortBy;
	private Pageable pageable;
	private int quantity;
	
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public String getSortName() {
		return sortName;
	}
	public void setSortName(String sortName) {
		this.sortName = sortName;
	}
	public String getSortBy() {
		return sortBy;
	}
	public void setSortBy(String sortBy) {
		this.sortBy = sortBy;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Timestamp getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Timestamp createdDate) {
		this.createdDate = createdDate;
	}
	public Timestamp getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(Timestamp modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getModifiedBy() {
		return modifiedBy;
	}
	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
	}

	public Pageable getPageable() {
		return pageable;
	}

	public void setPageable(ModelMap model) {
		Sort sort=null;
		Pageable pageable=null;
		if (this.sortBy != null && this.sortBy.equals("desc")) {
			sort = Sort.by(Sort.Direction.DESC, this.sortName);
			pageable = PageRequest.of(this.page-1, this.limit, sort);
			model.addAttribute("sortName", this.sortName);
			model.addAttribute("sortBy", this.sortBy);
		} else if (this.sortBy != null && this.sortBy.equals("asc")) {
			sort = Sort.by(Sort.Direction.ASC, this.sortName);
			pageable = PageRequest.of(this.page-1, this.limit, sort);
			model.addAttribute("sortName", this.sortName);
			model.addAttribute("sortBy", this.sortBy);
		} else {
			pageable = PageRequest.of(this.page-1, this.limit);
		}
		this.pageable = pageable;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}
