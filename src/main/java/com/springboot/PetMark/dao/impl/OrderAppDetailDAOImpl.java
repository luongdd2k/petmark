package com.springboot.PetMark.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.dao.OrderAppDetailDAO;
import com.springboot.PetMark.entities.OrderrApp;
import com.springboot.PetMark.entities.OrderrAppDetail;
import com.springboot.PetMark.repository.OrderAppDetailRepo;

@Repository
public class OrderAppDetailDAOImpl implements OrderAppDetailDAO {
@Autowired
OrderAppDetailRepo repo;
	
	@Override
	public List<OrderrAppDetail> findByOrderApp(OrderrApp orderapp) {
		// TODO Auto-generated method stub
		return repo.findByOrderrApp(orderapp);
	}

}
