package com.springboot.PetMark.service;

import java.util.List;

import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.ImgAccessories;

public interface ImgAccService {
	ImgAccessories findByAccessories(Accessories accessories);
	void add(ImgAccessories img);
}
