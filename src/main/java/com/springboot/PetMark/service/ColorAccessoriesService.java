package com.springboot.PetMark.service;

import java.util.List;

import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.ColorAccessories;

public interface ColorAccessoriesService {
//	List<ColorAccessories> findAll();

	ColorAccessories findById(int id);

	List<ColorAccessories> findByAccessories(Accessories accessories);

	void addColorAccessories(ColorAccessories colorAccessories);
	void updateColorAccessories(ColorAccessories colorAccessories);
}
