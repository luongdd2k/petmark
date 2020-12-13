package com.springboot.PetMark.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.TinhThanhPhoDAO;
import com.springboot.PetMark.entities.TinhThanhPho;
import com.springboot.PetMark.service.TinhThanhPhoService;

@Service
public class TinhThanhPhoServiceImpl implements TinhThanhPhoService{
@Autowired
TinhThanhPhoDAO dao;

@Override
public List<TinhThanhPho> findAll() {
	// TODO Auto-generated method stub
	return dao.findAll();
}
}
