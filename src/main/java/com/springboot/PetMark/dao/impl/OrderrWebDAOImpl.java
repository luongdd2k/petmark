package com.springboot.PetMark.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.dao.OrderrWebDAO;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.OrderrWeb;
import com.springboot.PetMark.repository.OrderrWebRepository;

@Repository
public class OrderrWebDAOImpl implements OrderrWebDAO {
	@Autowired
	OrderrWebRepository repo;

	@Override
	public List<OrderrWeb> findAll() {
		// TODO Auto-generated method stub
		return repo.findAll();
	}

	@Override
	public List<OrderrWeb> findByAccount(Account account) {
		// TODO Auto-generated method stub
		return repo.findByAccount(account);
	}

	@Override
	public Page<OrderrWeb> search(int id, String name, Pageable pageable) {
		// TODO Auto-generated method stub
		return repo.search(id, name, pageable);
//		return null;
	}

	@Override
	public Page<OrderrWeb> searchFilter(String text, String id, String paymentMethod, String paymentStatus,
			String deliveryStatus, Pageable pageable) {
		// TODO Auto-generated method stub
		return repo.searchFilter(text, id, paymentMethod, paymentStatus, deliveryStatus, pageable);
//		return null;
	}

	@Override
	public OrderrWeb findById(int id) {
		// TODO Auto-generated method stub
		return repo.findById(id).get();
	}

	@Override
	public void save(OrderrWeb odeWeb) {
		// TODO Auto-generated method stub
		repo.save(odeWeb);
	}

	@Override
	public void updatedelivery(String status,int id) {
		// TODO Auto-generated method stub
		repo.capnhatStt(status, id);
	}


}
