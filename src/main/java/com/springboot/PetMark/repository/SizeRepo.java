package com.springboot.PetMark.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.SizeAccessories;

public interface SizeRepo extends JpaRepository<SizeAccessories, Integer>{
	List<SizeAccessories> findByAccessories(Accessories accessories);
	@Query("select distinct(s.sizeName) from SizeAccessories s")
	List<String> getStatus();
}
