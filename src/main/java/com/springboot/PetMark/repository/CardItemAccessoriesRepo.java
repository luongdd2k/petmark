package com.springboot.PetMark.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.CardItemAccessories;

public interface CardItemAccessoriesRepo extends JpaRepository<CardItemAccessories, Integer>{
 List<CardItemAccessories> findByAccount(Account account);

}
