package com.springboot.PetMark.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.XaPhuongThiTranDAO;
import com.springboot.PetMark.entities.QuanHuyen;
import com.springboot.PetMark.entities.XaPhuongThiTran;
import com.springboot.PetMark.service.XaPhuongThiTranService;

@Service
public class XaPhuongThiTranServiceImpl implements XaPhuongThiTranService{
	@Autowired
	XaPhuongThiTranDAO dao;
	@Override
	public List<XaPhuongThiTran> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	public List<XaPhuongThiTran> findByQh(QuanHuyen qh) {
		// TODO Auto-generated method stub
		return dao.findByQh(qh);
	}

	@Override
	public XaPhuongThiTran findById(String xaid) {
		// TODO Auto-generated method stub
		return dao.findById(xaid);
	}

}
