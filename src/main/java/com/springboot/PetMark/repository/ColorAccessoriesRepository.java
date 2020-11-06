package com.springboot.PetMark.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.ColorAccessories;

public interface ColorAccessoriesRepository extends JpaRepository<ColorAccessories,Integer> {
	List<ColorAccessories> findByAccessories(Accessories accessories);
}
