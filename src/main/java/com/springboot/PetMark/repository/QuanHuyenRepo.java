package com.springboot.PetMark.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springboot.PetMark.entities.QuanHuyen;
import com.springboot.PetMark.entities.TinhThanhPho;

public interface QuanHuyenRepo extends JpaRepository<QuanHuyen, String>{
List<QuanHuyen> findByTp(TinhThanhPho tp);
}
