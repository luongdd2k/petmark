package com.springboot.PetMark.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.dao.XaPhuongThiTranDAO;
import com.springboot.PetMark.entities.QuanHuyen;
import com.springboot.PetMark.entities.XaPhuongThiTran;
import com.springboot.PetMark.repository.XaPhuongThiTranRepo;

@Repository
public class XaPhuongThiTranDAOImpl implements XaPhuongThiTranDAO {
	@Autowired
	XaPhuongThiTranRepo repo;

	@Override
	public List<XaPhuongThiTran> findAll() {
		// TODO Auto-generated method stub
		return repo.findAll();
	}

	@Override
	public List<XaPhuongThiTran> findByQh(QuanHuyen qh) {
		// TODO Auto-generated method stub
		return repo.findByQh(qh);
	}

	@Override
	public XaPhuongThiTran findById(String xaid) {
		// TODO Auto-generated method stub
		return repo.findById(xaid).get();
	}

}
