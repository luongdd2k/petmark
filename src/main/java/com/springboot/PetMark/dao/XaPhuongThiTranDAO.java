package com.springboot.PetMark.dao;

import java.util.List;

import com.springboot.PetMark.entities.QuanHuyen;
import com.springboot.PetMark.entities.XaPhuongThiTran;

public interface XaPhuongThiTranDAO {
	List<XaPhuongThiTran> findAll();

	List<XaPhuongThiTran> findByQh(QuanHuyen qh);
}
