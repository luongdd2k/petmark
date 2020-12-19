package com.springboot.PetMark.dao;

import java.util.List;

import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.VoteAccessories;

public interface VoteAccDAO {
	List<VoteAccessories> findByAccountAndAccessories(Account account,Accessories acc);
	void add(VoteAccessories vote);
}
