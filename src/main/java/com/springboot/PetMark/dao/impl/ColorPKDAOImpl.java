package com.springboot.PetMark.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.dao.ColorPKDAO;
import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.ColorAccessories;
import com.springboot.PetMark.repository.ColorAccessoriesRepository;

@Repository
public class ColorPKDAOImpl implements ColorPKDAO {
	@Autowired
	ColorAccessoriesRepository repo;

	@Override
	public List<ColorAccessories> findByAccessories(Accessories accessories) {
		// TODO Auto-generated method stub
		return repo.findByAccessories(accessories);
	}

	@Override
	public void addColor(ColorAccessories color) {
		// TODO Auto-generated method stub
		repo.save(color);
	}

	@Override
	public void updateColor(ColorAccessories color) {
		// TODO Auto-generated method stub
		repo.save(color);
	}

	@Override
	public ColorAccessories findById(int id) {
		// TODO Auto-generated method stub
		return repo.findById(id).get();
	}

	@Override
	public List<ColorAccessories> findAll() {
		// TODO Auto-generated method stub
		return repo.findAll();
	}

	@Override
	public List<String> findColor() {
		// TODO Auto-generated method stub
		return repo.findColor();
	}

	@Override
	public List<Accessories> findListAcc(String mau) {
		// TODO Auto-generated method stub
		return repo.findListAcc(mau);
	}

}
