package com.springboot.PetMark.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.entities.Accessories;



public interface AccessoriesDAO {
	List<Accessories> findAll();

	Accessories findById(int id);

	List<Accessories> findByCategory(Integer categoryId);

	List<Accessories> findByName(String name);
	List<String> getStatus();
	List<Accessories> search(String search);
	void disContinueAccessories(int id);

	void continueAccessories(int id);

	void updateAccessories(Accessories Accessories);

	boolean addAccessories(Accessories Accessories);

	List<Accessories> findByInformation(String information, Pageable pageable);
	
	List<Accessories> showProductByCategoryPageable( String status, Pageable pageable);
	int countContinueProduct();
	int countProduct(String status);
}
