package com.springboot.PetMark.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.OrderAppDetailDAO;
import com.springboot.PetMark.entities.OrderrApp;
import com.springboot.PetMark.entities.OrderrAppDetail;
import com.springboot.PetMark.service.OrderAppDetailService;

@Service
public class OrderAppDetailServiceImpl implements OrderAppDetailService{
@Autowired 
OrderAppDetailDAO dao;

@Override
public List<OrderrAppDetail> findByOrderApp(OrderrApp orderapp) {
	// TODO Auto-generated method stub
	return dao.findByOrderApp(orderapp);
}

}
