package com.springboot.PetMark.dao;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Deposit;

public interface DepositDAO {
	List<Deposit> findAll();
	Deposit findById(int id);
	List<Deposit> findPage(Pageable pageable);
	int countAll();
	List<Deposit> findByAccount(Account account);
	
	void add(Deposit deposit);
	List<Deposit> findByAccountStt(Account account, String stt);
	
}
