package com.springboot.PetMark.service;

import com.springboot.PetMark.entities.ImgPet;
import com.springboot.PetMark.entities.Pet;

public interface ImgPetService {
ImgPet findByPet(Pet pet);
void add(ImgPet img);
}
