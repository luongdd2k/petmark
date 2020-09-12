package com.springboot.PetMark.service.impl;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springboot.PetMark.dao.SpeciesDAO;
import com.springboot.PetMark.entities.Species;
import com.springboot.PetMark.service.SpeciesService;

@Service
public class SpeciesServiceImpl implements SpeciesService{

	@Autowired
	SpeciesDAO speciesDAO;
	
	@Override
	public List<Species> findAll() {
		// TODO Auto-generated method stub
		return speciesDAO.findAll();
	}

	@Override
	public Species findById(int id) {
		// TODO Auto-generated method stub
		return speciesDAO.findById(id);
	}

	@Override
	public List<Species> findByNameContainingOrderByName(String name) {
		// TODO Auto-generated method stub
		return speciesDAO.findByNameContainingOrderByName(name);
	}

	@Override
	public List<Species> showSpeciesManagement() {
		// TODO Auto-generated method stub
		return speciesDAO.showSpeciesManagement();
	}

	@Override
	public boolean isDuplicate(int id) {
		// TODO Auto-generated method stub
		return speciesDAO.isDuplicate(id);
	}

	@Override
	public void disContinueSpecies(int id) {
		// TODO Auto-generated method stub
		speciesDAO.disContinueSpecies(id);
	}

	@Override
	@Transactional
	public void continueSpecies(int id) {
		// TODO Auto-generated method stub
		speciesDAO.continueSpecies(id);
	}

	@Override
	public void updateSpecies(Species species) {
		// TODO Auto-generated method stub
		speciesDAO.updateSpecies(species);
	}

	@Override
	public void permanentlyDeleted(int id) {
		// TODO Auto-generated method stub
		speciesDAO.permanentlyDeleted(id);
	}

	@Override
	public BufferedImage createResizedCopy(Image originalImage, int scaledWidth, int scaledHeight,
			boolean preserveAlpha) {
		// TODO Auto-generated method stub
		return speciesDAO.createResizedCopy(originalImage, scaledWidth, scaledHeight, preserveAlpha);
	}

	@Override
	public boolean addSpecies(Species species) {
		// TODO Auto-generated method stub
		return speciesDAO.addSpecies(species);
	}

	@Override
	public List<Species> findByIsDiscontinued(boolean isDiscontinued, Pageable pageable) {
		// TODO Auto-generated method stub
		return speciesDAO.findByIsDiscontinued(isDiscontinued, pageable);
	}

	@Override
	public int countContinueProduct() {
		// TODO Auto-generated method stub
		return speciesDAO.countContinueProduct();
	}

	@Override
	public int countDiscontinueProduct() {
		// TODO Auto-generated method stub
		return speciesDAO.countDiscontinueProduct();
	}

	@Override
	public List<Species> showSpeciesPageable(boolean isDiscontinued, Pageable pageable) {
		// TODO Auto-generated method stub
		return speciesDAO.showSpeciesPageable(isDiscontinued, pageable);
	}
	
}