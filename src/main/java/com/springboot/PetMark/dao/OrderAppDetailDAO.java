package com.springboot.PetMark.dao;

import java.util.List;

import com.springboot.PetMark.entities.OrderrApp;
import com.springboot.PetMark.entities.OrderrAppDetail;

public interface OrderAppDetailDAO {
List<OrderrAppDetail> findByOrderApp(OrderrApp orderapp);
}
