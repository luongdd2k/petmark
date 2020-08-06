package com.springboot.PetMark.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

}
