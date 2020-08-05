package com.springboot.PetMark.dao;

import java.util.List;

import com.springboot.PetMark.entities.Role;

public interface RoleDAO {

	List<Role> findAll();
	
	Role findById(String id);
}
