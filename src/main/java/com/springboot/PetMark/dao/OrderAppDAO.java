package com.springboot.PetMark.dao;

import java.util.List;

import com.springboot.PetMark.entities.OrderrApp;
import com.springboot.PetMark.entities.OrderrAppDetail;
import com.springboot.PetMark.entities.OrderrWeb;

public interface OrderAppDAO {
	List<OrderrApp> findAll();
	OrderrApp findById(int id);
	void capnhatStt(String status, int id);
	void save(OrderrApp OrderrApp);
}
