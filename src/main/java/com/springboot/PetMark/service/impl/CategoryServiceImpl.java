package com.springboot.PetMark.service.impl;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.CategoryDAO;
import com.springboot.PetMark.entities.Category;
import com.springboot.PetMark.service.CategoryService;
@Service
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	CategoryDAO categoryDAO;

	@Override
	public List<Category> findAll() {
		// TODO Auto-generated method stub
		return categoryDAO.findAll();
	}

	@Override
	public Category findById(int id) {
		// TODO Auto-generated method stub
		return categoryDAO.findById(id);
	}

	@Override
	public List<Category> findByNameContainingOrderByName(String name) {
		// TODO Auto-generated method stub
		return categoryDAO.findByNameContainingOrderByName(name);
	}

	@Override
	public List<Category> showCategoryManagement() {
		// TODO Auto-generated method stub
		return categoryDAO.showCategoryManagement();
	}

	@Override
	public boolean isDuplicate(int id) {
		// TODO Auto-generated method stub
		return categoryDAO.isDuplicate(id);
	}

	@Override
	public void disContinueCategory(int id) {
		// TODO Auto-generated method stub
		categoryDAO.disContinueCategory(id);

	}

	@Override
	public void continueCategory(int id) {
		// TODO Auto-generated method stub
categoryDAO.continueCategory(id);
	}

	@Override
	public void updateCategory(Category category) {
		// TODO Auto-generated method stub
categoryDAO.updateCategory(category);
	}

	@Override
	public void permanentlyDeleted(int id) {
		// TODO Auto-generated method stub

	}

	@Override
	public BufferedImage createResizedCopy(Image originalImage, int scaledWidth, int scaledHeight,
			boolean preserveAlpha) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean addCategory(Category category) {
		// TODO Auto-generated method stub
		categoryDAO.addCategory(category);
		return true;
	}

	@Override
	public List<Category> findByIsDiscontinued(boolean isDiscontinued, Pageable pageable) {
		// TODO Auto-generated method stub
		return categoryDAO.findByIsDiscontinued(isDiscontinued, pageable);
	}

	@Override
	public List<Category> showCategoryPageable(boolean isDiscontinued, Pageable pageable) {
		// TODO Auto-generated method stub
		return categoryDAO.showCategoryPageable(isDiscontinued, pageable);
	}

	@Override
	public int countContinueProduct() {
		// TODO Auto-generated method stub
		return categoryDAO.countContinueProduct();
	}

	@Override
	public int countDiscontinueProduct() {
		// TODO Auto-generated method stub
		return categoryDAO.countDiscontinueProduct();
	}

}
