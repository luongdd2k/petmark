package com.springboot.PetMark.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.dao.VoteAccDAO;
import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.VoteAccessories;
import com.springboot.PetMark.repository.VoteAccessoriesRepo;

@Repository
public class VoteAccDAOImpl implements VoteAccDAO{
@Autowired
VoteAccessoriesRepo repo;

@Override
public List<VoteAccessories> findByAccountAndAccessories(Account account, Accessories acc) {
	// TODO Auto-generated method stub
	return repo.findByAccountAndAccessories(account, acc);
}

@Override
public void add(VoteAccessories vote) {
	// TODO Auto-generated method stub
	repo.save(vote);
}
}
