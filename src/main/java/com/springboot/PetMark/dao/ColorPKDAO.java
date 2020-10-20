package com.springboot.PetMark.dao;

import java.util.List;

import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.ColorAccessories;

public interface ColorPKDAO {
	void addColor(ColorAccessories color);
	void updateColor(ColorAccessories color);
	List<ColorAccessories> findByAccessories(Accessories accessories);
}
