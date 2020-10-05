package com.springboot.PetMark.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.ColorAccessories;
import com.springboot.PetMark.repository.ColorAccessoriesRepository;
import com.springboot.PetMark.service.ColorAccessoriesService;

@Service
public class ColorAccessoriesServiceImpl implements ColorAccessoriesService{

	@Autowired
	ColorAccessoriesRepository colorAccessoriesRepository;
	@Override
	public List<ColorAccessories> findAll() {
		// TODO Auto-generated method stub
		return colorAccessoriesRepository.findAll();
	}

	@Override
	public List<ColorAccessories> findByAccessories(int accessories) {
		// TODO Auto-generated method stub
		return colorAccessoriesRepository.findByAccessories(accessories);
	}

	@Override
	public boolean addColorAccessories(ColorAccessories colorAccessories) {
		// TODO Auto-generated method stub
		colorAccessoriesRepository.save(colorAccessories);
		return true;
	}

}
