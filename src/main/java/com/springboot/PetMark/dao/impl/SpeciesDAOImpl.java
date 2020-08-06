package com.springboot.PetMark.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.dao.SpeciesDAO;
import com.springboot.PetMark.entities.Species;
import com.springboot.PetMark.repository.SpeciesRepository;
@Repository
public class SpeciesDAOImpl implements SpeciesDAO{
@Autowired 
SpeciesRepository speciesRepository;
	@Override
	public List<Species> findAll() {
		// TODO Auto-generated method stub
		return speciesRepository.findAll();
	}

	@Override
	public boolean addSpecies(String name, String information) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void changeSp(Species species) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Species findById(int id) {
		// TODO Auto-generated method stub
		return speciesRepository.findById(id).get();
	}

}
