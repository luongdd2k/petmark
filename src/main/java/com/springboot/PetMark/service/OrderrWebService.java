package com.springboot.PetMark.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.Param;

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
	List<OrderrWeb> findByDeliveryStatusOrderByCreatedAtAsc(String deliveryStatus);
	List<OrderrWeb> findByStt(String status,Pageable pageable );
	List<OrderrWeb> findByPlace(int place,Pageable pageable);
	List<OrderrWeb> findBySttPlace(String status, int place);
	int countBySttPlace(String status, int place);
	 int countByStt(String status);
	 List<OrderrWeb> findStt(String status, String stt);
	 int countAll();
	 int countByPlace(int place);
	 List<OrderrWeb> findPage(Pageable pageable);
}
