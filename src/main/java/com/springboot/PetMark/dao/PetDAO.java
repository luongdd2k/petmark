package com.springboot.PetMark.dao;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.springboot.PetMark.entities.Pet;

public interface PetDAO {
	List<Pet> findAll();

	Pet findById(Integer id);

	List<Pet> findBySpecies(Integer speciesId);

	List<Pet> findByName(String name);

	void savePet(Pet pet);

	void disContinuePet(int id);

	void continuePet(int id);

	void updatePet(Pet pet);

	boolean addPet(Pet pet);
	List<Pet> findByInformation(String information, Pageable pageable);
}
