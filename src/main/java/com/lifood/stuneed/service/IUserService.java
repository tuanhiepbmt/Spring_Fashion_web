package com.lifood.stuneed.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.lifood.stuneed.dto.UserDTO;

public interface IUserService {
	public List<UserDTO> findAll();
	public List<UserDTO> findAll(Pageable pageable);
	public List<UserDTO> findByEmail(String email);
	public UserDTO save(UserDTO user);
	public int count();
}
