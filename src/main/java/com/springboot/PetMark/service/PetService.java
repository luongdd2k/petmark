package com.springboot.PetMark.service;

import java.util.List;

import com.springboot.PetMark.entities.Pet;

public interface PetService {
	List<Pet> findAll();
}
