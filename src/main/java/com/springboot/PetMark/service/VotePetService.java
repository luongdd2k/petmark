package com.springboot.PetMark.service;

import java.util.List;

import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Pet;
import com.springboot.PetMark.entities.VotePet;

public interface VotePetService {
	void add(VotePet vote);

	List<VotePet> findByAccountAndPet(Account account, Pet pet);
}
