package com.springboot.PetMark.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.dao.ImgPetDAO;
import com.springboot.PetMark.entities.ImgPet;
import com.springboot.PetMark.entities.Pet;
import com.springboot.PetMark.repository.ImgPetRepo;

@Repository
public class ImgPetDAOImpl implements ImgPetDAO{
 @Autowired
 ImgPetRepo repo;
	@Override
	public ImgPet findByPet(Pet pet) {
		// TODO Auto-generated method stub
		return repo.findByPet(pet);
	}

}
