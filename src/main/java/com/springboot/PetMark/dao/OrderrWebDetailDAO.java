package com.springboot.PetMark.dao;

import java.util.List;

import com.springboot.PetMark.entities.OrderrWeb;
import com.springboot.PetMark.entities.OrderrWebDetail;


public interface OrderrWebDetailDAO {
 List<OrderrWebDetail> findAll();
 List<OrderrWebDetail> findOrderrWeb(OrderrWeb order);
 void save(OrderrWeb order);
}
