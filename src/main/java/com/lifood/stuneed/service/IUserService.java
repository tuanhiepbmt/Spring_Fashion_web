package com.lifood.stuneed.service;

import java.util.List;

import com.lifood.stuneed.dto.UserDTO;

public interface IUserService {
	public List<UserDTO> findByEmail(String email);
	public UserDTO save(UserDTO user);
}
