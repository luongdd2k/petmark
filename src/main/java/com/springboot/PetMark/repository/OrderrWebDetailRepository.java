package com.springboot.PetMark.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springboot.PetMark.entities.OrderrWeb;
import com.springboot.PetMark.entities.OrderrWebDetail;

public interface OrderrWebDetailRepository extends JpaRepository<OrderrWebDetail, Integer> {
List<OrderrWebDetail> findByOrderrWeb(OrderrWeb order);
}
