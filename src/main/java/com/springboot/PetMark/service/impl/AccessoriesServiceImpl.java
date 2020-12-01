package com.springboot.PetMark.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.AccessoriesDAO;
import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.Category;
import com.springboot.PetMark.service.AccessoriesService;

@Service
public class AccessoriesServiceImpl implements AccessoriesService {
	
	@Autowired
	AccessoriesDAO AccessoriesDAO;

	@Override
	public List<Accessories> findAll() {
		// TODO Auto-generated method stub
		return AccessoriesDAO.findAll();
	}

	@Override
	public Accessories findById(int id) {
		// TODO Auto-generated method stub
		return AccessoriesDAO.findById(id);
	}

	@Override
	public boolean addAccessories(Accessories Accessories) {
		// TODO Auto-generated method stub
		return AccessoriesDAO.addAccessories(Accessories);
	}

	@Override
	public void updateAccessories(Accessories Accessories) {
		// TODO Auto-generated method stub
		AccessoriesDAO.updateAccessories(Accessories);
	}

	@Override
	public void disContinueAccessories(int id) {
		// TODO Auto-generated method stub
		AccessoriesDAO.disContinueAccessories(id);

	}

	@Override
	public void continueAccessories(int id) {
		// TODO Auto-generated method stub
		AccessoriesDAO.continueAccessories(id);
	}

	@Override
	public List<Accessories> showProductByCategoryPageable(String status, Pageable pageable) {
		// TODO Auto-generated method stub
		return AccessoriesDAO.showProductByCategoryPageable(status, pageable);
	}

	@Override
	public int countContinueProduct() {
		// TODO Auto-generated method stub
		return AccessoriesDAO.countContinueProduct();
	}

	@Override
	public int countProduct(String status) {
		// TODO Auto-generated method stub
		return AccessoriesDAO.countProduct(status);
	}

	@Override
	public List<String> getStatus() {
		// TODO Auto-generated method stub
		return AccessoriesDAO.getStatus();
	}

	@Override
	public List<Accessories> search(String search) {
		// TODO Auto-generated method stub
		return AccessoriesDAO.search(search);
	}

	@Override
	public List<Accessories> findBetweenPrice(float min, float max) {
		// TODO Auto-generated method stub
		return AccessoriesDAO.findBetweenPrice(min, max);
	}


	@Override
	public List<Accessories> findByCategory(Category category) {
		// TODO Auto-generated method stub
		return AccessoriesDAO.findByCategory(category);
	}


}
