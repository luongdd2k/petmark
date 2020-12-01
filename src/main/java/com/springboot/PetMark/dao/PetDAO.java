package com.springboot.PetMark.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.entities.Pet;
import com.springboot.PetMark.entities.Species;

public interface PetDAO {
	List<Pet> findAll();

	Pet findById(int id);

	List<Pet> findBySpecies(Integer speciesId);

	List<Pet> findByName(String name);

	List<String> selecStatus();

	List<Pet> search(String search);

	void disContinuePet(int id);

	void continuePet(int id);

	void updatePet(Pet pet);

	boolean addPet(Pet pet);

	List<Pet> findByInformation(String information, Pageable pageable);

	List<Pet> showProductByCategoryPageable(String status, Pageable pageable);

	int countContinueProduct();

	int countProduct(String status);

	List<Pet> showByDes(String des, Pageable pageable);

	List<Pet> findBetweenPrice(float min, float max);

	List<Pet> findBySpecies(Species species);
}
