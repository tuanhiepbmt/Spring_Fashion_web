package com.lifood.stuneed.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lifood.stuneed.converter.Convert;
import com.lifood.stuneed.dto.UserDTO;
import com.lifood.stuneed.entity.UserEntity;
import com.lifood.stuneed.repository.UserRepository;
import com.lifood.stuneed.service.IUserService;

@Service
public class UserService implements IUserService{
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private Convert converter;
	
	@Override
	public List<UserDTO> findByEmail(String email) {
		List<UserEntity> pe= userRepository.findByEmail(email);
		List<UserDTO> pd=new ArrayList<>();
		for (UserEntity userEntity : pe) {
			pd.add(converter.modelMapper().map(userEntity, UserDTO.class));
		}
		return pd;
	}

	@Override
	public UserDTO save(UserDTO user) {
		return converter.modelMapper().map(userRepository.save(converter.modelMapper().map(user, UserEntity.class)),UserDTO.class);
	}

}
