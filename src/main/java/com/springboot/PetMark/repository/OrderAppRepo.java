package com.springboot.PetMark.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.springboot.PetMark.entities.OrderrApp;

public interface OrderAppRepo extends JpaRepository<OrderrApp, Integer> {
	@Transactional
	@Modifying
	@Query("update OrderrApp o set o.deliveryStatus = ?1 where o.id = ?2")
	void capnhatStt(String status, int id);
}
