package com.springboot.PetMark.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.dao.RoleDAO;
import com.springboot.PetMark.entities.Role;
import com.springboot.PetMark.repository.RoleRepository;

@Repository
public class RoleDAOImpl implements RoleDAO{
	
	@Autowired 
	RoleRepository roleRepository;

	@Override
	public List<Role> findAll() {
		// TODO Auto-generated method stub
		return roleRepository.findAll();
	}

	@Override
	public Role findById(String id) {
		return roleRepository.findById(id).get();
	}
}
