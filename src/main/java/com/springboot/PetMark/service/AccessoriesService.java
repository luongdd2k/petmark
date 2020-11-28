package com.springboot.PetMark.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.springboot.PetMark.entities.Accessories;

public interface AccessoriesService {
	List<Accessories> findAll();

	Accessories findById(int id);

	boolean addAccessories(Accessories Accessories);

	void updateAccessories(Accessories Accessories);
	void disContinueAccessories(int id);
	void continueAccessories(int id);
	List<Accessories> showProductByCategoryPageable(String status, Pageable pageable);
	int countContinueProduct();
	int countProduct(String status);
	List<String> getStatus();
	List<Accessories> search(String search);
}
