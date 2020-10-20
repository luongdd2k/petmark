package com.springboot.PetMark.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.dao.SizeDAO;
import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.SizeAccessories;
import com.springboot.PetMark.repository.SizeRepo;

@Repository
public class SizeDAOImpl implements SizeDAO {
	@Autowired
	SizeRepo repo;

	@Override
	public List<SizeAccessories> findByAccessories(Accessories accessories) {
		// TODO Auto-generated method stub
		return repo.findByAccessories(accessories);
	}

}
