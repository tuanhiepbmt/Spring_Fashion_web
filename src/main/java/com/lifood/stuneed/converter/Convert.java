package com.lifood.stuneed.converter;

import org.modelmapper.ModelMapper;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

@Component
public class Convert{
	@Bean
	public ModelMapper modelMapper(){
	    return new ModelMapper();
	}
}
