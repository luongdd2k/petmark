package com.springboot.PetMark.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.dao.OrderrWebDetailDAO;
import com.springboot.PetMark.entities.OrderrWeb;
import com.springboot.PetMark.entities.OrderrWebDetail;
import com.springboot.PetMark.repository.OrderrWebDetailRepository;

@Repository
public class OrderrWebDetailDAOImpl implements OrderrWebDetailDAO {
	@Autowired
	OrderrWebDetailRepository repo;

	@Override
	public List<OrderrWebDetail> findAll() {
		// TODO Auto-generated method stub
		return repo.findAll();
	}

	@Override
	public List<OrderrWebDetail> findOrderrWeb(OrderrWeb order) {
		// TODO Auto-generated method stub
		return repo.findByOrderrWeb(order);
	}

	@Override
	public void save(OrderrWeb order) {
		// TODO Auto-generated method stub
//		repo.save(entity)
	}

}
