package com.springboot.PetMark.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.RoleDAO;
import com.springboot.PetMark.entities.Role;
import com.springboot.PetMark.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService{
	
	@Autowired
	RoleDAO roleDAO;

	@Override
	public List<Role> findAll() {
		// TODO Auto-generated method stub
		return roleDAO.findAll();
	}

	@Override
	public Role findById(String id) {
		// TODO Auto-generated method stub
		return roleDAO.findById(id);
	}

}
