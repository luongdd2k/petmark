package com.springboot.PetMark.service;

import java.util.List;

import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.SizeAccessories;

public interface SizeService {
	List<SizeAccessories> findByAccessories(Accessories accessories);
	SizeAccessories findById(int id);
}
