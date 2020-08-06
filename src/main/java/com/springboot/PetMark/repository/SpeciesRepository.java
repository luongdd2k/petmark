package com.springboot.PetMark.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.entities.Species;
@Repository
public interface SpeciesRepository extends JpaRepository<Species, Integer> {
	
}
