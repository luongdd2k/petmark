package com.springboot.PetMark.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;

import com.springboot.PetMark.dao.PetDAO;
import com.springboot.PetMark.entities.Pet;
import com.springboot.PetMark.repository.PetRepository;

public class PetDAOImpl implements PetDAO {
	@Autowired
	PetRepository petRepository;

	@Override
	public List<Pet> findAll() {
		// TODO Auto-generated method stub
		return petRepository.findAll();
	}

	@Override
	public Pet findById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Pet> findBySpecies(Integer speciesId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Pet> findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void savePet(Pet pet) {
		// TODO Auto-generated method stub

	}

	@Override
	public void disContinuePet(int id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void continuePet(int id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updatePet(Pet pet) {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean addPet(Pet pet) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Pet> findByInformation(String information, Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

}
