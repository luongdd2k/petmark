package com.springboot.PetMark.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springboot.PetMark.entities.ColorPet;
import com.springboot.PetMark.entities.Pet;

public interface ColorPetRepo extends JpaRepository<ColorPet, Integer> {
 List<ColorPet> findByPet(Pet pet);

}
