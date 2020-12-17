package com.springboot.PetMark.service;

import java.util.List;

import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.CardItemAccessories;

public interface CartItemService {
	List<CardItemAccessories> findAll();

	List<CardItemAccessories> findByAccount(Account account);

	void save(CardItemAccessories cardItemAccessories);

	void delete(int id);

	void deleteByAccount(Account acc);

	int countByAccount(Account account);
	CardItemAccessories findById(int id);
}
