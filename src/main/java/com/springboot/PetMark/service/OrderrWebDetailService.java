package com.springboot.PetMark.service;

import java.util.List;

import com.springboot.PetMark.entities.OrderrWeb;
import com.springboot.PetMark.entities.OrderrWebDetail;

public interface OrderrWebDetailService {
	List<OrderrWebDetail> findAll();
	List<OrderrWebDetail> findOrderrWeb(OrderrWeb order);
	void save(OrderrWebDetail ode);
}
