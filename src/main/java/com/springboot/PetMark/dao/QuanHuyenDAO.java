package com.springboot.PetMark.dao;

import java.util.List;

import com.springboot.PetMark.entities.QuanHuyen;
import com.springboot.PetMark.entities.TinhThanhPho;

public interface QuanHuyenDAO {
	List<QuanHuyen> findAll();

	List<QuanHuyen> findByTp(TinhThanhPho tp);
	QuanHuyen findById(String maqh);
}
