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

	@Override
	public List<String> getEyeColor() {
		// TODO Auto-generated method stub
		return dao.getEyeColor();
	}

	@Override
	public List<String> getFullColor() {
		// TODO Auto-generated method stub
		return dao.getFullColor();
	}

	@Override
	public List<Pet> findListPet(String fullColor, String eyeColor) {
		// TODO Auto-generated method stub
		return dao.findListPet(fullColor, eyeColor);
	}

}
