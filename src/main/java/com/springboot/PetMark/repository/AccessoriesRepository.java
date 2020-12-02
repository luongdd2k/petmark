package com.springboot.PetMark.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.Category;



public interface AccessoriesRepository extends JpaRepository<Accessories, Integer> {
	

	@Query("SELECT p FROM Accessories p where p.status like %?1%")
	List<Accessories> showProductByCategoryPageable(String status, Pageable pageable);
	@Transactional
	@Modifying
	@Query("update Accessories p set p.status='Ngừng bán' where p.id = ?1")
	void disContinueAccessories(int id);
	
	List<Accessories> findByCategory(Category category);
	
	@Transactional
	@Modifying
	@Query("update Accessories p set p.status='Còn hàng' where p.id = ?1")
	void continueAccessories(int id);
	@Query("select distinct(a.status) from Accessories a")
	List<String> getStatus();
	@Query("select a from Accessories a where a.name like %?1% or a.category.name like %?1%")
	List<Accessories> search(String search);
	
	@Query("SELECT count(p.id) FROM Accessories p")
	int countContinueProduct();
	@Transactional
	@Modifying
	@Query("SELECT count(p.id) FROM Accessories p where p.status like %?1%")
	int countProduct(String status);
	
	@Query("select a from Accessories a where a.price BETWEEN ?1 and ?2")
	List<Accessories> findBetweenPrice(float min, float max);
	
}
