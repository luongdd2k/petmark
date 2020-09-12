package com.springboot.PetMark.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.dao.AccessoriesDAO;
import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.repository.AccessoriesRepository;

@Repository
public class AccessoriesDAOImpl implements AccessoriesDAO {
	@Autowired
	AccessoriesRepository AccessoriesRepository;

	@Override
	public List<Accessories> findAll() {
		// TODO Auto-generated method stub
		return AccessoriesRepository.findAll();
	}

	@Override
	public Accessories findById(int id) {
		// TODO Auto-generated method stub
		return AccessoriesRepository.findById(id).get();
	}

	@Override
	public List<Accessories> findByCategory(Integer categoryId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Accessories> findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void disContinueAccessories(int id) {
		// TODO Auto-generated method stub
		AccessoriesRepository.disContinueAccessories(id);
	}

	@Override
	public void continueAccessories(int id) {
		// TODO Auto-generated method stub
		AccessoriesRepository.continueAccessories(id);
	}

	@Override
	public void updateAccessories(Accessories Accessories) {
		// TODO Auto-generated method stub
		AccessoriesRepository.save(Accessories);
	}

	@Override
	public boolean addAccessories(Accessories Accessories) {
		// TODO Auto-generated method stub
		AccessoriesRepository.save(Accessories);
		return true;
	}

	@Override
	public List<Accessories> findByInformation(String information, Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Accessories> showProductByCategoryPageable(String status, Pageable pageable) {
		// TODO Auto-generated method stub
		return AccessoriesRepository.showProductByCategoryPageable(status, pageable);
	}

	@Override
	public int countContinueProduct() {
		// TODO Auto-generated method stub
		return AccessoriesRepository.countContinueProduct();
	}

	@Override
	public int countProduct(String status) {
		// TODO Auto-generated method stub
		return AccessoriesRepository.countProduct(status);
	}

	@Override
	public List<String> getStatus() {
		// TODO Auto-generated method stub
		return AccessoriesRepository.getStatus();
	}
}
