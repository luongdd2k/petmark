package com.springboot.PetMark.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.entities.Species;

public interface SpeciesRepository extends JpaRepository<Species, String> {
	Species findByName(String name);
}
