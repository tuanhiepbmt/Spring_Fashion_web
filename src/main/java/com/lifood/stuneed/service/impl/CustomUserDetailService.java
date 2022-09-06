package com.lifood.stuneed.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.lifood.stuneed.dto.UserDTO;

@Service
public class CustomUserDetailService implements UserDetailsService{
	@Autowired
	private UserService userService;
	
	@Override
	public UserDetails loadUserByUsername(String Email) throws UsernameNotFoundException {
		List<UserDTO> userList=userService.findByEmail(Email);
		if(userList.size()>0)
		{
			UserDTO user= userList.get(0);
			List<GrantedAuthority> grantedList=new ArrayList<>();
			GrantedAuthority authority=new SimpleGrantedAuthority(user.getRole().getName());
			grantedList.add(authority);
			
			UserDetails userDetail= new User(user.getEmail(), user.getPassword(), grantedList);
			return userDetail;
		}
		else
		{
			throw new UsernameNotFoundException("Login fail!");
		}
		
	}
}
