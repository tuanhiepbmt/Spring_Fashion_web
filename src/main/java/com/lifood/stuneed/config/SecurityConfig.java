package com.lifood.stuneed.config;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.lifood.stuneed.service.impl.CustomUserDetailService;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{

	@Autowired
	private CustomUserDetailService customUserDetailService;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
		.authorizeRequests()
	    .antMatchers("/admin/**").access("hasAuthority('ADMIN')")
	    .antMatchers("/api/**").access("hasAuthority('ADMIN')")
	    .and() 
	    .authorizeRequests()
		.antMatchers("/home","/","/template/**","/api/**").permitAll()
	    .and()
	    .formLogin(form-> form
	    		.loginPage("/login").permitAll()
	    	    .usernameParameter("emailDn")
	    	    .passwordParameter("passwordDn")
//	    	    .defaultSuccessUrl("/home")
	    	    .successHandler(new AuthenticationSuccessHandler() {
					@Override
					public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
							Authentication authentication) throws IOException, ServletException {
						Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
						String url = null;
						for (GrantedAuthority grantedAuthority : authorities) {
							if(grantedAuthority.getAuthority().equals("ADMIN"))
							{
								url="/admin/";
							}
							else
								url="/";
						}
						response.sendRedirect(url);
					}
				})
	    	    .failureUrl("/login?success=fail")
	    	    .loginProcessingUrl("/j_spring_security_check"))
	    
	    .logout().logoutUrl("/logout").logoutSuccessUrl("/login?logout").and()
	    .exceptionHandling().accessDeniedPage("/login").and()
	    .csrf().disable();
	}
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(customUserDetailService).passwordEncoder(passwordEncoder());
//		auth.inMemoryAuthentication()
//		.withUser("user1").password(passwordEncoder().encode("123"))
//		.authorities("User");
		}
	
	@Bean
	public PasswordEncoder passwordEncoder()
	{
		return new BCryptPasswordEncoder();
	}
}
