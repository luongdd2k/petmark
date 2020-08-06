package com.springboot.PetMark.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.springboot.PetMark.entities.Pet;

public interface PetService {
	List<Pet> findAll();

	Pet findById(int id);

	boolean addPet(Pet pet);

	void updatePet(Pet pet);
	void disContinuePet(int id);

	List<Pet> showProductByCategoryPageable(String status, Pageable pageable);
}
