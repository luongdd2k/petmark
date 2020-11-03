package com.springboot.PetMark.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.ImgPetDAO;
import com.springboot.PetMark.entities.ImgPet;
import com.springboot.PetMark.entities.Pet;
import com.springboot.PetMark.service.ImgPetService;
@Service
public class ImgPetServiceImpl implements ImgPetService{
 @Autowired 
 ImgPetDAO dao;
	@Override
	public ImgPet findByPet(Pet pet) {
		// TODO Auto-generated method stub
		return dao.findByPet(pet);
	}

}
