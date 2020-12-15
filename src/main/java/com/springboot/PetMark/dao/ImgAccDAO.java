package com.springboot.PetMark.dao;



import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.ImgAccessories;

public interface ImgAccDAO {
	ImgAccessories findByAccessories(Accessories accessories);
	void add(ImgAccessories img);
}
