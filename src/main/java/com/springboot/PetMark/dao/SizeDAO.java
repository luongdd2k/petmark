package com.springboot.PetMark.dao;

import java.util.List;

import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.SizeAccessories;

public interface SizeDAO {
	List<SizeAccessories> findByAccessories(Accessories accessories);
	SizeAccessories findById(int id);
}
