package com.springboot.PetMark.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.PetDAO;
import com.springboot.PetMark.entities.Pet;
import com.springboot.PetMark.service.PetService;

@Service
public class PetServiceImpl implements PetService {
	@Autowired
	private PetDAO petDAO;

	@Override
	public List<Pet> findAll() {
		// TODO Auto-generated method stub
		return petDAO.findAll();

	}

}
