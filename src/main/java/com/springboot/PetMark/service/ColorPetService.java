package com.springboot.PetMark.service;

import java.util.List;

import com.springboot.PetMark.entities.ColorPet;
import com.springboot.PetMark.entities.Pet;

public interface ColorPetService {
	List<ColorPet> findByPet(Pet pet);

	ColorPet findById(int id);

	List<String> getEyeColor();

	List<String> getFullColor();

	List<Pet> findListPet(String fullColor, String eyeColor);
	void add(ColorPet color);
}
