package com.springboot.PetMark.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.OrderAppDAO;
import com.springboot.PetMark.entities.OrderrApp;
import com.springboot.PetMark.service.OrderAppService;

@Service
public class OrderAppServiceImpl implements OrderAppService {
	@Autowired
	OrderAppDAO dao;

	@Override
	public List<OrderrApp> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	public void capnhatStt(String status, int id) {
		// TODO Auto-generated method stub
		dao.capnhatStt(status, id);
	}

	@Override
	public OrderrApp findById(int id) {
		// TODO Auto-generated method stub
		return dao.findById(id);
	}

	@Override
	public void save(OrderrApp OrderrApp) {
		// TODO Auto-generated method stub
		dao.save(OrderrApp);
	}

}
