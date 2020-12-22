package com.springboot.PetMark.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.springboot.PetMark.entities.Pet;
import com.springboot.PetMark.entities.Species;

public interface PetService {
	List<Pet> findAll();

	Pet findById(int id);
	List<Pet> showAll(String status);
	boolean addPet(Pet pet);

	void updatePet(Pet pet);

	void disContinuePet(int id);

	void continuePet(int id);

	List<Pet> showProductByCategoryPageable(String status, Pageable pageable);

	int countContinueProduct();

	int countProduct(String status);

	List<String> selecStatus();

	List<Pet> showByDes(String des, Pageable pageable);

	List<Pet> search(String search);

	List<Pet> findBetweenPrice(float min, float max);

	List<Pet> findBySpecies(Species species);
}
