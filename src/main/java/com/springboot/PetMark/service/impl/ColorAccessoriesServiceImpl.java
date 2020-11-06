package com.springboot.PetMark.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.ColorPKDAO;
import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.ColorAccessories;
import com.springboot.PetMark.repository.ColorAccessoriesRepository;
import com.springboot.PetMark.service.ColorAccessoriesService;

@Service
public class ColorAccessoriesServiceImpl implements ColorAccessoriesService{
@Autowired
ColorPKDAO dao;

	@Override
	public List<ColorAccessories> findByAccessories(Accessories accessories) {
		// TODO Auto-generated method stub
		return dao.findByAccessories(accessories);
	}

	@Override
	public void addColorAccessories(ColorAccessories colorAccessories) {
		// TODO Auto-generated method stub
		dao.addColor(colorAccessories);
	}

	@Override
	public void updateColorAccessories(ColorAccessories colorAccessories) {
		// TODO Auto-generated method stub
		dao.updateColor(colorAccessories);
	}

	@Override
	public ColorAccessories findById(int id) {
		// TODO Auto-generated method stub
		return dao.findById(id);
	}

}
