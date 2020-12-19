package com.springboot.PetMark.service.impl;

import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.VoteAccDAO;
import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.VoteAccessories;
import com.springboot.PetMark.service.VoteAccService;

import org.springframework.stereotype.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
@Service
public class VoteAccServiceImpl implements VoteAccService{
@Autowired
VoteAccDAO dao;

@Override
public List<VoteAccessories> findByAccountAndAccessories(Account account, Accessories acc) {
	// TODO Auto-generated method stub
	return dao.findByAccountAndAccessories(account, acc);
}

@Override
public void add(VoteAccessories vote) {
	// TODO Auto-generated method stub
	dao.add(vote);
}
}
