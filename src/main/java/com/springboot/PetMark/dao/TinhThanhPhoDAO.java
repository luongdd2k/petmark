package com.springboot.PetMark.dao;

import java.util.List;

import com.springboot.PetMark.entities.TinhThanhPho;

public interface TinhThanhPhoDAO {
	List<TinhThanhPho> findAll();
	TinhThanhPho findById(String matp);
}
