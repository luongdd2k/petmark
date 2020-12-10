package com.springboot.PetMark.service;

import java.util.List;

import com.springboot.PetMark.entities.OrderrApp;
import com.springboot.PetMark.entities.OrderrAppDetail;

public interface OrderAppDetailService {
	List<OrderrAppDetail> findByOrderApp(OrderrApp orderapp);
}
