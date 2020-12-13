package com.springboot.PetMark.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springboot.PetMark.entities.QuanHuyen;
import com.springboot.PetMark.entities.XaPhuongThiTran;

public interface XaPhuongThiTranRepo extends JpaRepository<XaPhuongThiTran, String>{
List<XaPhuongThiTran> findByQh(QuanHuyen qh);
}
