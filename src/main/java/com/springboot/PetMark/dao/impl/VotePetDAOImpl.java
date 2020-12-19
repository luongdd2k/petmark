package com.springboot.PetMark.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.dao.VotePetDAO;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Pet;
import com.springboot.PetMark.entities.VotePet;
import com.springboot.PetMark.repository.VotePetRepo;
@Repository
public class VotePetDAOImpl implements VotePetDAO {
@Autowired
VotePetRepo repo;

@Override
public void add(VotePet vote) {
	// TODO Auto-generated method stub
	repo.save(vote);
}

@Override
public List<VotePet> findByAccountAndPet(Account account, Pet pet) {
	// TODO Auto-generated method stub
	return repo.findByAccountAndPet(account, pet);
}
}
