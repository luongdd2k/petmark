package com.springboot.PetMark.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.ColorAccessories;

public interface ColorAccessoriesRepository extends JpaRepository<ColorAccessories,Integer> {
	List<ColorAccessories> findByAccessories(Accessories accessories);
	@Query("select distinct(c.colorAccessories) from ColorAccessories c")
	List<String> findColor();
	@Query("select c.accessories from ColorAccessories c where c.colorAccessories like %?1%")
	List<Accessories> findListAcc(String mau);
}
