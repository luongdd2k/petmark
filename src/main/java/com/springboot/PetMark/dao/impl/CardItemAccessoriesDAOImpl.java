package com.springboot.PetMark.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.dao.CardItemAccessoriesDAO;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.CardItemAccessories;
import com.springboot.PetMark.repository.CardItemAccessoriesRepo;

@Repository
public class CardItemAccessoriesDAOImpl implements CardItemAccessoriesDAO{
@Autowired
CardItemAccessoriesRepo repo;
	@Override
	public List<CardItemAccessories> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CardItemAccessories> findByUser(Account account) {
		// TODO Auto-generated method stub
		return repo.findByAccount(account);
	}

	@Override
	public void save(CardItemAccessories card) {
		// TODO Auto-generated method stub
		repo.save(card);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		repo.deleteById(id);
	}

	@Override
	public void deleteByAccount(Account acc) {
		// TODO Auto-generated method stub
		repo.deleteByAccount(acc);
	}

	@Override
	public int countByAccount(Account account) {
		// TODO Auto-generated method stub
		return repo.countByAccount(account);
	}

	@Override
	public CardItemAccessories findById(int id) {
		// TODO Auto-generated method stub
		return repo.findById(id).get();
	}

}
