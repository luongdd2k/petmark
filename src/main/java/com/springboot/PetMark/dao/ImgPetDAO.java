package com.springboot.PetMark.dao;

import com.springboot.PetMark.entities.ImgPet;
import com.springboot.PetMark.entities.Pet;

public interface ImgPetDAO {
	 ImgPet findByPet(Pet pet);
}
