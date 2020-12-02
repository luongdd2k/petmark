package com.springboot.PetMark.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.springboot.PetMark.entities.ColorPet;
import com.springboot.PetMark.entities.Pet;

public interface ColorPetRepo extends JpaRepository<ColorPet, Integer> {
 List<ColorPet> findByPet(Pet pet);
 @Query("select distinct(c.eyeColor) from ColorPet c")
 List<String> getEyeColor();
 
 @Query("select distinct(c.fullColor) from ColorPet c")
 List<String> getFullColor();
 
 @Query("select c.pet from ColorPet c where c.fullColor = ?1 or c.eyeColor = ?2")
 List<Pet> findListPet(String fullColor,String eyeColor );
}
