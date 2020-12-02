package com.springboot.PetMark.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.Category;

public interface AccessoriesService {
	List<Accessories> findAll();
	List<Accessories> findByCategory(Category category);
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
	List<Accessories> findBetweenPrice(float min, float max);
}
