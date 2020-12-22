package com.springboot.PetMark.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.OrderrWebDAO;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.OrderrWeb;
import com.springboot.PetMark.service.OrderrWebService;


@Service
public class OrderrWebServiceImpl implements OrderrWebService {

	@Autowired
	 OrderrWebDAO dao;

	@Override
	public List<OrderrWeb> findByAccount(Account account) {
		return dao.findByAccount(account);
	}

	@Override
	public Page<OrderrWeb> searchFilter(String text, String paymentMethod, String paymentStatus, String deliveryStatus, Pageable pageable) {

		String id = "";
		if (text == null) {
			text = "";

		} else if (text.matches("[0-9]+")) {
			id = String.valueOf(Integer.valueOf(text));
			text = "";
		}

		return dao.searchFilter(text, id, paymentMethod, paymentStatus, deliveryStatus, pageable);
	}

	@Override
	public OrderrWeb findById(int id) {
		// TODO Auto-generated method stub
		return dao.findById(id);
	}

	@Override
	public void save(OrderrWeb odOrderrWeb) {
		// TODO Auto-generated method stub
		dao.save(odOrderrWeb);
	}

	@Override
	public List<OrderrWeb> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	public void updateDelivery(String stt, int id) {
		// TODO Auto-generated method stub
		dao.updatedelivery(stt, id);
		
	}

	@Override
	public List<OrderrWeb> findBySttUser(String stt, Account account) {
		// TODO Auto-generated method stub
		return dao.findBySttUser(stt, account);
	}

	@Override
	public List<OrderrWeb> findByDeliveryStatusOrderByCreatedAtAsc(String deliveryStatus) {
		// TODO Auto-generated method stub
		return dao.findByDeliveryStatusOrderByCreatedAtAsc(deliveryStatus);
	}

	@Override
	public List<OrderrWeb> findByStt(String status, Pageable pageable) {
		// TODO Auto-generated method stub
		return dao.findByStt(status,pageable);
	}

	@Override
	public List<OrderrWeb> findByPlace(int place, Pageable pageable) {
		// TODO Auto-generated method stub
		return dao.findByPlace(place, pageable);
	}

	@Override
	public List<OrderrWeb> findBySttPlace(String status, int place) {
		// TODO Auto-generated method stub
		return dao.findBySttPlace(status, place);
	}

	@Override
	public int countBySttPlace(String status, int place) {
		// TODO Auto-generated method stub
		return dao.countBySttPlace(status, place);
	}

	@Override
	public int countByStt(String status) {
		// TODO Auto-generated method stub
		return dao.countByStt(status);
	}

	@Override
	public List<OrderrWeb> findStt(String status, String stt) {
		// TODO Auto-generated method stub
		return dao.findStt(status, stt);
	}

	@Override
	public int countAll() {
		// TODO Auto-generated method stub
		return dao.countAll();
	}

	@Override
	public int countByPlace(int place) {
		// TODO Auto-generated method stub
		return dao.countByPlace(place);
	}

	@Override
	public List<OrderrWeb> findPage(Pageable pageable) {
		// TODO Auto-generated method stub
		return dao.findPage(pageable);
	}

	@Override
	public float thongKe() {
		// TODO Auto-generated method stub
		return dao.thongKe();
	}


}
