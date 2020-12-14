package com.springboot.PetMark.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.dao.QuanHuyenDAO;
import com.springboot.PetMark.entities.QuanHuyen;
import com.springboot.PetMark.entities.TinhThanhPho;
import com.springboot.PetMark.repository.QuanHuyenRepo;

@Repository
public class QuanHuyenDAOImpl  implements QuanHuyenDAO{
	@Autowired
	QuanHuyenRepo repo;

	@Override
	public List<QuanHuyen> findAll() {
		// TODO Auto-generated method stub
		return repo.findAll();
	}

	@Override
	public List<QuanHuyen> findByTp(TinhThanhPho tp) {
		// TODO Auto-generated method stub
		return repo.findByTp(tp);
	}
}
