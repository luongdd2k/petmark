package com.springboot.PetMark.dao;

import java.util.List;
import com.springboot.PetMark.entities.Pet;
import com.springboot.PetMark.entities.ColorPet;

public interface ColorPetDAO {
 List<ColorPet> findByPet(Pet pet);
 ColorPet findById(int id);
}
