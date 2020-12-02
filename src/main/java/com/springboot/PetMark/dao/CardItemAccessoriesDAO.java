package com.springboot.PetMark.dao;

import java.util.List;

import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.CardItemAccessories;

public interface CardItemAccessoriesDAO {
	List<CardItemAccessories> findAll();

	List<CardItemAccessories> findByUser(Account account);

	void save(CardItemAccessories card);

	void delete(int id);

	void deleteByAccount(Account acc);

	int countByAccount(Account account);
}
