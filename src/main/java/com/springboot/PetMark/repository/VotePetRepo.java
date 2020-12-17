package com.springboot.PetMark.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Pet;
import com.springboot.PetMark.entities.VotePet;

public interface VotePetRepo extends JpaRepository<VotePet, Integer>{
	List<VotePet> findByAccountAndPet(Account account,Pet pet);
}
