package com.springboot.PetMark.dao;

import java.util.List;

import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Pet;
import com.springboot.PetMark.entities.VotePet;

public interface VotePetDAO {
	void add(VotePet vote);

	List<VotePet> findByAccountAndPet(Account account, Pet pet);
}
