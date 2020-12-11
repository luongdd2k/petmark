package com.springboot.PetMark.service;

import java.util.List;

import com.springboot.PetMark.entities.OrderrApp;

public interface OrderAppService {
	List<OrderrApp> findAll();
	OrderrApp findById(int id);
	void capnhatStt(String status, int id);
	void save(OrderrApp OrderrApp);
}
