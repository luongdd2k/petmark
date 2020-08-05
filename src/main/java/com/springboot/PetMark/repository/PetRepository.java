package com.springboot.PetMark.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springboot.PetMark.entities.Pet;


public interface PetRepository extends JpaRepository<Pet, Integer> {

}
