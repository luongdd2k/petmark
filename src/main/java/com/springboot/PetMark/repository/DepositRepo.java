package com.springboot.PetMark.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Deposit;

public interface DepositRepo extends JpaRepository<Deposit, Integer> {
	List<Deposit> findByAccount(Account account);
	@Query("select d from Deposit d where d.account = ?1 and d.status = ?2 ")
	List<Deposit> findByAccountStt(Account account, boolean stt);
}
