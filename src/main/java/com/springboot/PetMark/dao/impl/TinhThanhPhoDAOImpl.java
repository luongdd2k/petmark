package com.springboot.PetMark.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.dao.TinhThanhPhoDAO;
import com.springboot.PetMark.entities.TinhThanhPho;
import com.springboot.PetMark.repository.TinhThanhPhoRepo;

@Repository
public class TinhThanhPhoDAOImpl implements TinhThanhPhoDAO{
@Autowired
TinhThanhPhoRepo repo;

@Override
public List<TinhThanhPho> findAll() {
	// TODO Auto-generated method stub
	return repo.findAll();
}
}
