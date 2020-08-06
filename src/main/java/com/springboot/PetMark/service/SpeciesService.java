package com.springboot.PetMark.service;

import java.util.List;

import com.springboot.PetMark.entities.Species;

public interface SpeciesService {
List<Species> findAll();
Species findById(int id);
}
