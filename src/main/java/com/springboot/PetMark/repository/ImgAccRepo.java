package com.springboot.PetMark.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.ImgAccessories;

public interface ImgAccRepo extends JpaRepository<ImgAccessories, Integer> {
	ImgAccessories findByAccessories(Accessories accessories);

}
