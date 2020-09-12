package com.springboot.PetMark.dao.impl;

import java.awt.AlphaComposite;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.util.List;
import java.util.NoSuchElementException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.dao.SpeciesDAO;
import com.springboot.PetMark.entities.Species;
import com.springboot.PetMark.repository.SpeciesRepository;

@Repository
public class SpeciesDAOImpl implements SpeciesDAO {

	@Autowired
	SpeciesRepository speciesRepository;

	@Override
	public List<Species> findAll() {
		// TODO Auto-generated method stub
		return speciesRepository.findAll();
	}

	@Override
	public Species findById(int id) {
		// TODO Auto-generated method stub
		try {
			return speciesRepository.findById(id).get();
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public List<Species> findByNameContainingOrderByName(String name) {
		// TODO Auto-generated method stub
		return speciesRepository.findByNameContainingOrderByName(name);
	}

	@Override
	public List<Species> showSpeciesManagement() {
		// TODO Auto-generated method stub
		return speciesRepository.showSpeciesManagement();
	}

	@Override
	public boolean isDuplicate(int id) {
		// TODO Auto-generated method stub
		try {
			Species species = speciesRepository.findById(id).get();
			if (species != null) {
				return true;
			}
		} catch (NoSuchElementException e) {
			// TODO: handle exception
			System.out.println("Duplcate species.id");
			return false;
		}
		return false;
	}

	@Override
	public void disContinueSpecies(int id) {
		// TODO Auto-generated method stub
		speciesRepository.setSpeciesDiscontinued(id);
	}

	@Override
	public void continueSpecies(int id) {
		// TODO Auto-generated method stub
		speciesRepository.setSpeciesContinued(id);
	}

	@Override
	public void updateSpecies(Species species) {
		// TODO Auto-generated method stub
		speciesRepository.save(species);
	}

	@Override
	public void permanentlyDeleted(int id) {
		// TODO Auto-generated method stub
		speciesRepository.deleteById(id);
	}

	@Override
	public BufferedImage createResizedCopy(Image originalImage, int scaledWidth, int scaledHeight, boolean preserveAlpha) {
	    int imageType = preserveAlpha ? BufferedImage.TYPE_INT_RGB : BufferedImage.TYPE_INT_ARGB;
	    BufferedImage scaledBI = new BufferedImage(scaledWidth, scaledHeight, imageType);
	    Graphics2D g = scaledBI.createGraphics();
	    if (preserveAlpha) {
	        g.setComposite(AlphaComposite.Src);
	    }
	    g.drawImage(originalImage, 0, 0, scaledWidth, scaledHeight, null);
	    g.dispose();
	    return scaledBI;
	}

	@Override
	public boolean addSpecies(Species species) {
		// TODO Auto-generated method stub
		speciesRepository.save(species);
		return true;
	}

	@Override
	public List<Species> findByIsDiscontinued(boolean isDiscontinued, Pageable pageable) {
		// TODO Auto-generated method stub
		return speciesRepository.findByIsDiscontinued(isDiscontinued, pageable);
	}

	@Override
	public int countContinueProduct() {
		// TODO Auto-generated method stub
		return speciesRepository.countContinueSpecies();
	}

	@Override
	public int countDiscontinueProduct() {
		// TODO Auto-generated method stub
		return speciesRepository.countDiscontinueSpecies();
	}

	@Override
	public List<Species> showSpeciesPageable(boolean isDiscontinued, Pageable pageable) {
		// TODO Auto-generated method stub
		return speciesRepository.showSpeciesPageable(isDiscontinued, pageable);
	}

}