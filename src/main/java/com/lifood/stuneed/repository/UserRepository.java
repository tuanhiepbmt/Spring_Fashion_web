package com.lifood.stuneed.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lifood.stuneed.entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity, Long>{
	public List<UserEntity> findByEmail(String email);
}
