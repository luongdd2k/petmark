package com.springboot.PetMark.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.VoteAccessories;

public interface VoteAccessoriesRepo extends JpaRepository<VoteAccessories, Integer>{
	List<VoteAccessories> findByAccountAndAccessories(Account account,Accessories acc);
}
