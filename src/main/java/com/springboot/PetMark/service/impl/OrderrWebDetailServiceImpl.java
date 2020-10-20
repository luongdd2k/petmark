package com.springboot.PetMark.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.OrderrWebDetailDAO;
import com.springboot.PetMark.entities.OrderrWeb;
import com.springboot.PetMark.entities.OrderrWebDetail;
import com.springboot.PetMark.service.OrderrWebDetailService;

@Service
public class OrderrWebDetailServiceImpl implements OrderrWebDetailService {
@Autowired
OrderrWebDetailDAO dao;
	@Override
	public List<OrderrWebDetail> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}
	@Override
	public List<OrderrWebDetail> findOrderrWeb(OrderrWeb order) {
		// TODO Auto-generated method stub
		return dao.findOrderrWeb(order);
	}
	@Override
	public void save(OrderrWebDetail ode) {
		// TODO Auto-generated method stub
		dao.save(ode);
	}

}
