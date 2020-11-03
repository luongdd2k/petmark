package com.springboot.PetMark.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.SizeDAO;
import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.SizeAccessories;
import com.springboot.PetMark.service.SizeService;

@Service
public class SizeServiceImpl implements SizeService {
	@Autowired
	SizeDAO dao;

	@Override
	public List<SizeAccessories> findByAccessories(Accessories accessories) {
		// TODO Auto-generated method stub
		return dao.findByAccessories(accessories);
	}

	@Override
	public SizeAccessories findById(int id) {
		// TODO Auto-generated method stub
		return dao.findById(id);
	}

}
