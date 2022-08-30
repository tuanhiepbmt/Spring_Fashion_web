package com.lifood.stuneed.entity;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "user")
public class UserEntity extends BaseEntity{
	
	@ManyToOne
	@JoinColumn(name = "roleId")
	private RoleEntity role;
	
	@Column
	private String email;
	
	@Column
	private String password;
	
	@Column
	private Timestamp dateOfBirth;
	
	@Column
	private String address;
	
	@Column
	private String phoneNumber;
	
	@Column
	private int sex;
	
	@Column
	private String name;
	
	@Column
	private String otp;
	
	@Column
	private String avatar;
	
	@ManyToOne
	@JoinColumn(name="statusId")
	private StatusUserEntity status;
	
	@OneToOne(mappedBy = "user")
	private CartEntity cart;
	
	@OneToMany(mappedBy = "user")
	private List<OrderEntity> order_product=new ArrayList<>();
	
	public RoleEntity getRole() {
		return role;
	}

	public void setRole(RoleEntity role) {
		this.role = role;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Timestamp getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Timestamp dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getOtp() {
		return otp;
	}

	public void setOtp(String otp) {
		this.otp = otp;
	}

	/**
	 * @return
	 */
	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public StatusUserEntity getStatus() {
		return status;
	}

	public void setStatus(StatusUserEntity status) {
		this.status = status;
	}

	public CartEntity getCart() {
		return cart;
	}

	public void setCart(CartEntity cart) {
		this.cart = cart;
	}

	public List<OrderEntity> getOrder() {
		return order_product;
	}

	public void setOrder(List<OrderEntity> order) {
		this.order_product = order;
	}
}


