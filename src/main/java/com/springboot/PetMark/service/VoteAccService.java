package com.springboot.PetMark.service;

import java.util.List;

import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.VoteAccessories;

public interface VoteAccService {
	List<VoteAccessories> findByAccountAndAccessories(Account account,Accessories acc);
	void add(VoteAccessories vote);
}
