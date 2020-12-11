package com.springboot.PetMark.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.dao.OrderAppDAO;
import com.springboot.PetMark.entities.OrderrApp;
import com.springboot.PetMark.repository.OrderAppRepo;

@Repository
public class OrderAppDAOImpl implements OrderAppDAO {
	@Autowired
	OrderAppRepo repo;

	@Override
	public List<OrderrApp> findAll() {
		// TODO Auto-generated method stub
		return repo.findAll();
	}

	@Override
	public void capnhatStt(String status, int id) {
		// TODO Auto-generated method stub
		repo.capnhatStt(status, id);
	}

	@Override
	public OrderrApp findById(int id) {
		// TODO Auto-generated method stub
		return repo.findById(id).get();
	}

	@Override
	public void save(OrderrApp OrderrApp) {
		// TODO Auto-generated method stub
		repo.save(OrderrApp);
	}

}
