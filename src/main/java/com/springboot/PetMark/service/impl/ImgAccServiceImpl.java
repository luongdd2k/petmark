package com.springboot.PetMark.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.ImgAccDAO;
import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.ImgAccessories;
import com.springboot.PetMark.service.ImgAccService;

@Service
public class ImgAccServiceImpl implements ImgAccService {
	@Autowired
	ImgAccDAO dao;

	@Override
	public ImgAccessories findByAccessories(Accessories accessories) {
		// TODO Auto-generated method stub
		return dao.findByAccessories(accessories);
	}

}
