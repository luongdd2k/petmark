package com.springboot.PetMark.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springboot.PetMark.entities.ImgPet;
import com.springboot.PetMark.entities.Pet;

public interface ImgPetRepo extends JpaRepository<ImgPet, Integer>{
 ImgPet findByPet(Pet pet);
 
}
