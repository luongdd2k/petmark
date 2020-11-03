package com.springboot.PetMark.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.OrderrWeb;

public interface OrderrWebService {
	OrderrWeb findById(int id);
	List<OrderrWeb> findAll();
	List<OrderrWeb> findByAccount(Account account);
	void updateDelivery(String status, int id);
	Page<OrderrWeb> searchFilter(String text, String paymentMethod, String paymentStatus, String deliveryStatus,
			Pageable pageable);

	void save(OrderrWeb odOrderrWeb);
	List<OrderrWeb> findBySttUser(String stt, Account account);
}
