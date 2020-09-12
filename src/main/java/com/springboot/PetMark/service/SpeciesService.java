package com.springboot.PetMark.service;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.util.List;

import org.springframework.data.domain.Pageable;

import com.springboot.PetMark.entities.Species;


public interface SpeciesService {
	List<Species> findAll();

	Species findById(int id);

	List<Species> findByNameContainingOrderByName(String name);

	List<Species> showSpeciesManagement();

	boolean isDuplicate(int id);

	void disContinueSpecies(int id);

	void continueSpecies(int id);

	void updateSpecies(Species species);

	void permanentlyDeleted(int id);

	BufferedImage createResizedCopy(Image originalImage, int scaledWidth, int scaledHeight, boolean preserveAlpha);

	boolean addSpecies(Species species);

	List<Species> findByIsDiscontinued(boolean isDiscontinued, Pageable pageable);

	List<Species> showSpeciesPageable(boolean isDiscontinued, Pageable pageable);

	int countContinueProduct();

	int countDiscontinueProduct();
}
