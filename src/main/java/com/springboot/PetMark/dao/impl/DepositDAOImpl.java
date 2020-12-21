package com.springboot.PetMark.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.dao.DepositDAO;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Deposit;
import com.springboot.PetMark.repository.DepositRepo;

@Repository
public class DepositDAOImpl implements DepositDAO{
	@Autowired
	DepositRepo repo;
	@Override
	public List<Deposit> findAll() {
		// TODO Auto-generated method stub
		return repo.findAll();
	}

	@Override
	public Deposit findById(int id) {
		// TODO Auto-generated method stub
		return repo.findById(id).get();
	}

	@Override
	public List<Deposit> findByAccount(Account account) {
		// TODO Auto-generated method stub
		return repo.findByAccount(account);
	}

	@Override
	public void add(Deposit deposit) {
		// TODO Auto-generated method stub
		repo.save(deposit);
	}

	@Override
	public List<Deposit> findByAccountStt(Account account, String stt) {
		// TODO Auto-generated method stub
		return repo.findByAccountStt(account, stt);
	}

	@Override
	public int countAll() {
		// TODO Auto-generated method stub
		return repo.countAll();
	}

	@Override
	public List<Deposit> findPage(Pageable pageable) {
		// TODO Auto-generated method stub
		return repo.findPage(pageable);
	}

}
