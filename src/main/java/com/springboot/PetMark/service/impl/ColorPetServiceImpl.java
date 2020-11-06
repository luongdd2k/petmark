package com.springboot.PetMark.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.ColorPetDAO;
import com.springboot.PetMark.entities.ColorPet;
import com.springboot.PetMark.entities.Pet;
import com.springboot.PetMark.service.ColorPetService;

@Service
public class ColorPetServiceImpl implements ColorPetService {
	@Autowired
	ColorPetDAO dao;

	@Override
	public List<ColorPet> findByPet(Pet pet) {
		// TODO Auto-generated method stub
		return dao.findByPet(pet);
	}

	@Override
	public ColorPet findById(int id) {
		// TODO Auto-generated method stub
		return dao.findById(id);
	}

}
