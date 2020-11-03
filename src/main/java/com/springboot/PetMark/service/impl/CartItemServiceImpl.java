package com.springboot.PetMark.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.CardItemAccessoriesDAO;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.CardItemAccessories;
import com.springboot.PetMark.service.CartItemService;

@Service
public class CartItemServiceImpl implements CartItemService {
	@Autowired
	CardItemAccessoriesDAO dao;

	@Override
	public List<CardItemAccessories> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	public List<CardItemAccessories> findByAccount(Account account) {
		// TODO Auto-generated method stub
		return dao.findByUser(account);
	}

	@Override
	public void save(CardItemAccessories cardItemAccessories) {
		// TODO Auto-generated method stub
		dao.save(cardItemAccessories);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		dao.delete(id);
	}

	@Override
	public void deleteByAccount(Account acc) {
		// TODO Auto-generated method stub
		dao.deleteByAccount(acc);
	}

}
