package com.springboot.PetMark.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.dao.ColorPetDAO;
import com.springboot.PetMark.entities.ColorPet;
import com.springboot.PetMark.entities.Pet;
import com.springboot.PetMark.repository.ColorPetRepo;

@Repository
public class ColorPetDAOImpl implements ColorPetDAO{
@Autowired
ColorPetRepo repo;
	@Override
	public List<ColorPet> findByPet(Pet pet) {
		// TODO Auto-generated method stub
		return repo.findByPet(pet);
	}
	@Override
	public ColorPet findById(int id) {
		// TODO Auto-generated method stub
		return repo.findById(id).get();
	}
	@Override
	public List<String> getEyeColor() {
		// TODO Auto-generated method stub
		return repo.getEyeColor();
	}
	@Override
	public List<String> getFullColor() {
		// TODO Auto-generated method stub
		return repo.getFullColor();
	}
	@Override
	public List<Pet> findListPet(String fullColor, String eyeColor) {
		// TODO Auto-generated method stub
		return repo.findListPet(fullColor, eyeColor);
	}

}
