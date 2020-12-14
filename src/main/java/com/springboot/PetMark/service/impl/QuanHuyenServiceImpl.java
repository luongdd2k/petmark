package com.springboot.PetMark.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.QuanHuyenDAO;
import com.springboot.PetMark.entities.QuanHuyen;
import com.springboot.PetMark.entities.TinhThanhPho;
import com.springboot.PetMark.service.QuanHuyenService;

@Service
public class QuanHuyenServiceImpl implements QuanHuyenService{
@Autowired
QuanHuyenDAO dao;

@Override
public List<QuanHuyen> findAll() {
	// TODO Auto-generated method stub
	return dao.findAll();
}

@Override
public List<QuanHuyen> findByTp(TinhThanhPho tp) {
	// TODO Auto-generated method stub
	return dao.findByTp(tp);
}
}
