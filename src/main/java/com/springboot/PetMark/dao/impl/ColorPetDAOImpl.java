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

}
