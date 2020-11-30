package com.springboot.PetMark.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springboot.PetMark.entities.VotePet;

public interface VotePetRepo extends JpaRepository<VotePet, Integer>{

}
