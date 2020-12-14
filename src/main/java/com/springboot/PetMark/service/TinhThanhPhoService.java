package com.springboot.PetMark.service;

import java.util.List;

import com.springboot.PetMark.entities.TinhThanhPho;

public interface TinhThanhPhoService {
	List<TinhThanhPho> findAll();
	TinhThanhPho findById(String matp);
}
