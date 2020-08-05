package com.springboot.PetMark.dao;

import java.util.List;

import com.springboot.PetMark.entities.Species;

public interface SpeciesDAO {
	List<Species> findAll();

	boolean addSpecies(String name, String information);

	void changeSp(Species species);
}
