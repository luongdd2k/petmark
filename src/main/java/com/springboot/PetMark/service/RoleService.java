package com.springboot.PetMark.service;

import java.util.List;

import com.springboot.PetMark.entities.Role;

public interface RoleService {
	
	List<Role> findAll();
	
	Role findById(String id);
	
}
