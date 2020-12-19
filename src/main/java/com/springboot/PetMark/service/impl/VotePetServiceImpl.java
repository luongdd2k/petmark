package com.springboot.PetMark.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.VotePetDAO;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Pet;
import com.springboot.PetMark.entities.VotePet;
import com.springboot.PetMark.service.VotePetService;
@Service
public class VotePetServiceImpl implements  VotePetService{
@Autowired
VotePetDAO dao;

@Override
public void add(VotePet vote) {
	// TODO Auto-generated method stub
	dao.add(vote);
}

@Override
public List<VotePet> findByAccountAndPet(Account account, Pet pet) {
	// TODO Auto-generated method stub
	return dao.findByAccountAndPet(account, pet);
}
}
