package com.springboot.PetMark.dao.impl;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.util.List;
import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.dao.CategoryDAO;
import com.springboot.PetMark.entities.Category;
import com.springboot.PetMark.repository.CategoryRepository;

@Repository
public class CategoryDAOImpl implements CategoryDAO {
	@Autowired
	CategoryRepository categoryRepository;

	@Override
	public List<Category> findAll() {
		// TODO Auto-generated method stub
		return categoryRepository.findAll();
	}

	@Override
	public Category findById(int id) {
		// TODO Auto-generated method stub
		return categoryRepository.findById(id).get();
	}

	@Override
	public List<Category> findByNameContainingOrderByName(String name) {
		// TODO Auto-generated method stub
		return categoryRepository.findByNameContainingOrderByName(name);
	}

	@Override
	public List<Category> showCategoryManagement() {
		// TODO Auto-generated method stub
		return categoryRepository.showCategoryManagement();
	}

	@Override
	public boolean isDuplicate(int id) {
		try {
			Category category = categoryRepository.findById(id).get();
			if (category != null) {
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
	public void disContinueCategory(int id) {
		// TODO Auto-generated method stub
		categoryRepository.setCategoryDiscontinued(id);
	}

	@Override
	public void continueCategory(int id) {
		// TODO Auto-generated method stub
		categoryRepository.setCategoryContinued(id);
	}

	@Override
	public void updateCategory(Category category) {
		// TODO Auto-generated method stub
		categoryRepository.save(category);
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
		categoryRepository.save(category);
		return true;

	}

	@Override
	public List<Category> findByIsDiscontinued(boolean isDiscontinued, Pageable pageable) {
		// TODO Auto-generated method stub
		return categoryRepository.findByIsDiscontinued(isDiscontinued, pageable);
	}

	@Override
	public List<Category> showCategoryPageable(boolean isDiscontinued, Pageable pageable) {
		// TODO Auto-generated method stub
		return categoryRepository.showCategoryPageable(isDiscontinued, pageable);
	}

	@Override
	public int countContinueProduct() {
		// TODO Auto-generated method stub
		return categoryRepository.countContinueCategory();
	}

	@Override
	public int countDiscontinueProduct() {
		// TODO Auto-generated method stub
		return categoryRepository.countDiscontinueCategory();
	}

}
