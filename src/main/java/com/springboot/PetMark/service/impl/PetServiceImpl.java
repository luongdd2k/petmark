package com.springboot.PetMark.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.PetDAO;
import com.springboot.PetMark.entities.Pet;
import com.springboot.PetMark.entities.Species;
import com.springboot.PetMark.repository.PetRepository;
import com.springboot.PetMark.service.PetService;

@Service
public class PetServiceImpl implements PetService {

	@Autowired
	PetDAO petDAO;

	@Override
	public List<Pet> findAll() {
		// TODO Auto-generated method stub
		return petDAO.findAll();

	}

	@Override
	public List<Pet> showProductByCategoryPageable(String status, Pageable pageable) {
		// TODO Auto-generated method stub
		return petDAO.showProductByCategoryPageable(status, pageable);
	}

	@Override
	public boolean addPet(Pet pet) {
		// TODO Auto-generated method stub
		return petDAO.addPet(pet);
	}

	@Override
	public void updatePet(Pet pet) {
		// TODO Auto-generated method stub
		petDAO.updatePet(pet);
	}

	@Override
	public Pet findById(int id) {
		// TODO Auto-generated method stub
		return petDAO.findById(id);
	}

	@Override
	public void disContinuePet(int id) {
		// TODO Auto-generated method stub
		petDAO.disContinuePet(id);

	}

	@Override
	public int countContinueProduct() {
		// TODO Auto-generated method stub
		return petDAO.countContinueProduct();
	}

	@Override
	public int countProduct(String status) {
		// TODO Auto-generated method stub
		return petDAO.countProduct(status);
	}

	@Override
	public void continuePet(int id) {
		// TODO Auto-generated method stub
		petDAO.continuePet(id);
	}

	@Override
	public List<String> selecStatus() {
		// TODO Auto-generated method stub
		return petDAO.selecStatus();
	}

	@Override
	public List<Pet> showByDes(String des, Pageable pageable) {
		// TODO Auto-generated method stub
		return petDAO.showByDes(des, pageable);
	}

	@Override
	public List<Pet> search(String search) {
		// TODO Auto-generated method stub
		return petDAO.search(search);
	}

	@Override
	public List<Pet> findBetweenPrice(float min, float max) {
		// TODO Auto-generated method stub
		return petDAO.findBetweenPrice(min, max);
	}

	@Override
	public List<Pet> findBySpecies(Species species) {
		// TODO Auto-generated method stub
		return petDAO.findBySpecies(species);
	}

}
