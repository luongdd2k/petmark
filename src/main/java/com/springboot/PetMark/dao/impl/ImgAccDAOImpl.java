package com.springboot.PetMark.dao.impl;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.dao.ImgAccDAO;
import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.ImgAccessories;
import com.springboot.PetMark.repository.ImgAccRepo;

@Repository
public class ImgAccDAOImpl implements ImgAccDAO {
	@Autowired
	ImgAccRepo repo;

	@Override
	public ImgAccessories findByAccessories(Accessories accessories) {
		// TODO Auto-generated method stub
		return repo.findByAccessories(accessories);
	}

}
