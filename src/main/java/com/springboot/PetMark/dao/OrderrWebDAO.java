package com.springboot.PetMark.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.Param;

import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.OrderrWeb;

public interface OrderrWebDAO {

	List<OrderrWeb> findAll();
	OrderrWeb findById(int id);
	List<OrderrWeb> findByAccount(Account account);
	void save(OrderrWeb odeWeb);
	void updatedelivery(String status, int id);
	List<OrderrWeb> findBySttUser(String stt, Account account);
	Page<OrderrWeb> search(@Param("id") int id, @Param("text") String name, Pageable pageable);
	Page<OrderrWeb> searchFilter(@Param("text") String text, @Param("id") String id,
			@Param("paymentMethod") String paymentMethod, @Param("paymentStatus") String paymentStatus,
			@Param("deliveryStatus") String deliveryStatus, Pageable pageable);
	List<OrderrWeb> findByDeliveryStatusOrderByCreatedAtAsc(String deliveryStatus);
}
