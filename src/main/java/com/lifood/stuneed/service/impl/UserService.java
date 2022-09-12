package com.lifood.stuneed.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.lifood.stuneed.converter.Convert;
import com.lifood.stuneed.dto.ProductDTO;
import com.lifood.stuneed.dto.UserDTO;
import com.lifood.stuneed.entity.ProductEntity;
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
		List<UserEntity> ue= userRepository.findByEmail(email);
		List<UserDTO> ud=new ArrayList<>();
		for (UserEntity userEntity : ue) {
			ud.add(converter.modelMapper().map(userEntity, UserDTO.class));
		}
		return ud;
	}

	@Override
	public UserDTO save(UserDTO user) {
		return converter.modelMapper().map(userRepository.save(converter.modelMapper().map(user, UserEntity.class)),UserDTO.class);
	}

	@Override
	public List<UserDTO> findAll() {
		List<UserEntity> ue= userRepository.findAll();
		List<UserDTO> ud=new ArrayList<>();
		for (UserEntity userEntity : ue) {
			ud.add(converter.modelMapper().map(userEntity, UserDTO.class));
		}
		return ud;
	}

	@Override
	public List<UserDTO> findAll(Pageable pageable) {
		List<UserEntity> pageProductEntity= userRepository.findAll(pageable).getContent();
		List<UserDTO> userDTOList = new ArrayList<>();
		for (UserEntity userEntity : pageProductEntity) {
			userDTOList.add(converter.modelMapper().map(userEntity, UserDTO.class));
		}
		return userDTOList;
	}

	@Override
	public int count() {
		return (int) userRepository.count();
	}

}
