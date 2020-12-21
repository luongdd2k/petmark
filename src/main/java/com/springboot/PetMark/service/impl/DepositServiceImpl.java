package com.springboot.PetMark.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.DepositDAO;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Deposit;
import com.springboot.PetMark.service.DepositService;

@Service
public class DepositServiceImpl implements DepositService {
	@Autowired
	DepositDAO dao;
	@Override
	public List<Deposit> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	public Deposit findById(int id) {
		// TODO Auto-generated method stub
		return dao.findById(id);
	}

	@Override
	public List<Deposit> findByAccount(Account account) {
		// TODO Auto-generated method stub
		return dao.findByAccount(account);
	}

	@Override
	public void add(Deposit deposit) {
		// TODO Auto-generated method stub
		dao.add(deposit);
	}

	@Override
	public List<Deposit> findByAccountStt(Account account, String stt) {
		// TODO Auto-generated method stub
		return dao.findByAccountStt(account, stt);
	}

	@Override
	public List<Deposit> findPage(Pageable pageable) {
		// TODO Auto-generated method stub
		return dao.findPage(pageable);
	}

	@Override
	public int countAll() {
		// TODO Auto-generated method stub
		return dao.countAll();
	}

}
