package com.lifood.stuneed.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lifood.stuneed.dto.UserDTO;
import com.lifood.stuneed.service.IUserService;

@RestController
@RequestMapping("/api/user")
public class UserAPI {
	
	@Autowired
	public IUserService userService;
	
	@GetMapping("/{email}")
	public List<UserDTO> user(@PathVariable String email)
	{
		return userService.findByEmail(email);
	}
	
	@PreAuthorize("hasAuthority('ADMIN')")
	@PostMapping
	public UserDTO create(@RequestBody UserDTO user)
	{
		return userService.save(user);
	}
}
