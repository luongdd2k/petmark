package com.springboot.PetMark.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.CardItemAccessories;

public interface CardItemAccessoriesRepo extends JpaRepository<CardItemAccessories, Integer> {
	List<CardItemAccessories> findByAccount(Account account);

	@Transactional
	@Modifying
	@Query(value = "delete from CardItemAccessories c where c.account = ?1")
	void deleteByAccount(Account account);
}
