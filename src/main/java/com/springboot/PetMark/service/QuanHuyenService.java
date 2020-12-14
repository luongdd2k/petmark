package com.springboot.PetMark.service;

import java.util.List;

import com.springboot.PetMark.entities.QuanHuyen;
import com.springboot.PetMark.entities.TinhThanhPho;

public interface QuanHuyenService {
	List<QuanHuyen> findAll();

	List<QuanHuyen> findByTp(TinhThanhPho tp);
	QuanHuyen findById(String maqh);
}
